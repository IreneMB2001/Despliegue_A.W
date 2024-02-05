#! /bin/bash
export AWS_ACCESS_KEY_ID=
export AWS_SECRET_ACCESS_KEY=
export AWS_SESSION_TOKEN=
export AWS_DEFAULT_REGION=us-east-1

STACK_NAME="tomcat"
REGION=us-east-1
CLI_PROFILE=default

InstanceType=t2.micro

aws cloudformation deploy \
	--region us-east-1 \
	--profile default \
	--stack-name "tomcat" \
	--template-file ubuntu.yml \
	--no-fail-on-empty-changeset \
	--capabilities CAPABILITY_NAMED_IAM \
	--parameter-override EC2InstanceType=$EC2_INSTANCE_TYPE

# Verificar el resultado y devolver exports si el despliegue fue exitoso
if [ $? -eq 0 ]; then
aws cloudformation list-exports \
--profile awsbootstrap \
--query "Exports[?Name=='InstanceEndpoint'].Value"
fi