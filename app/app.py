# Main file for web server.
#################################################
# Imports
#################################################

from flask import (
    Flask,
    render_template,
    request,
    redirect,
    jsonify)


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

# INDIVIDUAL POLITICIAN WORDCLOUD
@app.route("/politic")
def politic():
    """ landing // politicians wordcloud """
    return render_template("politicians.html")

# TENSORFLOW SENTIMENT + STREAMGRAPH
# NOT WORKING
@app.route("/stream")
def stream():
    """ scatter plot page """
    return render_template("stream.html")

# PANDAS REPORT
@app.route("/tweet-report")
def tweetreport():
    """ pandas twitter analysis page """
    return render_template("tweet-report.html")

# Create a list to hold our data for EXAMPLE
my_data = []
text_data = {}

@app.route("/text-box", methods=['GET'])
def get_text():
    """ process the form """
    # text_entry = request.form['text_entry']
    # print("The tweet GET '" + text_entry + "'")
    return render_template("text-box.html")

# SENTIMENT SCORING INTERACTION
@app.route("/text-out", methods=['POST'])
def post_text():
    """ Show form to user """
    # text_entry = ''
    text_entry = request.form['text_entry']

    text_data = {
            "text": text_entry
        }
    print(f"The tweet POST {text_entry}")
    return render_template("text-out.html", text_data = text_data)



# Define main behavior
if __name__ == "__main__":
    app.run(debug=True)

