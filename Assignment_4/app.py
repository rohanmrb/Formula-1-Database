from fastapi import FastAPI, Request, status, Form, Query
from fastapi.templating import Jinja2Templates
from fastapi.staticfiles import StaticFiles

import psycopg2


app = FastAPI()
templates = Jinja2Templates(directory="./templates")
app.mount("/static", StaticFiles(directory="./static"), name="static")
conn = psycopg2.connect(database="f1", user = "postgres", password = "123456", host = "127.0.0.1", port = "8888")
cur = conn.cursor()
@app.get("/")
def home(request: Request):
    return templates.TemplateResponse("index.html", {"request": request})

@app.get("/main")
def home_main(request: Request):
    return templates.TemplateResponse("main.html", {"request": request})

@app.get("/queries")
def query_(query: int = Query(...)):
    if query==1:
        cur.execute("Select * from teams")
        rows = cur.fetchall()
        print(rows)
