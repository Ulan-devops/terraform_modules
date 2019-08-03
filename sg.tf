module "wordpress_sg" {
  source = "terraform-aws-modules/security-group/aws"

  name        = "wordpress"
  description = "some"
  vpc_id      = "vpc-1471ad6e"

  ingress_cidr_blocks      = ["10.10.0.0/16"]
  ingress_rules            = ["https-443-tcp"]
}