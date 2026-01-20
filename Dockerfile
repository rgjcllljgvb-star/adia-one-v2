FROM python:3.12-slim
WORKDIR /app
COPY pyproject.toml poetry.lock ./
RUN pip install poetry && poetry install --no-root
COPY src/ ./src/
CMD ["poetry", "run", "python", "src/test_adia.py"]
