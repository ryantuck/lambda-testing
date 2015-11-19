#!/bin/bash

file_path='/home/ryan/src/lambda-test/payload.json'

aws lambda invoke \
    --invocation-type RequestResponse \
    --function-name lambda_handler \
    --region us-west-2 \
    --log-type Tail \
    --payload file://${file_path} \
    --profile ryan \
    outputfile.txt \
    ;
