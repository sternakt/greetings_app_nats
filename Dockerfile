FROM python:3.9-slim-bullseye

SHELL ["/bin/bash", "-c"]
WORKDIR /project

ADD greetings_app_nats /project/greetings_app_nats
COPY pyproject.toml /project/

RUN pip install --no-cache-dir .

CMD ["faststream", "run", "--workers", "1", "greetings_app_nats.application:app"]
