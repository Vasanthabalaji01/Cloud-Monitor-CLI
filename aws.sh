#!/bin/bash

# Function to install and configure AWS CLI
install_configure_aws_cli() {
    # Step 1: Install AWS CLI
    echo "Step 1: Installing AWS CLI..."
    pip install awscli --upgrade --user

    # Step 2: Configure AWS CLI
    echo "Step 2: Configuring AWS CLI..."
    aws configure
}

# Check if AWS CLI is installed
if ! command -v aws &>/dev/null; then
    echo "AWS CLI is not installed."
    install_configure_aws_cli
fi

# Function to handle AWS EC2 commands
aws_ec2_commands() {
    while true; do
        echo "AWS EC2 Menu:"
        echo "1. Describe Instances"
        echo "2. Start Instance"
        echo "3. Stop Instance"
        echo "4. Create Instance"
        echo "5. Back to Main Menu"
        read -p "Enter your choice (1-5): " choice
        case "$choice" in
            1)
                aws ec2 describe-instances
                ;;
            2)
                read -p "Enter instance ID to start: " instance_id
                aws ec2 start-instances --instance-ids "$instance_id"
                ;;
            3)
                read -p "Enter instance ID to stop: " instance_id
                aws ec2 stop-instances --instance-ids "$instance_id"
                ;;
            4)
                # Insert code to create instance
                echo "Create instance command goes here"
                ;;
            5)
                # Return to main menu
                return
                ;;
            *)
                echo "Invalid choice. Please enter a number between 1 and 5."
                ;;
        esac
    done
}

# Function to handle AWS S3 commands
aws_s3_commands() {
    while true; do
        echo "AWS S3 Menu:"
        echo "1. List Buckets"
        echo "2. Create Bucket"
        echo "3. Upload File"
        echo "4. Back to Main Menu"
        read -p "Enter your choice (1-4): " choice
        case "$choice" in
            1)
                aws s3 ls
                ;;
            2)
                read -p "Enter bucket name to create: " bucket_name
                aws s3 mb s3://"$bucket_name"
                ;;
            3)
                read -p "Enter file name to upload: " file_name
                read -p "Enter bucket name to upload to: " bucket_name
                aws s3 cp "$file_name" s3://"$bucket_name"/
                ;;
            4)
                # Return to main menu
                return
                ;;
            *)
                echo "Invalid choice. Please enter a number between 1 and 4."
                ;;
        esac
    done
}

# Function to handle AWS Lambda commands
aws_lambda_commands() {
    while true; do
        echo "AWS Lambda Menu:"
        echo "1. List Functions"
        echo "2. Invoke Function"
        echo "3. Create Function"
        echo "4. Back to Main Menu"
        read -p "Enter your choice (1-4): " choice
        case "$choice" in
            1)
                aws lambda list-functions
                ;;
            2)
                read -p "Enter function name to invoke: " function_name
                aws lambda invoke --function-name "$function_name" --payload '{ "key": "value" }' output.json
                ;;
            3)
                # Insert code to create function
                echo "Create function command goes here"
                ;;
            4)
                # Return to main menu
                return
                ;;
            *)
                echo "Invalid choice. Please enter a number between 1 and 4."
                ;;
        esac
    done
}

# Function to handle AWS CLI commands
aws_service_menu() {
    while true; do
        echo "AWS Service Menu:"
        echo "1. EC2"
        echo "2. S3"
        echo "3. Lambda"
        echo "4. Back to Main Menu"
        read -p "Enter your choice (1-4): " choice
        case "$choice" in
            1)
                aws_ec2_commands
                ;;
            2)
                aws_s3_commands
                ;;
            3)
                aws_lambda_commands
                ;;
            4)
                # Return to main menu
                return
                ;;
            *)
                echo "Invalid choice. Please enter a number between 1 and 4."
                ;;
        esac
    done
}

# Call the AWS service menu function
aws_service_menu
