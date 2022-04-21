module "vpc" {
  source = "terraform-aws-modules/vpc/aws"

  name = "vorx-prod-vpc"
  cidr = "10.0.0.0/16"

  azs             = ["us-east-1a", "us-east-1b"]
  private_subnets = ["10.0.1.0/24", "10.0.2.0/24"]
  public_subnets  = ["10.0.101.0/24", "10.0.102.0/24"]

  enable_nat_gateway = true
  single_nat_gateway = false
  one_nat_gateway_per_az = false

  tags = {
    Terraform = "true"
    Environment = "Production"
    CC = "10504"
    OwnerSquad = "Osaka"
    OwnerSRE = "Valfenda"
  }
}

output "vpc_vorx_prod_id" {
    value = module.vpc.vpc_id
}