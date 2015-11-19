#!/bin/bash
arn='arn:aws:iam::710715019992:role/execution_role'
bucket_name='ryntck-lambda-test'
file_name='request_test.zip'

aws lambda create-function \
    --region us-west-2 \
    --function-name request_test \
    --code S3Bucket=${bucket_name},S3Key=${file_name} \
    --role ${arn} \
    --handler request_test.request_test \
    --runtime python2.7 \
    --memory-size 128 \
    --timeout 10 \
    --profile ryan \
    ;


