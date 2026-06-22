# 1. Pega uma imagem oficial do Python bem leve
FROM python:3.11-slim

# 2. Define a pasta de trabalho dentro do container
WORKDIR /app

# 3. Copia o arquivo de dependências e instala
COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt

# 4. Copia o resto do seu código (o main.py) para dentro do container
COPY . .

# 5. Informa que o container vai usar a porta 8000
EXPOSE 8000

# 6. O comando que faz a API ligar quando o container nascer
CMD ["uvicorn", "main:app", "--host", "0.0.0.0", "--port", "8000"]