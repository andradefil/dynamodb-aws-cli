FROM amazon/dynamodb-local
MAINTAINER Filipe Andrade <filipeandrade.dev@gmail.com>

USER root

# Install and pre configure aws cli
RUN yum -y install aws-cli
ENV AWS_ACCESS_KEY_ID "aaa-bbb-cc-dddd"
ENV AWS_SECRET_ACCESS_KEY "aaa-bbb-cc-dddd"
ENV AWS_DEFAULT_REGION="us-east-1"

# Configure init scripts
VOLUME /init-scripts
ADD init-scripts.sh /
ADD entrypoint.sh /

USER dynamodblocal
ENTRYPOINT ["/entrypoint.sh"]