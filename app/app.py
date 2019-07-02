# Previously 'WORLD WIDE WASTE' python app
#  (template)
#################################################
# Imports
#################################################

from flask import (
    Flask,
    render_template,
    request)


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
    return render_template("stream.html")

# PANDAS REPORT
@app.route("/tweet-report")
def tweetreport():
    """ pandas twitter analysis page """
    return render_template("tweet-report.html")


@app.route('/signup', methods = ['POST'])
def signup():
    email = request.form['email']
    print("The email address is '" + email + "'")
    return redirect('/')

# SENTIMENT SCORING INTERACTION
@app.route("/text-box", methods=['POST'])
def get_text():
    """ Show form to user """
    email = request.form['email']
    print("The email address is '" + email + "'")
    return render_template("text-box.html")

@app.route("/text-box", methods=['GET'])
def post_text():
    """ process the form """
    return render_template("text-box.html")


# 4. Define main behavior
if __name__ == "__main__":
    app.run(debug=True)

