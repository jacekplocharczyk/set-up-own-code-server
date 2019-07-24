FROM codercom/code-server:latest

RUN openssl req -x509 -nodes -days 365 -newkey rsa:2048 \
    -keyout "/home/coder//vs_code_server.key" -out "/home/coder/vs_code_server.crt" \
    -subj "/C=PL/ST=Mazowieckie/L=Warsaw/O=None/CN=localhost"



ENTRYPOINT ["dumb-init", "code-server", "--cert=/home/coder/vs_code_server.crt", "--cert-key=/home/coder/vs_code_server.key"]