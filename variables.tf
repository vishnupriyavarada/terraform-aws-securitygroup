variable "project_name" {
    type = string
}

variable "environment" {
    type = string
}

variable "sg_name" {
type = string
}

variable "sg_description" {
  type = string
}

variable "vpc_id" {
  type = string
}
variable "common_tags" {
  type = map
}
variable "sg_tags" {
  type = map
  default = {}

}