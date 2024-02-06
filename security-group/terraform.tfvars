#name              = "Name of the security group"
name = "allow_https_ssh"
#description = "Description of security group"
region = "ca-central-1"
#vpc_id            = "VPC ID"
vpc_id = "vpc-0c0d48437efdc90bb"
#ingress_rules     = ["https-443-tcp", "ssh-tcp"]
#ingress_cidr_blocks = ["10.0.0.0/16", "7.250.0.0/16"]
#egress_rules     = ["https-443-tcp", "ssh-tcp"]
#egress_cidr_blocks = ["10.0.0.0/16", "7.250.0.0/16"]
egress_ipv6_cidr_blocks = []
#egress_with_cidr_blocks = [{
#  from_port   = 0
#  to_port     = 65535
#  protocol    = "tcp"
#  cidr_block  = "0.0.0.0/0"
#  description = "allow_all"
#}]
