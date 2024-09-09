# 
# Description: 
# This script queries the sandbox table in the Oracle database and displays the result in a table.
#
import pandas as pd
import yaml

from ConnectDb import OracleDB

# Main function
print("Start")

# Load database connection info from YAML file
with open('./yaml/db_connection.yaml', 'r') as file:
    db_config = yaml.safe_load(file)

# Load sql query from yaml 
with open('./yaml/db_sqlQuery.yaml', 'r') as file:
    sql_query = yaml.safe_load(file)


# Database connection string
db = OracleDB(username=db_config['user'], password=db_config['password'], dsn=db_config['dsn'])
connection = db.getConnection()

# Query the sandbox table
query = sql_query['sql'][sql_query['chosen_sql']]
# print(query)

# Read the result into a DataFrame
df = pd.read_sql(query, con=connection)
 
# Close the connection
db.disconnect()

# Display the result in a table
print(df)

path_to_excel_file = './output/sandbox.xlsx'
df.to_excel(path_to_excel_file, sheet_name='Sheet1', index=False)


print("End")
# End of file