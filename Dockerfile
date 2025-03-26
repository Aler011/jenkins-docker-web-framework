FROM ubuntu:22.04

ENV DEBIAN_FRONTEND=noninteractive

RUN apt-get update && \
    apt-get install -y python3 python3-pip

WORKDIR /app

RUN pip3 install Flask==2.3.2

COPY app.py .

EXPOSE 5000

CMD ["python3", "app.py"]
