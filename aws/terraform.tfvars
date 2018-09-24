aws_region = "us-east-1"
project_name = "manju-terraform"
vpc_cidr = "10.20.0.0/16"
public_cidrs = [
  "10.20.1.0/24",
  "10.20.2.0/24"
]
accessip = "0.0.0.0/0"
key_name = "tf_key_pair"
public_key_path = "/home/ec2-user/.ssh/id_rsa.pub"
server_instance_type = "t2.micro"
instance_count = "2"