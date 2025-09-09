# EKS-with-existing-VPC

Repository ini berisi konfigurasi Terraform untuk infrastructure as code.

Repository ini menggunakan provider: aws. Terdapat 7 jenis resource yang dikonfigurasi dalam infrastructure ini.

## 📋 Prerequisites

Sebelum menggunakan konfigurasi Terraform ini, pastikan Anda telah menginstall:

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

Konfigurasi ini akan membuat resource berikut:

- `aws_eks_addon`
- `aws_eks_cluster`
- `aws_eks_node_group`
- `aws_iam_role`
- `aws_iam_role_policy_attachment`
- `aws_security_group`
- `aws_security_group_rule`

## ⚙️ Variables

Repository ini memiliki 14 variables yang dapat dikustomisasi:

- `aws_region`
- `cluster_name`
- `cluster_version`
- `node_group_name`
- `instance_types`
- Dan 9 variables lainnya...

Lihat file `variables.tf` untuk detail lengkap.

## 🤝 Contributing

1. Fork repository ini
2. Buat feature branch (`git checkout -b feature/amazing-feature`)
3. Commit perubahan (`git commit -m 'Add amazing feature'`)
4. Push ke branch (`git push origin feature/amazing-feature`)
5. Buka Pull Request

## 📝 License

Distributed under the MIT License. See `LICENSE` for more information.

## 📞 Contact

Project Link: [https://github.com/naninanides/EKS-with-existing-VPC](https://github.com/naninanides/EKS-with-existing-VPC)

---
*README ini di-generate otomatis pada 2025-09-09 21:57:31 menggunakan AI README Generator*
