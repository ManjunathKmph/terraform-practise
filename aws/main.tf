#-------root/main.tf--------
#----------AWS cloud provider---------------
provider "aws" {
  region = "${var.aws_region}"
}

#------Store terraform state into s3 instead of storing in local---------
terraform {
  backend s3 {
    bucket = "manju-bucket"
    key    = "terraform/terraform.tfstate"
    region = "ap-south-1"
  }
}

#----------Deploy Storage Resources------------------
module "storage" {
  source       = "./storage"
  project_name = "${var.project_name}"
}

#---------Deploy Networking Resources------------------
module "networking" {
  source       = "./networking"
  vpc_cidr     = "${var.vpc_cidr}"
  public_cidrs = "${var.public_cidrs}"
  accessip     = "${var.accessip}"
}

#--------------Deploy Compute Resources-------------------
module "compute" {
  source          = "./compute"
  instance_count  = "${var.instance_count}"
  key_name        = "${var.key_name}"
  public_key_path = "${var.public_key_path}"
  instance_type   = "${var.server_instance_type}"
  subnets         = "${module.networking.public_subnets}"
  security_group  = "${module.networking.public_sg}"
  subnet_ips      = "${module.networking.subnet_ips}"
}
