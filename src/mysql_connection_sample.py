import datetime

import mysql.connector
from mysql.connector import errorcode

config = {
  'user': 'root',
  'password': '',
  'host': 'localhost',
  'database': 'compare2test',
  'raise_on_warnings': True,
}


TABLES = {}
TABLES['test_employees'] = (
    "CREATE TABLE `employees` ("
    "  `emp_no` int(11) NOT NULL AUTO_INCREMENT,"
    "  `birth_date` date NOT NULL,"
    "  `first_name` varchar(14) NOT NULL,"
    "  `last_name` varchar(16) NOT NULL,"
    "  `gender` enum('M','F') NOT NULL,"
    "  `hire_date` date NOT NULL,"
    "  PRIMARY KEY (`emp_no`)"
    ") ENGINE=InnoDB")
add_employee = ("INSERT INTO employees "
                "(first_name, last_name, hire_date, gender, birth_date) "
                "VALUES (%(first_name)s, %(last_name)s, %(hire_date)s, %(gender)s, %(birth_date)s)")

data_employee = {
  'first_name': 'sandesh',
  'last_name': 'dahake',
  'hire_date': datetime.date(1,1,1),
  'gender': 'm',
  'birth_date':datetime.date(1,1,1)
}
try:
  cnx = mysql.connector.connect(**config)
  cursor = cnx.cursor()
  for name, ddl in TABLES.items():
            print("Creating table {}: ".format(name), end='')
            cursor.execute(ddl)
            cursor.execute(add_employee,data_employee)
            emp_no = cursor.lastrowid
            print(emp_no)

except mysql.connector.Error as err:
    if err.errno == errorcode.ER_TABLE_EXISTS_ERROR:
        print("already exists.")
    elif err.errno == errorcode.ER_ACCESS_DENIED_ERROR:
        print("Something is wrong with your user name or password")
    elif err.errno == errorcode.ER_BAD_DB_ERROR:
        print("Database does not exist")
    else:
        print(err)
else:
    cnx.commit()
    cursor.close()
    cnx.close()