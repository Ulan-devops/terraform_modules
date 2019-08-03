module "wordpress" {
  source = "terraform-aws-modules/ec2-instance/aws"
  version = "2.6.0"

  name           = "wordpress"
  instance_count = 3

  ami                    = "ami-02eac2c0129f6376b"
  instance_type          = "t2.micro"
  key_name               = "macbook_farrukh"
  vpc_security_group_ids = ["sg-81a1d1ce"]
  subnet_id              = "subnet-4ff37d61"
}
module "joomla" {
  source = "terraform-aws-modules/ec2-instance/aws"
  version = "2.6.0"

  name           = "joomla"
  instance_count = 3

  ami                    = "ami-02eac2c0129f6376b"
  instance_type          = "t2.micro"
  key_name               = "macbook_farrukh"
  vpc_security_group_ids = ["sg-81a1d1ce"]
  subnet_id              = "subnet-4ff37d61"
}