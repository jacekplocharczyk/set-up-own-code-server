FROM codercom/code-server:latest

RUN openssl req -x509 -nodes -days 365 -newkey rsa:2048 \
    -keyout "/home/coder/vs_code_server.key" -out "/home/coder/vs_code_server.crt" \
    -subj "/C=PL/ST=Mazowieckie/L=Warsaw/O=None/CN=localhost"

RUN code-server --install-extension ms-python.python 
RUN code-server --install-extension yzhang.markdown-all-in-one 
RUN code-server --install-extension zhuangtongfa.Material-theme 

COPY ./settings.json /home/coder/.local/share/code-server/User
# ENTRYPOINT ["dumb-init", "code-server", "--no-auth"]
ENTRYPOINT ["dumb-init", "code-server", "--cert=/home/coder/vs_code_server.crt", \
"--cert-key=/home/coder/vs_code_server.key", "--disable-telemetry", "--no-auth"]
