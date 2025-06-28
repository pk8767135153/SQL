# Create table inside database using python
import psycopg2

# for below statement getting our featchall() data in dict format
import psycopg2.extras

hostname = 'localhost'
database = 'classes_database'
username = 'postgres'
port_id = 5432
# Enter the Password first
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
    
    # create Cursor() for manipulation data 
    # cur = conn.cursor()

    # for dictonary
    cur = conn.cursor(cursor_factory=psycopg2.extras.DictCursor)

    # drop the table beacuse we want to run this code multiple time so due to sql primary key feature so I got error firstly we drop the table
    # drop the table
    cur.execute('drop table if exists class_01')

    # sql script will here
    create_table_script ='''
    create table if not exists class_01(
            id  int primary key,
            name varchar(40) not null,
            math_mark int not null,
            english_mark int not null,
            science_mark int not null,
            total_marks int
        )
    '''
    # run sql command only don't change make perment
    cur.execute(create_table_script)

    # insert script
    insert_script = 'insert into class_01(id, name, math_mark, english_mark, science_mark, total_marks) values(%s, %s, %s, %s, %s, %s)'

    # insert single recourd
    insert_value = (11, 'Suraj Patil', 89, 98,59,89+98+59)

    # execute single recourd query
    cur.execute(insert_script,insert_value)

    multiple_value = [
        (12, 'Rameshawar Patil', 89, 98, 99, 286),
        (13, 'Jay Patil', 89, 98, 99, 286),
        (14, 'Soham Pawar', 89, 98, 99, 286),
        (15, 'Priyanka Patil', 89, 98, 99, 286),
        (16, 'Vabhavi Pawar', 89, 98, 99, 286)
    ]
    for record in multiple_value:
        cur.execute(insert_script,record)

    # Fetch the all data inside table by using fetchall(), fetchone() 
    cur.execute("select * from class_01")

    ''' if our cursor is created by this way :
        cur = conn.cursor()
        then below statement is true.

    # we can get the recourd in the form of list 
    # print(f"Get Only One Record : \n\n\t {cur.fetchone()} ")

    # we can get the recourd in the form of list 
    # print(f"\n\nGet All Record : \n\n\t {cur.fetchall()} ")

    # for record in cur.fetchall():
    #     print(f"Id : {record[0]} \t -> Name is {record[1]}")
    
    '''

    '''
        If we have multiple columns so its hard to featch specific colums so 
        we want to access the value by its columns name so we create cursor different way
        that is 
            step 1: import another model
                        -> import psycopg2.extras
            step 2 : Create cursor this way
                        -> cur = conn.cursor(cursor_factory=psycopg2.extras.DictCursor)

    '''
    # for record in cur.fetchall():
        # print(f"By Using Dictionary : --> Id : {record['id']} \t -> Name is {record['name']}")

    update_script = 'update class_01 set total_marks = 100'



    cur.execute(update_script)
    # print(cur.fetchall())

    # Delete record inside table
    delete_script = 'delete from class_01 where id = %s'
    delete_value = (11,)
    cur.execute(delete_script,delete_value)

    
    # print(cur.fetchall())

    # make the change perment inside database
    conn.commit()

except Exception as error:
    print("Error Occured. ")
    print(error)
finally:
    if cur is not None:
        # close the Cursor
        cur.close()
    if conn is not None:
        # close the Connection
        conn.close()