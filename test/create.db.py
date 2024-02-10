import mysql.connector #pacage import korlam

mydbconnection=mysql.connector.connect(#connection nilam
    host="localhost",
    user="root",
    passwd="password"
)
print(mydbconnection) #conncetion thik ache kinah seh joono vnv namer aktah virtual invironment a setah print koreh deklam
db_name="python_test_db" #jeh name database create korteh chai seh name tah dilam
mycursor=mydbconnection.cursor() #aktah  cursor nilam ,karon cursor die shob kaj korteh hoi
sqlquery="CREATE DATABASE "+db_name
mycursor.execute(sqlquery)