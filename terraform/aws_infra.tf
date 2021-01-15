provider "aws" {
    region = var.region
}

# resource "aws_instance" "example" {
#     ami= "ami-08d70e59c07c61a3a"
#     instance_type = "t2.micro"
# }

resource "aws_s3_bucket" "b" {
    bucket = var.sagemaker_bucket
    acl = "private"

    # Commented as tags are not working 
    # tags = {
    #     Name = "Sagemaker staging bucket for data, models etc."
    #     Environment = "Dev"
    # }
}