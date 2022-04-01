resource "aws_elastic_beanstalk_application" "beanstalk_application" {
  name        = local.name-prefix
  description = "Application for the incredible website."
  tags = merge (
    local.common_tags,
    {
      Component = "Elastic Beanstalk"
      Resource-Type = "Beanstalk Application"
    }
  )
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

  tags = merge (
    local.common_tags,
    {
      Component = "Elastic Beanstalk"
      Resource-Name = "Beanstalk Application"
    }
  )

}
