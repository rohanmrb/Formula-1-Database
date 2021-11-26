from fastapi import FastAPI, Request, status, Form, Query
from fastapi.templating import Jinja2Templates
from fastapi.staticfiles import StaticFiles
from fastapi.responses import RedirectResponse
import re
import psycopg2


app = FastAPI()
templates = Jinja2Templates(directory="./templates")
app.mount("/static", StaticFiles(directory="./static"), name="static")
<<<<<<< HEAD
conn = psycopg2.connect(
    database="f1", user="postgres", password="123456", host="127.0.0.1", port="8888"
)
cur = conn.cursor()
=======
>>>>>>> c668a8256508c970fc9c41fc96adb64b548a78f4
ins = re.compile('insert', re.I)
upd = re.compile('update', re.I)

@app.get("/")
def home(request: Request, error: str = Query(None), error_reg: str = Query(None)):
    if not error:
        error = ""
    if not error_reg:
        error_reg = ""
    return templates.TemplateResponse("index.html", {"request": request, "error": error, "error_reg": error_reg})

@app.post("/login")
def log (username: str = Form(None), passw: str = Form(None)):
    conn = psycopg2.connect(
        database="f1", user="postgres", password="", host="127.0.0.1", port="5432"
    )
    cur = conn.cursor()
    if not username or not passw:
        return RedirectResponse(url="/?error=Empty username or password", status_code = status.HTTP_302_FOUND)
    if len(passw)<8:
        return RedirectResponse(url="/?error=Password too small", status_code = status.HTTP_302_FOUND)
    try:
        cur.execute('Select * from users where username=\''+username+'\' and password=\''+passw+'\'')
        rows = cur.fetchall()
        if len(rows)==0:
            return RedirectResponse(url="/?error=Incorrect username or password", status_code = status.HTTP_302_FOUND)
        else:
            return RedirectResponse(url="/main", status_code=status.HTTP_302_FOUND)
    except (psycopg2.errors.UndefinedColumn):
        return RedirectResponse(url="/?error=Incorrect username or password", status_code = status.HTTP_302_FOUND)

@app.get("/reg")
def register(request: Request, error_reg: str = Query(None)):
    if not error_reg:
        error_reg=""
    return templates.TemplateResponse("register.html", {"request": request, "error_reg": error_reg})

@app.post("/register")
def reg(username: str = Form(None), email: str = Form(None), passw = Form(None)):
    conn = psycopg2.connect(
        database="f1", user="postgres", password="", host="127.0.0.1", port="5432"
    )
    cur = conn.cursor()
    if not username or not passw or not email:
        return RedirectResponse(url="/reg?error_reg=Empty username or password or email", status_code = status.HTTP_302_FOUND)
    if len(passw)<8:
        return RedirectResponse(url="/reg?error_reg=Password too small", status_code = status.HTTP_302_FOUND)
    try:
        cur.execute("insert into users values('"+username + "', '" + email+"', '" + passw + "')")
        conn.commit()
        return RedirectResponse(url="/main", status_code=status.HTTP_302_FOUND)

    except psycopg2.errors.UniqueViolation:
        return RedirectResponse(url="/reg?error_reg=username or email already in use", status_code = status.HTTP_302_FOUND)


@app.get("/main")
def home_main(request: Request):
    return templates.TemplateResponse("main.html", {"request": request})


@app.get("/queries")
def query_(request: Request, query: str = Query(None)):
    conn = psycopg2.connect(
        database="f1", user="postgres", password="", host="127.0.0.1", port="5432"
    )
    cur = conn.cursor()
    try:
        cur.execute(query)
        rows = cur.fetchall()
        return templates.TemplateResponse(
            "execution.html",
            {
                "request": request,
                "query": query,
                "rows": rows,
                "columns": [col[0] for col in cur.description],
                "error": ""
            },
        )
    except (psycopg2.errors.SyntaxError):
        return templates.TemplateResponse(
            "execution.html",
            {
                "request": request,
                "query": query,
                "rows": [],
                "columns": [],
                "error": "Invalid query"
            },
        )
    except (psycopg2.errors.UndefinedTable):
        return templates.TemplateResponse(
            "execution.html",
            {
                "request": request,
                "query": query,
                "rows": [],
                "columns": [],
                "error": "Undefined Table"
            },
        )
