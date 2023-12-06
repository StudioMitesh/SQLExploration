from flask import Flask, render_template, request, redirect, url_for, jsonify
import mysql.connector
from mysql.connector import (connection)
import pandas as pd

app = Flask(__name__)

app.config["DEBUG"] = True

db = connection.MySQLConnection(user="test", password="password1234", host="localhost", database='tsa')

cursor = db.cursor()

@app.route('/')
def index():
    query = "SELECT * FROM member;"
    cursor.execute(query)
    data = cursor.fetchall()

    return render_template('index.html', data=data)

if __name__ == '__main__':
    app.run(debug=True)

@app.route('/search', methods=['POST'])
def search():
    search_input = request.json.get('searchInput')

    query = f"SELECT * FROM member WHERE first_name = '{search_input}';"
    cursor.execute(query)
    results = cursor.fetchall()

    # You can format the results as needed and return them
    return jsonify(results)