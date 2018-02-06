from bottle import run, route, error, template, static_file
import os

@route('/')
def index():
    return template('index')

@route('/employee/<n>')
def employee(n):
    return template('employee', n=n)

@route('/static/<filename>')
def server_static(filename):
    return static_file(filename, root='./static_files')

@error(404)
def error404(error):
    return template('error404')

@error(500)
def error500(error):
    return '<h1>Employee does not exist</h1>'

run(host="0.0.0.0", port=int(os.environ.get("PORT", 5000)))
