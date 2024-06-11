from flask import Flask
import psycopg2
from server import connection

app = Flask(__name__)

@app.route("/", methods=['POST'])
def filter():
    filter = 'Стул' # filter = request.form['filter']
    cursor = connection.cursor()

    cursor.execute (
                f"""SELECT o.order_id, p.product_name, o.count, c.surname FROM public."Product" as p
                    INNER JOIN public."Order" as o ON p.product_id = o.product_id
                    INNER JOIN public."Client" as c ON o.client_id = c.client_id
                    WHERE p.product_name = '{filter}';"""
            )
    data = cursor.fetchall()
    connection.close()

    return {'order' : data}

@app.route("/clients", methods=["GET"])
def get_client():

    cursor = connection.cursor()

    cursor.execute (
                """SELECT * FROM public."Client";"""
            )
    clients = cursor.fetchall()
    connection.close()

    return {'clients' : clients}

@app.route("/products", methods=["GET"])
def get_product():

    cursor = connection.cursor()

    cursor.execute (
                """SELECT * FROM public."Product";"""
            )
    products = cursor.fetchall()
    connection.close()

    return {'products' : products}

if __name__ == '__main__':
    app.run(debug=True)