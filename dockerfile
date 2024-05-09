FROM centos:7

# Update and install nginx section
RUN yum update -y && \
    yum install -y epel-release && \
    yum install -y nginx vim

# Create path and add index.html
WORKDIR /usr/share/nginx/html

# Copy app.css into the directory
COPY app.css .

EXPOSE 80/tcp

CMD ["nginx", "-g", "daemon off;"]
