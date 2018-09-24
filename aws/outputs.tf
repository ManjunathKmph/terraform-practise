#-------root/outputs.tf--------
#-----Storage outputs--------------
output "Bucket Name" {
  value = "${module.storage.bucketname}"
}

#------Networking outputs-----------

output "Public Subnets" {
  value = "${join(",", module.networking.public_subnets)}"
}

output "Subnet Ips" {
  value = "${join(",", module.networking.subnet_ips)}"
}

output "Public Security Group" {
  value = "${module.networking.public_sg}"
}

#-------Compute Outputs-------------

output "Public Instance Ids" {
  value = "${module.compute.server_id}"
}

output "Public Instance Ips" {
  value = "${module.compute.server_ip}"
}
