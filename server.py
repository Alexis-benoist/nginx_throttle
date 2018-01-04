from flask import Flask, request
app = Flask(__name__)

@app.route("/api")
def hello():
    token = request.cookies.get('token')
    print token
    return "Hello World!"
