# ===================================
# variables.tf
# ===================================

# General Variables
variable "aws_region" {
  description = "AWS region"
  type        = string
  default     = "ap-southeast-3"
}

variable "cluster_name" {
  description = "Nama untuk EKS cluster"
  type        = string
  default     = "my-eks-cluster"
}

variable "cluster_version" {
  description = "Versi Kubernetes untuk EKS cluster"
  type        = string
  default     = "1.28"
}

variable "node_group_name" {
  description = "Nama untuk EKS node group"
  type        = string
  default     = "my-eks-nodes"
}

variable "instance_types" {
  description = "Instance types untuk worker nodes"
  type        = list(string)
  default     = ["t3.medium"]
}

variable "desired_size" {
  description = "Jumlah desired nodes"
  type        = number
  default     = 2
}

variable "max_size" {
  description = "Jumlah maksimum nodes"
  type        = number
  default     = 4
}

variable "min_size" {
  description = "Jumlah minimum nodes"
  type        = number
  default     = 1
}

variable "region" {
  description = "AWS region"
  type        = string
  default     = "us-west-2"
}

variable "tags" {
  description = "Tags untuk semua resources"
  type        = map(string)
  default = {
    Environment = "dev"
    Project     = "eks-cluster"
    ManagedBy   = "terraform"
  }
}

variable "aws_access_key" {
  description = "AWS Access Key"
  type        = string
}

variable "aws_secret_key" {
  description = "AWS Secret Key"
  type        = string
}

variable "key_name" {
  description = "Key Pair Name"
  type        = string
}

variable "vpc_id" {
  description = "VPC ID for Security Group"
  type        = string
}