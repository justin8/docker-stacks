FROM python:3.11

WORKDIR /app

COPY requirements.txt /app/requirements.txt
RUN pip install -r requirements.txt

COPY updater.py /app/updater.py
CMD ["python", "updater.py", "/prometheus/docker_containers.json"]
