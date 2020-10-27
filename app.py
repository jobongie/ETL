# 1. import Flask and dependencies
from flask import Flask, jsonify


#################################################
# Flask Setup
#################################################
app = Flask(__name__)

#################################################
# Database Setup
#################################################
engine = create_engine("sqlite:///data/states_electoral_df.csv")

# reflect an existing database into a new model
Base = automap_base()
Base.prepare(engine, reflect=True)



#################################################
# Flask Routes
#################################################
@app.route('/data/states_electoral_df.csv')
def states_electoral_df():   
    return jsonify(states_electoral_df)



#################################################
# Debugger
#################################################
if __name__ == "__main__":
    app.run(debug=True)  