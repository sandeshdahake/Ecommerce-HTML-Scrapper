import product_json
from pprint import pprint

# load the product jason and form a dictionary
productRawData = product_json.read_json_file("../data/product");

# Loop the dictionary to traverse each product
for product in productRawData:
    print("product name -" + product['name'])
    stores = product['stores']
    store_dict = {}
    for store in stores:
        store_attributes = (store.split(","))
        store_dict[store_attributes[3]] = store_attributes[0]
    print("Store Dict -->",store_dict)
    print("images-->",product['images'])
    product_detail = product['productDetails'];
    for category, sub_category in product_detail.items():
        for key,value in sub_category.items():
            print('(',category,')',key,':',value)


