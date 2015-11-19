from __future__ import print_function
import requests
def request_test (event, context):

    url = 'http://httpbin.org/get'
    r = requests.get(url)

    results = {
            'request_response': r.text,
            'your_input': event['input']
            }

    return results
