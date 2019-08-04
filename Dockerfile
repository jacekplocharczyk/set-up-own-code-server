FROM codercom/code-server:latest

USER root
RUN apt-get update && apt-get install -y python3.7 python3-pip
USER coder

RUN python3.7 -m pip install -U pipenv --user

RUN code-server --install-extension ms-python.python 
RUN code-server --install-extension zhuangtongfa.Material-theme 
ENV PATH="/home/coder/.local/bin:${PATH}"

RUN mkdir -p /home/coder/.local/share/virtualenvs 
WORKDIR /home/coder/.local/share/virtualenvs
VOLUME [ "/home/coder/.local/share/virtualenvs" ]

WORKDIR /home/coder/project
COPY --chown=coder ./settings.json /home/coder/.local/share/code-server/User

ENTRYPOINT ["dumb-init", "code-server", "--disable-telemetry", "--no-auth",  "--allow-http"]
