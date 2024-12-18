from flask import Flask
from pymongo import MongoClient

app = Flask(__name__)

# Подключаемся к MongoDB
client = MongoClient('mongodb://localhost:27017/')
db = client['flaskdb']
collection = db['messages']

@app.route('/')
def index():
    collection.insert_one({"message": "Hello, World!"})
    return "Hi dev!"

if __name__ == '__main__':
    app.run(debug=True)
