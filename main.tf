module "ec2instance" {
 source = "github.com/gthborg/terraform-aws-ec2module"
  instancecount = 2
  ami_id = "ami-02e136e904f3da870"
  instancetype = "t2.micro"
  publicip = false
  tag = {
    "Name" = "Module Demo"
  }
}

output "IP" {
  value = module.ec2instance.publicip
  
}