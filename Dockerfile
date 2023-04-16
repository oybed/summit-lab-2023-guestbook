# Use base node image
FROM registry.redhat.io/devspaces/udi-rhel8:latest

RUN curl -fsSL -o mongocli_linux_x86_64.rpm https://fastdl.mongodb.org/mongocli/mongocli_1.29.0_linux_x86_64.rpm; \
    yum install -y ./mongocli_linux_x86_64.rpm; \
    rm -f ./mongocli_linux_x86_64.rpm
