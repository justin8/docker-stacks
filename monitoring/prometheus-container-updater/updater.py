import sys
import json
import time
import logging
import docker

logging.basicConfig(
    level=logging.INFO,
    format='%(asctime)s - %(levelname)s - %(message)s'
)
logger = logging.getLogger(__name__)

ENABLE_FILTER = "prometheus.target=true"
PORT_KEY = "prometheus.port" # or first available port
PATH_KEY = "prometheus.path" # or '/metrics'
JOB_NAME = "docker_containers"
NETWORK_NAME = "traefik"

client = docker.from_env()

if len(sys.argv) > 1:
    OUTPUT_PATH = sys.argv[1]
else:
    print("An output path must be provided as the first and only argument")


while True:
    targets = []
    for container in client.containers.list(filters={"label": ENABLE_FILTER}):
        try:
            first_port = next(iter(container.attrs["NetworkSettings"]["Ports"].items()))[1][0]["HostPort"]
            port = container.attrs["Config"]["Labels"].get(PORT_KEY, first_port)
            path = container.attrs["Config"]["Labels"].get(PATH_KEY, "/metrics")
            ip_address = container.attrs["NetworkSettings"]["Networks"][NETWORK_NAME]["IPAddress"]
            logger.info(f"Found container. Name: {container.attrs['Name']}. Port: {port}. Path: {path}")
            targets.append({
                "labels": {"job": JOB_NAME},
                "targets": [f"{ip_address}:{port}{path}"]
                })
        except Exception as e:
            logger.exception(f"Error processing container {container.id}: {str(e)}")

    try:
        with open(OUTPUT_PATH, 'w') as f:
            json.dump(targets, f)
        logger.info(f"Found {len(targets)} targets. Updated and saved successfully.")
    except Exception as e:
        logger.exception(f"Error saving targets: {str(e)}")

    time.sleep(30)
