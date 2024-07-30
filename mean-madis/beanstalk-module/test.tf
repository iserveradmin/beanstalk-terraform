# resource "aws_elastic_beanstalk_environment" "beanstalkappenv" {
# name = var.beanstalkappenv
# application = "EB-PRUEBASACRUZ"
# solution_stack_name = var.solution_stack_name
# tier = var.tier

# setting {
# namespace = "aws:ec2:vpc"
# name = "VPCId"
# value = var.vpc_id
# }
# setting {
# namespace = "aws:autoscaling:launchconfiguration"
# name = "IamInstanceProfile"
# value = "aws-elasticbeanstalk-ec2-role"
# }
# setting {
# namespace = "aws:ec2:vpc"
# name = "AssociatePublicIpAddress"
# value = "False"
# }

# setting {
# namespace = "aws:ec2:vpc"
# name = "Subnets"
# value = join(",", var.public_subnets)
# }
# setting {
# namespace = "aws:elasticbeanstalk:environment"
# name = "EnvironmentType"
# value = "LoadBalanced"
# }
# setting {
# namespace = "aws:elasticbeanstalk:environment"
# name = "LoadBalancerType"
# value = "application"
# }
# setting {
# namespace = "aws:elasticbeanstalk:environment"
# name = "LoadBalancerIsShared"
# value = "True"
# }
# setting {
# namespace = "aws:elbv2:loadbalancer"
# name = "SharedLoadBalancer"
# value = "arn:aws:elasticloadbalancing:eu-west-******"
# }
# setting {
# namespace = "aws:elbv2:listener:default"
# name = "ListenerEnabled"
# value = "False"
# }
# setting {
# namespace = "aws:elasticbeanstalk:environment:process:default"
# name = "Port"
# value = 8080
# }
# setting {
# namespace = "aws:elasticbeanstalk:environment:process:default"
# name = "Protocol"
# value = "HTTP"
# }
# setting {
# namespace = "aws:autoscaling:launchconfiguration"
# name = "InstanceType"
# value = var.Instance_type
# }
# setting {
# namespace = "aws:autoscaling:asg"
# name = "MinSize"
# value = var.minsize
# }
# setting {
# namespace = "aws:autoscaling:asg"
# name = "MaxSize"
# value = var.maxsize
# }
# setting {
# namespace = "aws:elasticbeanstalk:healthreporting:system"
# name = "SystemType"
# value = "enhanced"
# }

# }