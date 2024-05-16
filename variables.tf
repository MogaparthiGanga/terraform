variable "vpc_cidr" {
    default = "10.0.0.0/16"  
}

variable "public_subnet_cidr"{
    default = "10.0.1.0/24"
}

variable "ec2_ami" {
  
}

variable "instance_type" {
    default = "t2.micro"
}

variable "sg_cidr"{
    default = "0.0.0.0/0"
}

variable "sshPort" {
  default = "22"
}

variable "httpPort" {
  default = "80"
}

