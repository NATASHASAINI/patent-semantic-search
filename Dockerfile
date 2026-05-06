FROM python:3.11-slim

WORKDIR /app

# System dependencies (important for numpy, faiss, psycopg2 if added later)
RUN apt-get update && apt-get install -y \
    build-essential \
    gcc \
    curl \
    && rm -rf /var/lib/apt/lists/*

# Upgrade pip (VERY IMPORTANT)
RUN pip install --upgrade pip setuptools wheel

# Copy requirements first (better caching)
COPY requirements.txt .

# Install dependencies safely
RUN pip install --no-cache-dir -r requirements.txt

# Copy app code
COPY . .

# Expose FastAPI port
EXPOSE 8000

# Run FastAPI
CMD ["python", "-m", "uvicorn", "app:app", "--host", "0.0.0.0", "--port", "8000"]
