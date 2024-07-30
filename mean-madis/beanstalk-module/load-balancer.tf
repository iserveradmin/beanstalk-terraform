resource "aws_lb" "madis_mdsbrand_com" {
    name               = "madis-mdsbrand-com-alb"
    internal           = false
    load_balancer_type = "application"
    security_groups    = ["sg-0a544db30bb820749"]
    subnets            = ["subnet-0d1b6af78ae2ac99e", "subnet-0a39628575c109c21", "subnet-06a168ead8ea81b4c",] # Add your subnet IDs

    enable_deletion_protection = false

    tags = {
        Name = "madis-mdsbrand-com"
    }
}
resource "aws_lb_listener" "http" {
    load_balancer_arn = aws_lb.madis_mdsbrand_com.arn
    port              = 80
    protocol          = "HTTP"

    default_action {
        type             = "redirect"
        redirect {
            port        = "443"
            protocol    = "HTTPS"
            status_code = "HTTP_301"
        }
    }
}
resource "aws_lb_listener" "https" {
    load_balancer_arn = aws_lb.madis_mdsbrand_com.arn
    port              = 443
    protocol          = "HTTPS"
    ssl_policy        = "ELBSecurityPolicy-2016-08"
    certificate_arn   = aws_acm_certificate.static_url.arn # Add your SSL certificate ARN

    default_action {
        type             = "forward"
        target_group_arn = aws_lb_target_group.madis_mdsbrand_com.arn
    }
}

resource "aws_lb_target_group" "madis_mdsbrand_com" {
    name     = "madis-mdsbrand-com-tg"
    port     = 80
    protocol = "HTTP"
    vpc_id   = "vpc-0e0e7356c41da05a2" # Add your VPC ID

    health_check {
        enabled             = true
        healthy_threshold   = 3
        unhealthy_threshold = 3
        timeout             = 5
        interval            = 30
        path                = "/"
        protocol            = "HTTP"
        matcher             = "200"
    }

    tags = {
        Name = "madis-mdsbrand-com-tg"
    }
}