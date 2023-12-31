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

variable "deploy_location" {
  type        = string
  default     = "eastus"
}

variable "rg_shared_name" {
  type        = string
  default     = "rg-shared-resources-moha"
}

variable "webappname" {
  type        = string
  default     = "webapp-134rt4-moha"
}

variable "workspacename" {
  type        = string
  default     = "myworkspace13456moha"
}
variable "tenant_id" {
  type        = string
  default     = "11111111-1111-1111-1111-111111111111"
}
variable "subscription_id" {
  type        = string
  default     = "00000000-0000-0000-0000-000000000000"
}
