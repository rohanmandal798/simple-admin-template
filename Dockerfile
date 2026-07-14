# ----------------------------------------------------
# Simple Admin Template - OpenShift Compatible
# ----------------------------------------------------

FROM docker.io/nginxinc/nginx-unprivileged:stable-alpine

LABEL maintainer="Rohan Kumar Mandal"
LABEL application="Simple Admin Template"
LABEL description="Static Admin Dashboard hosted on OpenShift"

# Switch to root only during image build
USER root

# Remove default nginx content
RUN rm -rf /usr/share/nginx/html/*

# Copy website files
COPY . /usr/share/nginx/html/

# Set correct ownership for the nginx user
RUN chown -R 101:0 /usr/share/nginx/html

# Return to non-root user
USER 101

EXPOSE 8080

CMD ["nginx","-g","daemon off;"]
