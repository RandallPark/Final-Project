# Previously 'WORLD WIDE WASTE' python app
#  (template)
#################################################
# Imports
#################################################
# import os
# import pandas as pd
# import numpy as np
from flask import (
    Flask,
    render_template)
    # jsonify,
    # request,
    # redirect)


# import sqlalchemy
# from sqlalchemy.ext.automap import automap_base
# from sqlalchemy.orm import Session
# from sqlalchemy import create_engine, func

#################################################
# Database Setup
#################################################

# DB Version 1 - Separate tables
# Trouble with joining tables
# sqlite:///resources/database.sqlite

#DB Version 2 - One master table
# sqlite:///resources/database2.sqlite

# engine = create_engine("sqlite:///resources/database2.sqlite", echo=False)
# conn = engine.connect()

# Reflect Database into ORM classes
# Base = automap_base()
# Base.prepare(engine, reflect=True)

# DB potential reference names
# lyrics = Base.classes.lyrics
# artists = Base.classes.artists
# years = Base.classes.years

# session = Session(bind=engine)

#################################################
# Flask Setup
#################################################
app = Flask(__name__)


#################################################
# HTML ROUTES
#################################################

@app.route("/")
def index():
    """ landing page """
    return render_template("dash.html")

@app.route("/scatter-plot")
def scatter_plot():
    """ scatter plot page """
    return render_template("dash.html")

# Interactivity
@app.route("/try-it", methods=['GET'])
def get_form():
    """ Show form to user """
    return render_template("___.html")

@app.route("/try-it", methods=['POST'])
def post_form():
    """ process the form """
    return render_template("___.html")


# 4. Define main behavior
if __name__ == "__main__":
    app.run(debug=True)

