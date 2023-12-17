
import seaborn
import matplotlib
import mysql.connector
import pandas as pd

# Create connection
conn = mysql.connector.connect(user = 'root',password = '123456', host= 'localhost',db='hr')
country = ""
# Query
df=pd.read_sql_query("SELECT * FROM INTERNATIONAL_STUDENT_TEST_SCORES",conn)
print(df)
# RUN


