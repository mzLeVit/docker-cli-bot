FROM python:3.11-slim
RUN apt-get update && apt-get install -y curl
RUN curl -sSL https://install.python-poetry.org | python3 -
ENV PATH="/root/.local/bin:${PATH}"
WORKDIR C:\Users\Vitaliy\AppData\Roaming\pypoetry\venv\docker-app
COPY . .
RUN poetry env use python3.11
RUN poetry config virtualenvs.create false && poetry install
CMD ["python", "app.py"]
