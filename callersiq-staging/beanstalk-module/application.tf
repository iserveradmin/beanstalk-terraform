resource "aws_elastic_beanstalk_application" "beanstalk_application" {
  name        = local.name-prefix
  description = "Application for the incredible website."
}

resource "aws_elastic_beanstalk_environment" "beanstalk_app_env" {
  name                = local.name-prefix
  application         = aws_elastic_beanstalk_application.beanstalk_application.name
  solution_stack_name = var.solution_stackname

  setting {
    namespace = "aws:elbv2:listener:80"
    name = "ListenerEnabled"
    value = "true"
  }

  setting {
    namespace = "aws:elbv2:listener:80"
    name = "Protocol"
    value = "HTTP"
  }

  setting {
    namespace = "aws:elbv2:listener:443"
    name = "ListenerEnabled"
    value = "true"
  }

  setting {
    namespace = "aws:elbv2:listener:443"
    name = "Protocol"
    value = "HTTPS"
  }

  setting {
    namespace = "aws:elbv2:listener:443"
    name = "SSLPolicy"
    value = "Protocol-TLSv1"
  }

  setting {
    namespace = "aws:elbv2:listener:443"
    name = "SSLCertificateArns"
    value = aws_acm_certificate.static_url.arn
  }

  setting {
    namespace = "aws:elasticbeanstalk:environment"
    name = "LoadBalancerType"
    value = "application"
  }

  

  setting {
    namespace = "aws:elasticbeanstalk:application:environment"
    name = "NODE_ENV"
    value = "production"
  }

  setting {
    namespace = "aws:autoscaling:launchconfiguration"
    name = "EC2KeyName"
    value = "Auto_Scale"
  }

  setting {
    namespace = "aws:autoscaling:launchconfiguration"
    name = "IamInstanceProfile"
    value = aws_iam_instance_profile.build.name
  }

  setting {
    namespace = "aws:autoscaling:launchconfiguration"
    name = "InstanceType"
    value = "t2.small"
  }

  setting {
    namespace = "aws:autoscaling:asg"
    name = "MinSize"
    value = "1"
  }

   setting {
    namespace = "aws:autoscaling:asg"
    name = "MaxSize"
    value = "1"
  }

  setting {
    namespace = "aws:elasticbeanstalk:sns:topics"
    name = "Notification Endpoint"
    value = "contactmoazam@gmail.com"
  }

  setting {
    namespace = "aws:elasticbeanstalk:sns:topics"
    name = "Notification Protocol"
    value = "email"
  }

}
