from bottle import run, route, error, template, static_file
import json
import os

#the old method
""" 
f = open('data.json')

staff = json.load(f)

f.close()
"""

#new method
"""
with open('data.json', 'r') as f:
    staff = json.load(f)
"""

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

run(host="0.0.0.0", port=int(os.environ.get("PORT", 5000)))
