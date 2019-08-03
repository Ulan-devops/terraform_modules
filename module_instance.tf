module "wordpress" {
  source = "terraform-aws-modules/ec2-instance/aws"

  name           = "wordpress"
  instance_count = 3

  ami                    = "ami-0ad82a384c06c911e"
  instance_type          = "t2.micro"
  key_name               = "macbook_farrukh"
  monitoring             = true
  vpc_security_group_ids = ["sg-81a1d1ce"]
  subnet_id              = "subnet-4ff37d61"

  tags = {
    Terraform = "true"
    Environment = "dev"
  }
}