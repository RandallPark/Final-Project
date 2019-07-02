# Previously 'WORLD WIDE WASTE' python app
#  (template)
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


# @app.route('/example', methods = ['POST'])
# def signup():
#     email = request.form['email']
#     print("The email address is '" + email + "'")
#     return redirect('/')


# Create a list to hold our data for EXAMPLE
my_data = []

#EXAMPLE
@app.route("/api/data")
def data():
    print(my_data)
    return jsonify(my_data)

#EXAMPLE
@app.route("/send", methods=["GET", "POST"])
def send():
    if request.method == "POST":
        nickname = request.form["nickname"]
        age = request.form["age"]

        form_data = {
            "nickname": nickname,
            "age": int(age)
        }

        my_data.append(form_data)

        return "Thanks for the form data!"

    return render_template("form.html")

#EXAMPLE
@app.route('/input')
def student():
   return render_template('basic-input.html')

#EXAMPLE
@app.route('/output',methods = ['POST', 'GET'])
def result():
   if request.method == 'POST':
      result = request.form
      print(result)
      return render_template("basic-output.html",result = result)

@app.route("/text-box", methods=['GET'])
def get_text():
    """ process the form """
    # text_entry = request.form['text_entry']
    # print("The tweet GET '" + text_entry + "'")
    return render_template("text-box.html")

# SENTIMENT SCORING INTERACTION
@app.route("/text-box", methods=['POST'])
def post_text():
    """ Show form to user """
    # text_entry = ''
    text_entry = request.form['text_entry']
    print(f"The tweet POST {text_entry}")
    return render_template("text-box.html")



# Define main behavior
if __name__ == "__main__":
    app.run(debug=True)

