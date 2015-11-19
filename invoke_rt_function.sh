#!/bin/bash

file_path='/home/ryan/src/lambda-test/request_test/request_test_payload.json'

aws lambda invoke \
    --invocation-type RequestResponse \
    --function-name request_test \
    --region us-west-2 \
    --log-type Tail \
    --payload file://${file_path} \
    --profile ryan \
    outputfile.txt \
    ;
