import psycopg2

hostname = 'localhost'
database = 'classes_database'
username = 'postgres'
port_id = 5432
password = ''
conn = None
cur = None
try:
    # Create Connection
    conn = psycopg2.connect(
    host = hostname,
    dbname = database,
    user = username,
    password = password,
    port = port_id
    )

    print("Connect Is Working")
    # This connection close command written inside the try is not good way because some connection is not created that time we can run exception block of code similar we also not write this command inside the exception block due to we run exception if try block produces some error so we  write this statement inside the finally block
    
    # create Cursor() for manipulation data 
    cur = conn.cursor()
except Exception as error:
    print(error)
finally:
    if cur is not None:
        # close the Cursor
        cur.close()
    if conn is not None:
        # close the Connection
        conn.close()
        
# Cursor Notes End
# Cursor Know More.. IMP Read 
'''
    Cursor :
        1. The cursor is a special object used to interact with the database by executing SQL statements and retrieving result.

        2. A cursor acts as a control structure that enables you to:
            -> execute SQL queries
            -> Fetch Reuts from the database
            -> Manage the context of a fentext of a fetch operation

        3. Create the Cursor:
            cur = conn.cursor()

        4. Executing Queries:
            cur.execute("select * from table_name")

        5. Fetching Data:
            rows = cur.fetchall()  # Gets all results
            
            row = cur.fetchone()   # Gets one result
            
        4. Closing the Cursor
            cur.close()

'''

# Cursor notes end