#!/bin/bash
arn='arn:aws:iam::710715019992:role/execution_role'
bucket_name='ryntck-lambda-test'
file_name='helloworld.zip'

aws lambda create-function \
    --region us-west-2 \
    --function-name lambda_handler \
    --code S3Bucket=${bucket_name},S3Key=${file_name} \
    --role ${arn} \
    --handler helloworld.lambda_handler \
    --runtime python2.7 \
    --memory-size 128 \
    --timeout 10 \
    --profile ryan \
    ;


