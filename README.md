# Deployment Setup Guide

## Prerequisites
- AWS EC2 instance running (Amazon Linux 2 or Ubuntu)
- EC2 instance has security group allowing inbound traffic on port 80 (HTTP)
- SSH key pair created for EC2 access

## Step 1: Prepare Your EC2 Instance

1. SSH into your EC2 instance:
   ```bash
   ssh -i your-key.pem ec2-user@your-ec2-ip
