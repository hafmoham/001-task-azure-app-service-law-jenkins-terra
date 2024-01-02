variable "owner" {
  default = ""
  description = "Please enter the owner"
  type = string
}

variable "environment" {
  type = string
  description = "Please specify the environment"
  default = ""

}

variable "inside_location" {
  type        = string
  default     = ""
}

variable "resourcegroupname" {
  type        = string
  default     = ""
}


variable appserviceplanname{
  type        = string
  default     = "appservplan-vterramodules"
}

variable "webappname" {
  type        = string
  default     = "webapp-vterramodules"
}

variable "workspacename" {
  type        = string
  default     = "law-vterramodules"
}
variable "tenant_id" {
  type        = string
  default     = "11111111-1111-1111-1111-111111111111"
}
variable "subscription_id" {
  type        = string
  default     = "00000000-0000-0000-0000-000000000000"
}
