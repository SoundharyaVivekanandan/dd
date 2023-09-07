resource "aws_lambda_function" "my_lambda_function" {
  function_name = "my-lambda-function"
  role          = aws_iam_role.lambda_execution_role.arn
  handler       = "main.handler"
  runtime       = "python3.9"
  timeout       = 10
  memory_size   = 128
  filename      = "D:/lambdaterraform-zip.zip"
}

resource "aws_iam_role" "lambda_execution_role" {
  name = "my-lambda-execution-role"

  assume_role_policy = jsonencode({
    Version = "2012-10-17"
    Statement = [
      {
        Action = "sts:AssumeRole"
        Effect = "Allow"
        Principal = {
          Service = "lambda.amazonaws.com"
        }
      }
    ]
  })
}
