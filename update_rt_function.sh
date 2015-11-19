#!/bin/bash
arn='arn:aws:iam::710715019992:role/execution_role'
bucket_name='ryntck-lambda-test'
file_name='request_test.zip'

aws lambda update-function-code \
    --function-name request_test \
    --s3-bucket ${bucket_name} \
    --s3-key ${file_name} \
    --profile ryan \
    ;


