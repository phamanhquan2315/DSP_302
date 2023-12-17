import mysql.connector
import pandas as pd

# Create connection
conn = mysql.connector.connect(user = 'root',password = '123456', host= 'localhost',db='hr')

# Query
df=pd.read_sql_query("SELECT * FROM EMPLOYEES ",conn)
print(df)
# RUN

