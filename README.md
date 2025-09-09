# EKS-with-existing-VPC

This repository contains Terraform configurations for infrastructure as code.

This repository using provider: aws. There are 7 types of resources configured in this infrastructure.

## 📋 Prerequisites

You need to install Terraform and set up your AWS credentials before using this script.

- [Terraform](https://www.terraform.io/downloads.html) (>= None)
- Provider credentials untuk: aws

## 🚀 Usage

### 1. Clone Repository
```bash
git clone https://github.com/naninanides/EKS-with-existing-VPC
cd eks-with-existing-vpc
```

### 2. Initialize Terraform
```bash
terraform init
```

### 3. Plan Deployment
```bash
terraform plan
```

### 4. Apply Configuration
```bash
terraform apply
```

## 📁 Structure

```
├── data.tf
├── eks.tf
├── iam.tf
├── provider.tf
├── security-group.tf
├── variable.tf
```

## 🔧 Providers

- **aws**: Infrastructure provider

## 📦 Resources

This configuration will create the following resources:

- `aws_eks_addon`
- `aws_eks_cluster`
- `aws_eks_node_group`
- `aws_iam_role`
- `aws_iam_role_policy_attachment`
- `aws_security_group`
- `aws_security_group_rule`

## ⚙️ Variables

This repository has 14 customizable variables:

- `aws_region`
- `cluster_name`
- `cluster_version`
- `node_group_name`
- `instance_types`
- And 9 additional variables...

See the file `variables.tf` for more detail.

## 🤝 Contributing

- Fork this repository
- Create a feature branch (git checkout -b feature/amazing-feature)
- Commit your changes (git commit -m 'Add amazing feature')
- Push to the branch (git push origin feature/amazing-feature)
- Open a Pull Request

## 📞 Contact

- **Project Link**: [https://github.com/naninanides/EKS-with-existing-VPC](https://github.com/naninanides/EKS-with-existing-VPC)
- **LinkedIn**: [Baihaqi Salman Nugraha](https://www.linkedin.com/in/baihaqi-salman/)
- **Phone**: +62 899-5486-564
- **Email**: baihaqisalmon@outlook.com


---
*This README was automatically generated on 2025-09-09 23:07:06*
