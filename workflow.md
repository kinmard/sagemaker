# What is the workflow for this ?

## Set the common variables 
Common variables such as sagemaker bucket name 
 - sagemaker_bucket=sagemaker-`date "+%Y%m%d%H%M%S"`


## Create the infrastructure
Run terraform and create the resources 
 - Pass the relevant common command-line parameters
 - What's the best way to run this in a CI/CD fashion
 - Where does the terraform state file go ? May be copied over into another s3 bucket ?

## Create a sagemaker studio domain 
 - Fairly simple process to do this - https://docs.aws.amazon.com/sagemaker/latest/dg/onboard-iam.html
 - Added my IAM user to it with appropriate ExecutorRole
 - QUESTION Does it cost money to make sagemaker studiodmain ?

## How to connect from Jupyter on local machine 
 - Useful article - https://towardsdatascience.com/setting-up-amazon-sagemaker-environment-on-your-local-machine-7329e0178adc
 - The code on https://docs.aws.amazon.com/sagemaker/latest/dg/ex1-preprocess-data-transform.html did not work because when running JH on local machine, we cannot use sagemaker.get_execution_role().
 - Instead of using sagemaker.get_execution_role(), set role = [arn..] manually


## Upload the data into the bucket created in the previous step
 - Able to do this easily with s3.upload_file() API

## Next steps :
 - Use SageMaker sklearn API to run a linear regression algorithm
 - Set up a inference endpoint 
 - Test
 - Repeat the above with a custom algorithm that does not uses SageMaker for anything but executing.
 - Prepare all steps as a pipeline DAG and not linear steps in a notebook.
