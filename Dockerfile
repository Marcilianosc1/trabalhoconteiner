from ubuntu:latest

WORKDIR /app
RUN apt update && \
    apt add python3 python3-pip -y

COPY . .

RUN  pip2 install poetry
RUN  poetry config --local virtualenvs.in-project true && poetry install

CMD ./init.sh