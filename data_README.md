# Patent Semantic Search 🚀

A FastAPI-based semantic search system for patent data, powered by embeddings and vector search.

---

## 📌 Overview

This project enables semantic search over patent documents using embeddings and vector similarity. It exposes a FastAPI backend API and is containerized using Docker for easy deployment.

Use cases:

* Patent similarity search
* Prior art discovery
* Semantic document retrieval

---

## 🏗️ Architecture

```
Client → FastAPI Backend → Embedding Model → Vector Store → Ranked Results
```

### Core Components:

* **FastAPI**: REST API layer
* **Embedding Model**: Converts text into vector representations
* **Vector Database**: Stores and retrieves embeddings efficiently
* **Docker**: Containerized deployment

---

## ⚙️ Features

* 🔍 Semantic search over patent text
* ⚡ Fast similarity retrieval using vector search
* 📦 Dockerized setup for easy deployment
* 🌐 REST APIs via FastAPI

---

## 🚀 Getting Started

### 1. Clone the repository

```bash
git clone https://github.com/NATASHASAINI/patent-semantic-search.git
cd patent-semantic-search
```

---

### 2. Create virtual environment (optional)

```bash
python -m venv venv
source venv/bin/activate  # Mac/Linux
venv\Scripts\activate     # Windows
```

---

### 3. Install dependencies

```bash
pip install -r requirements.txt
```

---

## 🐳 Run with Docker

### Build the image

```bash
docker build -t patent-semantic-search .
```

### Run the container

```bash
docker run -p 8000:8000 patent-semantic-search
```

---

## 📡 API Endpoints

### Health Check

```
GET /health
```

### Semantic Search

```
POST /search
```

#### Example Request

```json
{
  "query": "machine learning for drug discovery"
}
```

#### Example Response

```json
{
  "results": [
    {
      "patent_id": "US123456",
      "score": 0.89,
      "title": "ML-based Drug Discovery System"
    }
  ]
}
```

---

## 🧠 How it Works

1. Patent text is converted into embeddings
2. Embeddings are stored in a vector database
3. User query is embedded using the same model
4. Cosine similarity retrieves closest patents

---

## 🐳 Docker Structure

* `Dockerfile` → Builds FastAPI service
* Optional `docker-compose.yml` → Multi-service orchestration (API + DB)

---

## 🔧 Configuration

Environment variables (if applicable):

```
OPENAI_API_KEY=your_key
VECTOR_DB_URL=your_vector_db
```

---

## 📈 Future Improvements

* Add hybrid search (keyword + vector)
* Integrate AWS Bedrock embeddings
* Add SageMaker endpoint support
* Improve ranking with rerankers
* Add frontend UI for search

---

## 👩‍💻 Tech Stack

* FastAPI
* Python
* Docker
* Vector Database (FAISS / Qdrant / Pinecone)
* Embedding Models (OpenAI / HuggingFace / Bedrock-ready)

---

## 📜 License

MIT License

---

## 🤝 Contributing

Pull requests are welcome. For major changes, please open an issue first to discuss what you would like to change.
