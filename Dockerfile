FROM alpine: latest

RUN apk update

RUN apk add python3 py3-pip

RUN apt-get update && apt-get install -y git

RUN git clone https://github.com/ManojUchiha02/S_Task1.git /app

RUN mkdir app

WORKDIR app

COPY app_code.py app/app_code.py

ENTRYPOINT ["python3", "app_code.py"]
