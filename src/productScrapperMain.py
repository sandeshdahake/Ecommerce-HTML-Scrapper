import product_json
import re
from pprint import pprint
from furl import furl
from pathlib import Path
import shutil
# load the product jason and form a dictionary
categoryList = product_json.read_json_file("../data/category.json")
#categoryList = product_json.read_json_file("../data/dummy.json")
for category in categoryList:
    category_id = category["id"]
    category_label = category["category"]
    category_name=re.sub('\W+', '', category["category"].replace(" ", "_"))
    array = {'category_name':category_name,'category_id' :1, 'category_label': category_label}
    file_path = "../data/"+category_name+'.json'
    dest_path = "../data/processed/"+category_name+'.json'
    source_file = Path(file_path)
    dest_file = Path(dest_path)
    if source_file.is_file():
       print("loading file...." + file_path)
       product_json.remove_null_values(file_path)
       productRawData = product_json.read_json_file(file_path);
       sub_cat_id = product_json.save_sub_category(array)
       print("saved subcategory ..",category_name,"  subcategory..",sub_cat_id)
    #   Loop the dictionary to traverse each product
       for product in productRawData:
           product_json._save_product_info(product, sub_cat_id, category_name)
        # for store, rating in product['reviews'].items():
        #     print(store, "-->", rating)
    #product_json._copy_metadata(sub_cat_id)
       shutil.move(file_path,dest_path)
    else:
        print("File not found" , file_path)
