# Terraform META AI Llama3 to a Specific AMI on AWS Infrastructure


- Dare to dream
- Ignite your inspiration and innovation
- Strive for excellence
- Explore together & unlock the world's knowledge

## This Terraform script simplifies the launch of an EC2 instance with OLLAMA, running the latest META model Llama3 within a restricted and unique AMI image.


### The advantages of using a unique and restricted AMI include:

- Enhanced Security: Unique AMIs are tailored to specific requirements, reducing the attack surface and mitigating security risks associated with using standardized or publicly available AMIs.

- Custom Configuration: Restricted AMIs can be pre-configured with specific software, settings, and security measures to meet organizational or regulatory compliance requirements, ensuring consistency and adherence to best practices.

- Isolation of Environments: By using a unique AMI, organizations can isolate their environments from potential vulnerabilities or dependencies introduced by other users or third-party sources, enhancing overall system stability and reliability.

- Controlled Access: Restricted AMIs limit access to authorized users or groups, preventing unauthorized modifications or deployments and maintaining the integrity of the underlying infrastructure.

- Simplified Compliance: Unique and restricted AMIs facilitate compliance efforts by providing a known and auditable baseline configuration, making it easier to track changes, enforce policies and PI, and demonstrate regulatory compliance to auditors or stakeholders.


### <ins>while retaining the ability to maintain distinct conversations with each unique GenAI.</ins>

1. Personalization: By retaining the conversation history, the chatbot can tailor responses and recommendations based on past interactions, providing a more personalized experience for users.
2. Contextual Understanding: Keeping track of previous conversations allows the chatbot to better understand the context of current queries, leading to more accurate and relevant responses.
3. Seamless Continuity: Users can pick up where they left off in previous conversations, ensuring a seamless and continuous dialogue with the chatbot, even across multiple sessions.

_Prompt example 1. What are the key differences between excitatory and inhibitory neurotransmitters, and how do they contribute to neuronal signaling and brain function?_

_Prompt example 2. Staying within the current conversation, what are the neurological underpinnings of psychiatric disorders such as schizophrenia, depression, and bipolar disorder, and what insights do they provide for developing novel and innovative treatments?._


### <ins>Conceptual flow of Terraforming process</ins>

<img width="1181" alt="image" src="https://github.com/ubc-tuehoang/Terraform-Launching-META-AI-Llama3-to-a-Specific-AMI-on-AWS-Infrastructure/assets/86985864/4a98849e-8041-462e-ad01-2b26a5a941e5">



![image](https://github.com/ubc-tuehoang/Terraform-META-AI-to-a-Specific-AMI-on-AWS/assets/86985864/6753a3a0-5658-494c-b346-4c676230e9c5)



## <ins>How-to terraforming Meta AI:</ins>

### Pre-clone steps:

- > install aws-cli
- 	> how-to: https://docs.aws.amazon.com/cli/latest/userguide/getting-started-install.html

- > aws configure (update your secret key)

########### IMPORTANT STEP ################
- > aws ec2 create-key-pair --key-name YourKeyName --query 'KeyMaterial' --output text > YourKeyName.pem

- > install terraform 
- 	> how-to: https://developer.hashicorp.com/terraform/tutorials/aws-get-started/install-cli


### Cloning Steps:

- > git clone https://github.com/ubc-tuehoang/Terraform-META-AI-Llama3-with-AWS-EC2-Infrastructure.git
- > cd terraform

- > (edit tf file, if needed)

- > terraform init
- > terraform validate
- > terraform plan
- > terraform apply
- 	> remember to type 'yes'


### Access to the OLLMA/LLMA3 platform:
- > check for "public dns", ex. ec2-xx-xx-xx-xx.ca-central-1.compute.amazonaws.com
- 	> how-to ssh to the pulic dns: >ssh -i "YourKeyName.pem" ubuntu@ec2-xx-xx-xx-xx.ca-central-1.compute.amazonaws.com

### Run META AI Llama3:

- > ollama run llama3

### Finally clean up

(option to destroy)
- > terraform destroy

![image](https://github.com/ubc-tuehoang/Terraform-META-AI-to-a-Specific-AMI-on-AWS/assets/86985864/3d6aa45d-df03-4c51-acce-fd40ddb341f3)


_NOTE: To deployment using Terraform with a standard AWS EC2 instance (not to a specific AMI), t2.2xlarge, running Ubuntu._

https://github.com/ubc-tuehoang/Terraform-META-AI-Llama3-with-AWS-EC2-Infrastructure


EOF
