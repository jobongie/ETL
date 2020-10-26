# 1. import Flask and dependencies
from flask import Flask, jsonify

import numpy as np
import os

import sqlalchemy
from sqlalchemy.ext.automap import automap_base
from sqlalchemy.orm import Session
from sqlalchemy import create_engine


# 2. Create an app, being sure to pass __name__

#################################################
# Flask Setup
#################################################
app = Flask(__name__)

# 3. Define what to do when a user hits the index route

#################################################
# Flask Routes
#################################################
@app.route("/")
def home():


#4. Database stuff

#################################################
# Database Setup
#################################################
engine = create_engine("sqlite:///Solved/titanic.sqlite")

# reflect an existing database into a new model
Base = automap_base()
Base.prepare(engine, reflect=True)

# Save reference to the table
Passenger = Base.classes.passenger

#################################################
# Database Routes
###############################################
@app.route("/")
def welcome():
    """List all available api routes."""
    return (
        f"Available Routes:<br/>"
        f"/api/v1.0/names<br/>"
        f"/api/v1.0/passengers")

@app.route('/api/v1.0/names')
def names():
    # Query all passengers
    session = Session(engine)
    results = session.query(Passenger.name).all()

    # close the session to end communication with the server
    session.close()

    all_names = list(np.ravel(results))
    # alternative with list comprehension
    # all_names = [result[0] for result in results]

    return jsonify(all_names)




    

if __name__ == "__main__":
    app.run(debug=True)  