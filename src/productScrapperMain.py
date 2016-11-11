import product_json
from pprint import pprint
from furl import furl
# load the product jason and form a dictionary
productRawData = product_json.read_json_file("../data/product");
sub_cat_id = product_json.save_sub_category()
#   print("----------------------->",sub_cat_id)
#   Loop the dictionary to traverse each product

for product in productRawData:
    product_json._save_product_info(product, sub_cat_id)
#     for store, rating in product['reviews'].items():
#         print(store, "-->", rating)

