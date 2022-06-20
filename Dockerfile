FROM okteto/coder-python:dev

RUN curl -fsSL https://deb.nodesource.com/setup_17.x | sudo -E bash \
  && sudo apt-get install -y nodejs
CMD ["dumb-init", "code-server", "--auth", "none", "--port", "8081", "--host", "0.0.0.0"]
