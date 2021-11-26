from fastapi import FastAPI, Request, status, Form, Query
from fastapi.templating import Jinja2Templates
from fastapi.staticfiles import StaticFiles
import re
import psycopg2


app = FastAPI()
templates = Jinja2Templates(directory="./templates")
app.mount("/static", StaticFiles(directory="./static"), name="static")
conn = psycopg2.connect(
    database="f1", user="postgres", password="123456", host="127.0.0.1", port="8888"
)
cur = conn.cursor()
ins = re.compile('insert', re.I)
upd = re.compile('update', re.I)

@app.get("/")
def home(request: Request):
    return templates.TemplateResponse("index.html", {"request": request})


@app.get("/main")
def home_main(request: Request):
    return templates.TemplateResponse("main.html", {"request": request})


@app.get("/queries")
def query_(request: Request, query: str = Query(None)):
    try:
        if ins.match(query):
            cur.execute(query)
            print(cur.description)
        elif upd.match(query):
            cur.execute(query)
            print(cur.description)
        else:
            cur.execute(query)
            print(cur.description)
            rows = cur.fetchall()
        return templates.TemplateResponse(
            "execution.html",
            {
                "request": request,
                "query": query,
                "rows": rows,
                "columns": [col[0] for col in cur.description],
            },
        )
    except Exception as e:
        print(e)
