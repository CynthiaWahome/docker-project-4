from flask import Flask

app = Flask(__name__)

@app.route('/')
def hello():
    return 'Hello, YOU!'

if __name__ == '__main__':
    app.run(host='<public_ip>', port=80)