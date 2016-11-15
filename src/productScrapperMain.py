import product_json
from pprint import pprint
from furl import furl
# load the product jason and form a dictionary
productRawData = product_json.read_json_file("../data/compareraja_tv_final.json");
sub_cat_id = product_json.save_sub_category()
#   print("----------------------->",sub_cat_id)
#   Loop the dictionary to traverse each product

for product in productRawData:
    product_json._save_product_info(product, sub_cat_id)
#     for store, rating in product['reviews'].items():
#         print(store, "-->", rating)
<<<<<<< HEAD

#product_json._copy_metadata(sub_cat_id)
=======
>>>>>>> af17358d10367149d54bc6104ec478056425e459
