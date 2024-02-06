##################################
# Provider
##################################
provider "aws" {
  region = var.region
}

##################################
# Call the Security Group Module
##################################
module "security-group" {
  ## For more ddetails refer --> https://registry.terraform.io/modules/terraform-aws-modules/security-group/aws/latest?tab=inputs
  source      = "./../../modules/security-group"
  name        = var.name
  description = var.description
  vpc_id      = var.vpc_id
  ## Refer to modules/security-group/rules.tf to pass pre-defines rule variables
  ## If you do not want any ingress/egress rules to be created, do not pass the following variables
  ingress_rules           = var.ingress_rules
  ingress_cidr_blocks     = var.ingress_cidr_blocks
  egress_rules            = var.egress_rules
  egress_cidr_blocks      = var.egress_cidr_blocks
  egress_with_cidr_blocks = var.egress_with_cidr_blocks
  # Make sure to keep the following empty to avoid IPv6 rules
  egress_ipv6_cidr_blocks = var.egress_ipv6_cidr_blocks
}