from flask import Flask, render_template, request, redirect, url_for
import mysql.connector
import pandas as pd

app = Flask(__name__)

app.config["DEBUG"] = True

db = mysql.connector.connect(
    host="localhost",
    user="root",
    password="password",
    database='tsa-sql-database'
)

connection = mysql.connector.connect(**db)
cursor = connection.cursor()

@app.route('/')
def index():
    # Example query
    query = "SELECT * FROM member;"
    cursor.execute(query)
    data = cursor.fetchall()

    return render_template('index.html', data=data)

if __name__ == '__main__':
    app.run(debug=True)