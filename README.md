🚀 Terraform Project – AWS EC2 Deployment with Cloud-Init

This project demonstrates how to use Terraform to provision and configure AWS infrastructure using Infrastructure as Code (IaC) principles.

📌 Project Overview

In this project, I built an automated EC2 deployment using:

Terraform for infrastructure provisioning
AWS as the cloud provider
Cloud-init for instance configuration at boot
Modules to structure reusable infrastructure code

The result is a fully automated EC2 instance that is configured and ready to use immediately after launch.

🧱 Project Structure
terraform/
│
├── main.tf
├── provider.tf
├── variables.tf
├── terraform.tfvars
├── cloud-init.yml
├── terraform.tfstate
├── terraform.tfstate.backup
├── README.md
│
└── modules/
    └── ec2/
        ├── main.tf
        ├── variables.tf
        └── outputs.tf
⚙️ What This Project Does
Provisions an EC2 instance on AWS
Uses a custom module (modules/ec2)
Passes configuration using variables
Automates setup using cloud-init
Outputs useful deployment information
🧩 Terraform Components
🔹 Provider

Defined in provider.tf:

Configures AWS provider
Sets region and authentication
🔹 Main Configuration

Defined in main.tf:

Calls the EC2 module
Passes required variables
Links cloud-init configuration
🔹 Variables

Defined in:

variables.tf
terraform.tfvars

Used to:

Customize instance type
Set AMI ID
Configure environment-specific values
🔹 Module (modules/ec2)

Encapsulates EC2 logic:

EC2 resource definition
Security group configuration
Outputs (e.g. public IP)

This improves:

Reusability
Maintainability
Scalability
🔹 Cloud-Init

Defined in cloud-init.yml:

Used to:

Install software (e.g. NGINX/Apache)
Configure services automatically
Run commands on instance boot

This ensures:

No manual configuration required
Fully automated deployments
🚀 How to Run the Project
1. Initialize Terraform
terraform init
2. Preview changes
terraform plan
3. Apply configuration
terraform apply
🧹 Destroy Resources (Important)
terraform destroy
📤 Outputs

After deployment, Terraform provides:

EC2 Public IP
Instance details

You can use the IP to access your server via:

http://<public-ip>
💡 Key Concepts Demonstrated
Infrastructure as Code (IaC)
Terraform modules
AWS EC2 provisioning
Cloud-init automation
Variable-driven configuration
State management
🧠 What I Learned
How to structure Terraform projects using modules
How to automate infrastructure deployment
How cloud-init eliminates manual setup
How to debug Terraform errors effectively
The importance of reusable infrastructure code
⚠️ Challenges & Solutions
Challenge	Solution
EC2 not configuring correctly	Fixed cloud-init syntax
Incorrect permissions	Adjusted AWS security groups
Terraform errors	Used terraform validate and logs
Module issues	Ensured correct variable passing
📸 Screenshots

(Add screenshots here)

EC2 instance running in AWS
Application accessible via browser
Successful Terraform apply output
🔮 Future Improvements
Add multiple environments (dev/staging/prod)
Use remote backend (S3 + DynamoDB)
Add load balancer
Integrate with CI/CD pipeline
👤 Author

Abdi Shakur
Aspiring DevOps Engineer 🚀
