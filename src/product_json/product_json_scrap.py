import json;

# read product json file


def read_json_file(file_name):
    file_data = open(file_name)
    json_dict = json.load(file_data)
    file_data.close()
    return json_dict



def remove_null_values(file_path):
    with open(file_path, 'r+') as file:
        content = file.read()
        file.seek(0)
        content.replace('null', '0')
        file.write(content)