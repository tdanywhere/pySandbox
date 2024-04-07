import pandas as pd
import yaml

from ConnectDb import OracleDB

print("Start")

# Load database connection info from YAML file
with open('db_connection.yaml', 'r') as file:
    db_config = yaml.safe_load(file)

# print("db_config: ", db_config['user'], db_config['password'], db_config['dsn'])

# Database connection string
db = OracleDB(username=db_config['user'], password=db_config['password'], dsn=db_config['dsn'])
connection = db.getConnection()

# Query the sandbox table
query = "SELECT * FROM sandbox.sandbox"
# print(query)

df = pd.read_sql(query, con=connection)

# Display the result in a table
print(df)

# Close the connection
db.disconnect()