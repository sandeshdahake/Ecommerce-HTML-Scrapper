import product_json
from pprint import pprint
from furl import furl
# load the product jason and form a dictionary
data_config = product_json.read_json_file("../data/config.json")
for config in data_config:
    category_name = config['category_name']
    file_path = "../data/"+category_name+'.json'
    print("loading file...." + file_path)
    product_json.remove_null_values(file_path)
    productRawData = product_json.read_json_file(file_path);
    sub_cat_id = product_json.save_sub_category(config)
    print("saved subcategory ..",category_name,"  subcategory..",sub_cat_id)
    #   Loop the dictionary to traverse each product
    for product in productRawData:
        product_json._save_product_info(product, sub_cat_id, category_name)
        for store, rating in product['reviews'].items():
            print(store, "-->", rating)
    #product_json._copy_metadata(sub_cat_id)

