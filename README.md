# Terraform practise examples

# Terraform Commands to run the code

terraform init -- to initialize the terraform working directory
terraform plan -- Show an execution plan
terraform apply -- Builds an infrastructure
terraform show -- Inspect the terraform state

# In order separate two environments, we need to use workspace to separate each other
terraform workspace new dev -- To create new dev workspace
terraform workspace new prod -- To create new prod workspace
terraform workspace select dev -- To select the dev workspace
terrafrom worksapce select prod -- To select the prod workspace
terraform workspace select default -- To select the default workspace
