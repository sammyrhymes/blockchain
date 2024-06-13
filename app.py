import requests
from flask import Flask, jsonify, render_template

app = Flask(__name__)

@app.route('/')
def home():

    api_url = 'http://127.0.0.1:5000/get_chain/'
    
    response = requests.get(api_url)
    
    if response.status_code == 200:
        data = response.json()  
    else:
        data = {'error': 'Failed to retrieve data from the API'}
    
    return render_template('index.html', data=data)

if __name__ == '__main__':
    app.run(debug=True, port=5001)
