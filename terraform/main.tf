###############################################
# TERRAFORM to build EC2-OLLAMA with unique AMI ID
# by Tuệ Hoàng 

  #################################################################
  ############ REMEMBER: Generate your Key Pair ###################
  #aws ec2 create-key-pair --key-name YourKeyName --query 'KeyMaterial' --output text > YourKeyName.pem
  #################################################################

provider "aws" {
  region = "ca-central-1"
}

resource "aws_instance" "terraform-ollama-ami-id" {
  ami           = "<AMI-ID>"  # Using a unique AMI ID to enforce restrictions within an organization. 
  instance_type = "t2.2xlarge"  # Optimal instance size for personal usage
  key_name      = "YourKeyName"

  ebs_block_device {
    device_name           = "/dev/sda1" // This is typically the root volume
    volume_size           = 100          // Set the volume size to 100GB
    delete_on_termination = true         // Ensure the volume is deleted when the instance is terminated
  }

  tags = {
    Name = "terraform-ollama-ami-id"
  }


}