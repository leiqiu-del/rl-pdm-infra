
FROM python:3.11-slim
WORKDIR /app
COPY . /app
RUN pip install --no-cache-dir -e .[dev]
EXPOSE 8000 8501
CMD ["bash", "-lc", "uvicorn rl_pdm.app.api_server:app --host 0.0.0.0 --port 8000"]
