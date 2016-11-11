import product_json
from pprint import pprint
from furl import furl
# load the product jason and form a dictionary
productRawData = product_json.read_json_file("../data/product");


#   sub_cat_id = product_json.save_sub_category()
#   print("----------------------->",sub_cat_id)
#   Loop the dictionary to traverse each product

for product in productRawData:
    print("product name -" + product['name'].replace(" Price",""))
    stores = product['stores']
    product_store_dict ={}
    for store,storeDetails in stores.items():
        key= store.replace("Amazon.in","amazon");
        value=storeDetails['url']
        f = furl(value)
        pid=value
        if key.lower()=="amazon" or key.lower() == "snapdeal":
            pid= f.path.segments[2]
        elif key.lower() == "flipkart":
            pid= f.args['pid']

        print("pathXXXXXXX",pid)
        product_store_dict[key] = value
#        print(store.replace(), "-->",storeDetails['url'].replace("&affid=compareraj","").replace("&tag=comparerajaco-21","")
#            .replace("&aff_id=3770&aff_sub=cmraja",""))
    print("ratings----------------------------------------")
    for store, rating in product['reviews'].items():
        print(store, "-->", rating)
    product_detail = product['productDetails'];
    for category, sub_category in product_detail.items():
        for key,value in sub_category.items():
            print('(',category,')',key,':',value)
    for image in product['images']:
        print( "image -->", image)

