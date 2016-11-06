import json;

# read product json file


def read_json_file(file_name):
    file_data = open(file_name)
    json_dict = json.load(file_data)
    file_data.close()
    return json_dict



