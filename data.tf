# Data source untuk mendapatkan informasi VPC yang sudah ada
data "aws_vpc" "existing" {
  id = var.vpc_id
}

# Data source untuk mendapatkan subnets dari VPC
data "aws_subnets" "private" {
  filter {
    name   = "vpc-id"
    values = [var.vpc_id]
  }

  filter {
    name   = "tag:Name"
    values = ["*private*", "*Private*"]
  }
}

data "aws_subnets" "public" {
  filter {
    name   = "vpc-id"
    values = [var.vpc_id]
  }

  filter {
    name   = "tag:Name"
    values = ["*public*", "*Public*"]
  }
}

# Fallback jika tidak ada subnet dengan tag private/public
data "aws_subnets" "all" {
  filter {
    name   = "vpc-id"
    values = [var.vpc_id]
  }
}

# Data source untuk availability zones
data "aws_availability_zones" "available" {
  state = "available"
}

# Data source untuk EKS cluster auth
data "aws_eks_cluster" "cluster" {
  name = aws_eks_cluster.main.name
}

data "aws_eks_cluster_auth" "cluster" {
  name = aws_eks_cluster.main.name
}