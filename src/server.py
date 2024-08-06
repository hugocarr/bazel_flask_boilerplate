import logging

from flask import Flask
from prometheus_flask_exporter import PrometheusMetrics

# Logging
logger = logging.getLogger("waitress")
logger.setLevel(logging.INFO)

# App
app = Flask(__name__)

# Prometheus
metrics = PrometheusMetrics(app)


@app.route("/")
def hello_world():
    return "Hello, World!"
