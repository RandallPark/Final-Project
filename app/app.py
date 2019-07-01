# Previously 'WORLD WIDE WASTE' python app
#  (template)
#################################################
# Imports
#################################################

from flask import (
    Flask,
    render_template)


#################################################
# Flask Setup
#################################################
app = Flask(__name__)


#################################################
# HTML ROUTES
#################################################

# HOME PAGE
@app.route("/")
def index():
    """ landing // dashboard """
    return render_template("dash.html")

# VADER SENTIMENT + WORDCLOUD
@app.route("/wordcloud")
def wordcloud():
    """ landing // dashboard & wordcloud """
    return render_template("wordcloud.html")

# TENSORFLOW SENTIMENT + STREAMGRAPH
@app.route("/stream")
def stream():
    """ scatter plot page """
    return render_template("streamm.html")


# SENTIMENT SCORING INTERACTION
@app.route("/try-it", methods=['GET'])
def get_form():
    """ Show form to user """
    return render_template("sentitry.html")

@app.route("/try-it", methods=['POST'])
def post_form():
    """ process the form """
    return render_template("sentitry.html")


# 4. Define main behavior
if __name__ == "__main__":
    app.run(debug=True)

