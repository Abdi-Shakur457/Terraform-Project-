# 🚀 Terraform Project – AWS EC2 Deployment with Cloud-Init

This project demonstrates how to use **Terraform** to provision and configure **AWS** infrastructure using **Infrastructure as Code (IaC)** principles.

---

## 📌 Project Overview

In this project, I built an automated EC2 deployment using:

- **Terraform** for infrastructure provisioning  
- **AWS** as the cloud provider  
- **Cloud-init** for instance configuration at boot  
- **Modules** to structure reusable infrastructure code  

The result is a fully automated EC2 instance that is configured and ready to use immediately after launch.

---

## 🧱 Project Structure

- terraform/
  - main.tf
  - provider.tf
  - variables.tf
  - terraform.tfvars
  - cloud-init.yml
  - terraform.tfstate
  - terraform.tfstate.backup
  - README.md
  - modules/
    - ec2/
      - main.tf
      - variables.tf
      - outputs.tf

---

## ⚙️ What This Project Does

- Provisions an **EC2 instance** on AWS  
- Uses a custom **module** (`modules/ec2`)  
- Passes configuration using **variables**  
- Automates setup using **cloud-init**  
- Outputs useful deployment information  

---

## 🚀 How to Run the Project

### Initialize Terraform
terraform init

### Preview changes
terraform plan

### Apply configuration
terraform apply

### 🧹 Destroy Resources (Important)
terraform destroy

---

## 📤 Outputs

After deployment, Terraform provides:

- EC2 Public IP  
- Instance details  

Access your server via:
http://<public-ip>

---

## 💡 Key Concepts Demonstrated

- Infrastructure as Code (IaC)  
- Terraform modules  
- AWS EC2 provisioning  
- Cloud-init automation  
- Variable-driven configuration  
- State management  

---

## 🧠 What I Learned

- How to structure Terraform projects using modules  
- How to automate infrastructure deployment  
- How cloud-init eliminates manual setup  
- How to debug Terraform errors effectively  
- The importance of reusable infrastructure code  

---

## ⚠️ Challenges & Solutions

| Challenge                     | Solution                         |
|--------------------------------|---------------------------------|
| EC2 not configuring correctly  | Fixed cloud-init syntax          |
| Incorrect permissions          | Adjusted AWS security groups     |
| Terraform errors               | Used terraform validate and logs |
| Module issues                  | Ensured correct variable passing |

---

## 📸 Screenshots

Terraform plan showing 2 added resources:
![terraform plan]


<img width="557" height="431" alt="terraform plan ss" src="https://github.com/user-attachments/assets/4def4c4d-96a6-4d20-8dfd-4bda70abefb8" />


Terraform apply successfully applied resources:
![terraform apply]



<img width="490" height="278" alt="t apply" src="https://github.com/user-attachments/assets/ebcbef06-8695-4501-a88b-56f5a094a7f8" />



Working WordPress server:
![wordpress]


<img width="956" height="508" alt="wp" src="https://github.com/user-attachments/assets/3365c9cb-7a64-4367-b542-90aeef20584f" />


EC2 instance running in AWS:



<img width="606" height="191" alt="ii" src="https://github.com/user-attachments/assets/f06a3ca0-7802-476f-b3c0-19f95acce71f" />


---

## 🔮 Future Improvements

- Add multiple environments (dev/staging/prod)  
- Use remote backend (S3 + DynamoDB)  
- Add load balancer  
- Integrate with CI/CD pipeline  

---

## 👤 Author

**Abdi Shakur**
