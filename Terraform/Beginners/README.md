Infrastructure as Code (IaC): Write an execute code to define provision, configure, update and eventually destroy infrastructure resources, this is called a IaC. 
Tools for IaC: Terraform, Ansible, Packer, Vagrant etc. 

Configuration Management: Ansible, SaltStack, Puppet
Server Template: Docker, Packer, Vagrant
Provisioning Tools: Terraform, CloudFormation


Configuration Management: 
- Designed to install and manage softwares
- Maintains standard structure. 
- Version control 
- Idempotent (Run the code multiple times, and everytime you run it, it only make changes that are necessary to bring the environment to a defined state.) 

Server Management: 
- Pre-installed software and dependencies. 
- Virtual Machine or Docker images. 
- Immutable infrastructur (Once the VM or container is deployed, it supposed to remain unchanged.)
- Eleminates the needs of installing softwares after a VM or container is deployed. 

Provisioning Tools: 
- Deploy immutable infrastructure resources. 
- Servers, databases, network componenets etc. 
- Multiple provides. 


Terraform helps deploying infrastructure in multiple clouds like: AWS, GCP, Azure, VMWare, Physical Machine etc. 

Terraform phases: 
1. Init 
2. Plan
3. Apply 


Resource: Every objects that terraform manages is a resource. Ex. files, virtual machines, db, IAM groups, GCP etc. 

HCL: Hashicorp Configuration Language. 

Syntax: Consist of Blocks and Arguments. 

<block> <parameters> {
    key1: value1
    key2: value2
}

Blocks: A block defines within curly braces and it containes a set of arguments representing the configuration data. Its containes information about the infrastructure configurations. 

Example: 
resource "local_file" "pet" {
  filename = "/home/mahin/kodekloud/Terraform/Beginners/pet.txt"
  content = "We hate pets!"
}

Block Name: resource 
Resource Type: local_file (provider: local, resource: file)
Resource Name: pet 
Arguments: {key values pairs}


WorkFlow:
1. Write terraform configuration file. 
2. Run terraform init command. 
3. Review the execution command using terraform plan command. 
4. Apply the changes using terraform apply command. 

Commands:
terraform init 
terraform plan 
terraform apply
terraform destroy

Terraform Providers Type:
1. Official: AWS, GCP
2. Partner: Heroku, DigitalOcean 
3. Community: UCloud, Netapp-gcp


Configuration Directory:

We can aslo define:
main.tf -> Main configuration file containing resource definition. 
variables.tf -> Contains varibale declarations
outputs.tf -> Contains outputs from resources. 
providers.tf -> Contains providers definition. 


Multiple Providers:



Variable parameters of 3 types:
1. default - values
2. type - string, number and bool (default- any), list, map 
3. description - a description for the variable


list type:
type = list
default = ["Mr", "Mrs"]

map type:
type = map 
default = {
  "key1"= "val1"
  "key2"= "val2
}

list(string) type:
type = list(string)
default = ["Mr", "Mrs"]

list(number) type:
type = list(number)
default = [1,2,3]

Applying variables:

Declarative:
Example 1: 
variable "filename" {
  default = "/home/mahin/kodekloud/Terraform/Beginners/pets1.txt"
}

Use Variables:

resource "local_file" "rand-pet1" {
  filename = var.filename
}


Example 2 (no value declaration):
variable "filename" {
  type = string
}

Use variables:
env -> 
export TF_VAR_filename = "path/..."

$terraform apply

terminal -> 
$terraform apply -var "filename=/path/"

file-> (variables.tfvars) 
filename="/path"

$terraform apply -var-file variables.tfvars


Variables precedence:
1. Env
2. terraform.tfvars
3. terraform.auto.tfvars
4. command line flag -var or -var-file .


Resource Attribute:

Using the output of one resource to input of another. I mean the resources are to be interconnected. 
variable "filename"{
  default = "/path/file.txt"
}
variable ""{

}

resource "local_file" "pet"{
  filename = var.filename
  content = "My favorite pet is ${random_pet.my-pet.id}"
}

resource "random_pet" "my-pet"{
  prefix = var.prefix
  separator = var.separator
  length = var.length
}


## Output Variables 

Output block:

resource "local_file" "rand-pet1" {
  filename = var.filename
  content = random_pet.rand-pet2.id
}

resource "random_pet" "rand-pet2" {
    prefix = var.prefix
    separator = var.separator
    length = var.length
}


output pet-name{
  value = random_pet.rand-pet2.id
  description = "Anything"
}

$ terraform output














