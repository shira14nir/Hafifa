from typing import Dict

from fastapi import FastAPI
import uvicorn

HOST = '0.0.0.0'
PORT = 8080


def main():
    app = FastAPI()

    @app.get("/")
    def route() -> Dict:
        return {"best_hofefet": "nivi!"}

    uvicorn.run(app=app, host=HOST, port=PORT)


if __name__ == '__main__':
    main()
