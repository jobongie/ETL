# 1. import Flask and dependencies
from flask import Flask, jsonify
from flask_sqlalchemy import SQLAlchemy
from flask import Flask
from models import db

app = Flask(__name__)

POSTGRES = {
    'user': 'postgres',
    'pw': 'password',
    'db': 'my_database',
    'host': 'localhost',
    'port': '5432',
}

app.config['DEBUG'] = True
app.config['SQLALCHEMY_DATABASE_URI'] = 'postgresql://%(user)s:\
%(pw)s@%(host)s:%(port)s/%(db)s' % POSTGRES
db.init_app(app)


#################################################
# Flask Routes
#################################################
@app.route('/')
def states_electoral_df():   
    
    ### Need to convert this to a list first
    
    return jsonify(states_electoral_df)





    

if __name__ == "__main__":
    app.run(debug=True)  