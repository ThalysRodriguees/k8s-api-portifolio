from fastapi import FastAPI

app = FastAPI()

@app.get("/")
def read_root():
    return {"mensagem": "Olá, Recrutador! Esta API está rodando no meu cluster Kubernetes no Proxmox."}

@app.get("/healthz")
def health_check():
    return {"status": "saudavel", "k8s": "ready"}