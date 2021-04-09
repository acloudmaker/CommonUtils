# A variety of helpful AMI commands collected from different AWS doc pages
# Doc: https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/finding-an-ami.html

# 1. View a list of all Linux AMIs in the current AWS Region by using the following command in the AWS CLI
aws ssm get-parameters-by-path --path /aws/service/ami-amazon-linux-latest --query "Parameters[].Name"


# 2. Launch an t2.micro, Amazon Linux 2 instance using a public parameter. Note that the --count and --security-group parameters are not included. The default count is 1 and the default VPC and the default security group are used.
# AMI ID created by this command in regions us-east-1: ami-0742b4e673072066f
# Command will need a keypair. Make sure MyKP key pair exists or create it before running the command
aws ec2 run-instances \
   --image-id resolve:ssm:/aws/service/ami-amazon-linux-latest/amzn2-ami-hvm-x86_64-gp2 \
   --instance-type t2.micro \
   --key-name MyKP


# 3. Find the current Amazon Linux 2 AMI. Command runs as is.
aws ec2 describe-images \
  --owners amazon \
  --filters "Name=name,Values=amzn2-ami-hvm-2.0.????????.?-x86_64-gp2" "Name=state,Values=available" \
  --query "reverse(sort_by(Images, &CreationDate))[:1].ImageId" \
  --output json

# 4. Find the current Ubuntu Server 16.04 LTS AMI. Commnd runs as is.
aws ec2 describe-images \
  --owners 099720109477 \
  --filters "Name=name,Values=ubuntu/images/hvm-ssd/ubuntu-xenial-16.04-amd64-server-????????" "Name=state,Values=available" \
  --query "reverse(sort_by(Images, &CreationDate))[:1].ImageId" \
  --output json

#5. The URL below launches an instance from the ami-0abcdef1234567890 AMI in the us-east-1 Region
# Doc: https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/using-bookmarks.html
https://console.aws.amazon.com/ec2/v2/home?region=us-east-1#LaunchInstanceWizard:ami=ami-0abcdef1234567890

#6. List AMIs owned by Amazon. 
# Note: The following command create over half a million lines json output, see file /tmp/out.
# Doc: https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/usingsharedamis-finding.html
aws ec2 describe-images --owners amazon > /tmp/out
