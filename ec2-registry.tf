provider "aws" {

region = "us-east-1"


}

module "ec2_cluster" {
  source                 = "terraform-aws-modules/ec2-instance/aws"
  version                = "~> 2.0"

  name                   = "durga"
  instance_count         = 1

  ami                    = "ami-047a51fa27710816e"
  instance_type          = "t2.micro"
  subnet_id              = "subnet-2e13df49"

}
