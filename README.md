# ETL 

    Two Data Sources were used to pull election data for this project, with the endgoal of comparing the 2016 Election Forecast vs the Final Results.

    This is to be accomplished by using a CSV containing Electoral College votes by state (with added CD's in the case of Maine and Nebraska). An API containing election forecasts and election results was queried to provide a snapshop of the forecasting accuracy.

    

## Data Sources

    Our information is comes from the websites **"fivethirtyeight.com"** and **public.opendatasoft.com**. 


## ETL Process
### Extraction  - **Data_puller.ipynb**
        
        Downloads 
        **CSV** file from the website **fivethirtyeight.com**
        **API query** to the website **public.opendatasoft.com**
        
        Exports to **Resources** folder
        **forecast_df.csv**
        **results_df.csv**


### Transformation 1 - **dataframe_work.ipynb**

        Imports from **Resources** folder
        **forecast_df.csv**
        **results_df.csv**

        Exports to **data** folder
        **short_results_df.csv**      
        **grouped_data_df.csv**

### Transformation 2 - **state_winner.ipynb**

        Imports from **data** folder
        **grouped_data_df.csv**

        Exports to **data** folder
        **state_winner_df**

### Loading - **query.sql**

        Imports
        **states_winner_df.csv**
        **short_results_df.csv**

        Exports to **data** folder
        **states_electoral_df.csv**
    


## Flask API
    The file **app.py** located in the **Python** folder utilizes a flask server to query the Postgresql database and returns it in a JSON format.

## Final Report

    Located in **Resources/documentation** the file **Project 2 Write-UP.docx** details the synopsis of our ETL project
    




