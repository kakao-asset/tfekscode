# TF_VAR_region
variable "region" {
  description = "The name of the AWS Region"
  type        = string
  default     = "ap-northeast-2"
}

variable "profile" {
  description = "The name of the AWS profile in the credentials file"
  type        = string
  default     = "default"
}

variable "cluster-name" {
  description = "The name of the EKS Cluster"
  type        = string
  default     = "prod-eks"
}


variable "eks_version" {
  type    = string
  default = "1.23"
}



variable "no-output" {
  description = "The name of the EKS Cluster"
  type        = string
  default     = "secret"
  sensitive   = true
}

