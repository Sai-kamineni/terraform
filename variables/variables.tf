variable "ami_id" {
  type        = string
  default     = "ami-09c813fb71547fc4f"
  description = "This is the AMI ID of devops-practice which is RHEL-9"
}

variable "instance_type" {
    type    =string
    default ="t3.micro"
}

variable "tags" {
    type =map #optional bcoz tf know tags will be map
    default ={
        Name = "backend"
        Project = "expense"
        component = " backend"
        Environment = "DEV"
        Terraform = "true"      #checking this resource creating using tf
    }
}

variable "sg_name" {
    default = "allow_ssh"
}

variable "sg_description" {
    default = "Allow port number 22 for SSH access"
}

variable "from_port" {
    default = 22
    type = number
}

variable "to_port" {
    default = 22
    type = number
}

variable "protocol" {
    default = "tcp"
}
 
variable "ingress_cidr" {
    type  = list(string)
    default = ["0.0.0.0/0"]

}