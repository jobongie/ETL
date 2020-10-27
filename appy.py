# 1. import Flask and dependencies
from flask import Flask, jsonify


#################################################
# Flask Setup
#################################################
app = Flask(__name__)

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