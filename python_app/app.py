import socket
import requests
from flask import Flask, request
app = Flask(__name__)


@app.route('/')
def hello_world():
    hostname = socket.gethostname()
    sock = socket.socket(socket.AF_INET, socket.SOCK_STREAM)
    sock.bind(('localhost', 0))
    sock.close()

    # Used in return it when we want ran containters without swarm
    # even on separate nodes what is wrong
    print(str(request.host))

    return 'Python Dockerized APP <br>CONTAINER ID: ' \
            + str(hostname)


if __name__ == '__main__':
    app.run(debug=True, host='0.0.0.0')
