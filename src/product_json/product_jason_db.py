import mysql.connector
from mysql.connector import errorcode
import product_json


add_sub_category = ("INSERT INTO compare2test.productsubcategories"
                " (CategoryId, Name, Label, MetadataFile, CompareMetadataFile) VALUES"
                " (%(category_id)s, %(category_name)s, %(category_label)s,'sa','sas' )")

get_sub_category_by_name = ("SELECT id from compare2test.productsubcategories where Name= %(category_name)s");


def _get_connection_():
    config = {
        'user': 'root',
        'password': '',
        'host': 'localhost',
        'database': 'compare2test',
        'raise_on_warnings': True,
    }
    cnx = mysql.connector.connect(**config)
    return cnx


def save_sub_category():
    config_cat = product_json.read_json_file("../data/config.json")
    sub_category_id=0
    try:
        cnx = _get_connection_();
        cursor = cnx.cursor()
        cursor.execute(get_sub_category_by_name, config_cat)
        sub_category_id = cursor.fetchone()[0]
        if sub_category_id is None:
            cursor.execute(add_sub_category,config_cat)
            sub_category_id = cursor.lastrowid
            cnx.commit()
    except mysql.connector.Error as err:
        cnx.rollback()
        if err.errno == errorcode.ER_TABLE_EXISTS_ERROR:
            print("already exists.")
        elif err.errno == errorcode.ER_ACCESS_DENIED_ERROR:
            print("Something is wrong with your user name or password")
        elif err.errno == errorcode.ER_BAD_DB_ERROR:
            print("Database does not exist")
        else:
            print(err)
    else:
        cursor.close()
        cnx.close()
    return sub_category_id



