resource "aws_elastic_beanstalk_application" "beanstalk_application" {
  name        = local.name-prefix
  description = "Application for the incredible website."
}

resource "aws_elastic_beanstalk_environment" "beanstalk_app_env" {
  name                = local.name-prefix
  application         = aws_elastic_beanstalk_application.beanstalk_application.name
  solution_stack_name = var.solution_stackname

  setting {
    namespace = "aws:ec2:vpc"
    name      = "VPCId"
    value     = "vpc-0e0e7356c41da05a2"
  }
  setting {
    namespace = "aws:ec2:vpc"
    name      = "Subnets"
    value     = "subnet-0b2d4b0b2f47b09d8,subnet-0e4b26718aca2383a,subnet-015740ba60665900a"
  }
  setting {
  namespace = "aws:ec2:vpc"
  name = "AssociatePublicIpAddress"
  value = "False"
  }
  ###########################################################

  setting {
    namespace = "aws:elbv2:loadbalancer"
    name      = "SharedLoadBalancer"
    value     = aws_lb.madis_mdsbrand_com.arn
  }
  setting {
    namespace = "aws:elbv2:loadbalancer"
    name      = "SecurityGroups"
    value     = aws_security_group.beanstalk_sg.id
  }
  # setting {
  #   namespace = "aws:elbv2:loadbalancer"
  #   name      = "ManagedSecurityGroup"
  #   value     = aws_security_group.beanstalk_sg.id
  # }
  setting {
    namespace = "aws:elasticbeanstalk:environment"
    name = "EnvironmentType"
    value = "LoadBalanced"
  }
  setting {
    namespace = "aws:elbv2:listener:default"
    name = "ListenerEnabled"
    value = "False"
  }
  setting {
    namespace = "aws:elbv2:listenerrule:madis"
    name = "HostHeaders"
    value = "madis.mdsbrand.com"
  }
  setting {
    namespace = "aws:elbv2:listenerrule:madis"
    name = "Priority"
    value = "2"
  }
  setting {
    namespace = "aws:elasticbeanstalk:environment:process:default"
    name = "Port"
    value = 443
  }
  setting {
    namespace = "aws:elasticbeanstalk:environment:process:default"
    name = "Protocol"
    value = "HTTPS"
  }
  setting {
    namespace = "aws:elasticbeanstalk:environment"
    name      = "LoadBalancerType"
    value     = "application"
  }
  setting {
  namespace = "aws:elasticbeanstalk:environment"
  name = "LoadBalancerIsShared"
  value = "True"
  }
  setting {
    namespace = "aws:elasticbeanstalk:application:environment"
    name      = "NODE_ENV"
    value     = "production"
  }

  setting {
    namespace = "aws:autoscaling:launchconfiguration"
    name      = "EC2KeyName"
    value     = "Auto_Scale"
  }

  setting {
    namespace = "aws:autoscaling:launchconfiguration"
    name      = "IamInstanceProfile"
    value     = aws_iam_instance_profile.build.name
  }

  setting {
    namespace = "aws:autoscaling:launchconfiguration"
    name      = "InstanceType"
    value     = "t2.small"
  }

  setting {
    namespace = "aws:autoscaling:asg"
    name      = "MinSize"
    value     = "1"
  }

  setting {
    namespace = "aws:autoscaling:asg"
    name      = "MaxSize"
    value     = "1"
  }

  setting {
    namespace = "aws:elasticbeanstalk:sns:topics"
    name      = "Notification Endpoint"
    value     = "contactmoazam@gmail.com"
  }

  setting {
    namespace = "aws:elasticbeanstalk:sns:topics"
    name      = "Notification Protocol"
    value     = "email"
  }

}

resource "aws_security_group" "beanstalk_sg" {
  name        = "beanstalk-security-group"
  description = "Security group for the Elastic Beanstalk environment"

  ingress {
    from_port   = 80
    to_port     = 80
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
    }

  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }
}