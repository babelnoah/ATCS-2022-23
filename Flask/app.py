from flask import Flask, redirect, url_for, render_template

app = Flask(__name__)

@app.route("/")
@app.route("/landing")
def home():
    return render_template("index.html")

@app.route("/welcome/<name>")
def welcome(name):
    return render_template("welcome.html",person=name)

@app.route("/admin/<username>")
def admin(username):
    if username=="admin":
        return "Welcome admin!"
    else:
        return redirect(url_for("home"))

#Main Method
if __name__ == "__main__":
    app.run(debug=True)

