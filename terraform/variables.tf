variable "private_key_path" {
  description = <<DESCRIPTION
Path to the SSH private key to be used for authentication.
Ensure this keypair is added to your local SSH agent so provisioners can
connect.
Example: ~/.ssh/terraform.pem
DESCRIPTION
}

variable "key_name" {
  description = "Desired name of AWS key pair"
}

variable "aws_region" {
  description = "AWS region to launch servers."
  default = "ap-southeast-2"
}

# Ubuntu 14.04 LTS (x64)
variable "aws_amis" {
  default = {
    ap-southeast-2 = "ami-2491cb47"
  }
}
