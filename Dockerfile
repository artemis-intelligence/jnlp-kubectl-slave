FROM jenkins/jnlp-slave:alpine

USER root

RUN wget "https://storage.googleapis.com/kubernetes-release/release/$(wget -qO- https://storage.googleapis.com/kubernetes-release/release/stable.txt)/bin/linux/amd64/kubectl" && \
    chmod +x ./kubectl && \
    mv ./kubectl /usr/local/bin/kubectl

USER jenkins
