# AWS Infrastructure Setup with Terraform

This Terraform script sets up a basic AWS infrastructure, including a VPC, a subnet, a security group, an IAM role, and an EC2 instance. It demonstrates fetching existing VPC and subnet details using tags, creating a security group, and setting up an EC2 instance with an IAM role for accessing AWS Secrets Manager.

## Prerequisites

- Terraform installed on your machine.
- An AWS account with the necessary permissions to create VPCs, subnets, EC2 instances, IAM roles, and policies.
- AWS CLI installed and configured with credentials that have the necessary permissions.
- A VPC and subnet in your AWS account, tagged appropriately.

## Usage

rename terraform.example to terraform.tfvars or run the create script.

fill out the vars

```bash
terraform init
```

**
Apply the Terraform Script**:
Before applying, make sure to replace placeholder values (like the AMI ID, VPC name tag, and subnet tag) in the script with actual values from your AWS environment.

## Components

VPC Lookup: Fetches the VPC information based on the provided tags.
Subnet Lookup: Fetches the subnet information within the specified VPC, again based on tags.
Security Group Creation: Sets up a security group with basic ingress and egress rules.
IAM Role and Policy: Creates an IAM role for EC2 instances, along with a policy that allows the instance to read from AWS Secrets Manager.
EC2 Instance: Deploys an EC2 instance in the specified subnet, with the created security group and IAM role.

## Customization

You can customize this script by changing tags, adjusting security group rules, modifying IAM policies, or selecting different instance types or AMIs as per your requirements.

## Reference

<https://spacelift.io/blog/terraform-data-sources-how-they-are-utilised>

<https://developer.hashicorp.com/terraform/tutorials/configuration-language/data-sources>

<https://developer.hashicorp.com/terraform/language/data-sources>

<https://stackoverflow.com/questions/47721602/how-are-data-sources-used-in-terraform>
