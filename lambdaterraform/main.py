# main.py

import json

def lambda_handler(event, context):
    # This is the Lambda handler function that will be invoked when the Lambda is triggered.
    # The event parameter contains the input data, and the context parameter provides information about the runtime environment.

    # Example: A simple "Hello, Lambda!" response
    response = {
        "statusCode": 200,
        "body": json.dumps("Hello, Lambda!")
    }

    return response
