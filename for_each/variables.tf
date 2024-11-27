variable "instances" {
  type        = map
  default     = {
    mysql = "t3.small"       #here mysql is key  t3.micro is value 
    backend = "t3.micro"
    frontend = "t3.micro"
  }
}

variable "zone_id" {
  default = "Z0144646135M9PQT22WCJ"
}

variable "domain_name" {
  default = "kamineni.site"
}