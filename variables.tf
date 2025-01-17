#ec2 variables

variable "instance_names" {
    type = list
    default = ["db","backend","frontend"]
}
variable "image_id" {
    type =string #optional
    default = "ami-09c813fb71547fc4f" #optional
    description ="RHEL-9 AMI ID"  #optional
}
variable "instance_type" {
    default ="t3.micro"
    type = string
}
variable "common_tags" {
    default = {
        Project ="Expense"
        Environment ="Dev"
        Terraform = "true"
    }

}
variable "sg_name" {
    type = string
    default = "allow_ssh"
 }
 variable "sg_description" {
    type = string
    default ="allowing port 22"
 }
 variable "ssh_port" {
    type = number
    default =22
 }
variable "protocol"{
    type = string
    default ="tcp"
}
variable "allowed_cidr" {
    type=list(string)
    default =["0.0.0.0/0"]

}
#r53 variables
variable "zone_id" {
    default ="Z072982421GU8E4T546G0"
}
variable "domain_name" {
      default = "lingaiah.online"

}
variable "allow_all" {
   type = string
   default = "sg-06b1b57b365846051"
}
variable "ansible_master" {
   default = {
        instance_type  = "t3.small"
   }
}









