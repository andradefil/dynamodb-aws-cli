# dynamodb-aws-cli

## Extension of official aws dynamodb-local image adding **aws cli** and **init scripts at container start-up**

## Motivation
The official aws [dynamodb-local docker image](https://hub.docker.com/r/amazon/dynamodb-local/) not have
the `aws cli` installed and not permits `run scripts` automatically after dynamodb service starts 
(e.g. Run a script to create dynamodb table).

This image `extends the official aws` docker image adding the `possibility to run custom scripts at start-up` and 
`includes the last version of aws cli`.

## Getting Started

### Run
> docker run -p 8000:8000 killboard/dynamodb-aws-cli

### Run with scripts at startup
> docker run -v $(pwd)/example:/init-scripts -p 8000:8000 killboard/dynamodb-aws-cli  




You can find a sample application on GitHub demonstrating how to use DynamoDB local for testing.

To learn how to configure DynamoDB local, see the DynamoDB local usage notes in the AWS Docs.