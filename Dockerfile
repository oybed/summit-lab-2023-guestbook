# Use base node image
FROM registry.redhat.io/devspaces/udi-rhel8:latest

RUN curl -fsSL -o mongodb-database-tools_x86_64.rpm https://fastdl.mongodb.org/tools/db/mongodb-database-tools-rhel80-x86_64-100.7.0.rpm; \
    dnf install -y ./mongodb-database-tools_x86_64.rpm; \
    rm -f ./mongodb-database-tools_x86_64.rpm
