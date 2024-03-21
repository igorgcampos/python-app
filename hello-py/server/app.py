from flask import Flask

app = Flask(__name__)

@app.route("/")
def home():
    return "hello, py!!!"  # Retorne a string diretamente

if __name__ == "__main__":
    app.run(debug=True)