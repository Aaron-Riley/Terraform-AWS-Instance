# Welcome to Terraform AWS Instance Provisioner 🚀

This Terraform script is your ticket to effortlessly provisioning AWS EC2 instances. Whether you're a Terraform newbie or a seasoned pro, this script serves as the perfect starting point for spinning up your very own AWS instance in no time.

## 🛠️ Usage

1. **Clone the Repository**: Grab a copy of this repository to your local machine.
2. **Customize Configuration**: Head over to `variables.tf` and tailor the instance settings to your heart's content. Want a bigger instance? Need a different AMI? It's all up to you!
3. **Terraform Init**: Fire up your terminal, navigate to the project directory, and run `terraform init` to initialize Terraform.
4. **Terraform Apply**: Ready to make magic happen? Execute `terraform apply` and watch as your instance springs to life!
5. **Celebrate**: Congratulations! You now have your very own AWS EC2 instance up and running. Time to celebrate 🥳

## 🌟 Features

- **Easy Customization**: Quickly adjust instance settings in `variables.tf` to match your requirements.
- **Automated Infrastructure**: Say goodbye to manual provisioning. Let Terraform do the heavy lifting for you.
- **Flexible and Scalable**: Need more power? Simply tweak the configuration and scale your infrastructure with ease.

## 🚀 Example

```hcl
# main.tf

terraform {
    backend "remote" {
        organization = "ExampleOrg"
        workspaces {
            name = "example"
        }
    }
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 4.16"
    }
  }

  required_version = ">= 1.2.0"
}

provider "aws" {
  region  = "us-west-2"
}

resource "aws_instance" "app_server" {
  ami           = "ami-03d90e69c27c41a2a"
  instance_type = "t2.micro"

  tags = {
    Name = var.instance_name
  }
}

```

## 🙌 Contribution
Contributions are like gold dust ✨. Whether it's fixing a bug, adding a feature, or enhancing the documentation, your input is highly valued. Feel free to open an issue or pull request to make this project even better!

## 📝 License
This project is licensed under the MIT License. Go ahead and make the most of it!

