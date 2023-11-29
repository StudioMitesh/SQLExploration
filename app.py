from flask import Flask, render_template, request, redirect, url_for
import mysql.connector
from mysql.connector import (connection)
import pandas as pd

app = Flask(__name__)

app.config["DEBUG"] = True

db = connection.MySQLConnection(user="test", password="password1234", host="localhost", database='tsa-sql-database')

cursor = db.cursor()

@app.route('/')
def index():
    # Example query
    query = "SELECT * FROM member;"
    cursor.execute(query)
    data = cursor.fetchall()

    return render_template('index.html', data=data)

if __name__ == '__main__':
    app.run(debug=True)