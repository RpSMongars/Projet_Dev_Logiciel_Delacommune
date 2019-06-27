from flask import Flask
from flask_swagger_ui import get_swaggerui_blueprint
import bdd

app = Flask(__name__)

@app.route("/")
def home():
    return "Bienvenue sur mon API."

@app.route("/plantesget", methods=["GET"])
def getplant():
    return bdd.getplant()

@app.route("/plantespost",methods=["POST"])
def insertplant():
    bdd.insertplant()
    return "allo"

if __name__ == "__main__":
    app.run()