from bottle import run, get,template

@get("/")
def index():
    full_name = "Andrea"
    return template("home", name=full_name)

run(host="localhost", debug=True, reloader=True)