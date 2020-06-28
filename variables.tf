variable "default_tags" {
  default = {
    "Owner" : "Terraform"
  }
  description = "Default resource tags to be used across all resources"
  type        = map(string)
}