# Set the base image to Ubuntu
FROM fedora:21

# Update the repository sources list
RUN yum update -y

ADD "./webapps" "/var/lib/tomcat/webapps"
ADD "./conf" "/etc/tomcat"
ADD "./log" "/var/log/tomcat"
ADD "./submodules/reference-ccda-validator" "/etc/submodules/reference-ccda-validator"
ADD "./submodules/code-validator-api" "/etc/submodules/code-validator-api"
ADD "./files" "/etc/ccda/files"

# Do the magic
RUN /etc/ccda/files/scripts/do-magic.sh

CMD /usr/libexec/tomcat/server start

# Expose the default port
EXPOSE 8080