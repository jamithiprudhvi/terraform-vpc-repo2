variable "cidr_block" {
    default = "10.0.0.0/16"
  
}

variable "enable_dns_hostnames" {
    type = bool
    default = true
  
}

variable "common_tags" {
    type = map 
    default = {}
  
}

variable "vpc_tags" {
    type = map 
    default = {}
  
}

variable "project_name" {
    type = string
    default = "roboshop"
  
}

variable "environment" {
    type = string
    default = "dev" 
}

variable "igw_tags" {
    default = {}
  
}

variable "public_subnet_cidr" {
    type = list 
    validation {
        error_message = "please give 2 public valid subnet cidr"
        condition = length(var.public_subnet_cidr) == 2
    }
  
}

variable "public_subnet_tags" {
    default = {}
  
}

variable "private_subnet_cidr" {
    type = list 
    validation {
        error_message = "please give 2 private valid subnet cidr"
        condition = length(var.private_subnet_cidr) == 2
    }
  
}

variable "private_subnet_tags" {
    default = {}
  
}

variable "database_subnet_cidr" {
    type = list 
    validation {
        error_message = "please give 2 private valid subnet cidr"
        condition = length(var.database_subnet_cidr) == 2
    }
  
}

variable "database_subnet_tags" {
    default = {}
  
}

variable "nat_gateway_tags" {
    default = {}
  
}

variable "public_routetable_tags" {
    default = {}
  
}

variable "private_routetable_tags" {
    default = {}
  
}

variable "database_routetable_tags" {
    default = {}
  
}

variable "is_peering_required" {
    type = bool
    default = false
  
}

variable "accepter_vpc_id" {
    type = string
    default = ""
  
}

variable "peering_tags" {
    default = {}
  
}