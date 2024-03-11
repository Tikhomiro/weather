import json

class JsonToDict:

    def json_to_dict(self, input_file_path):
        try:
            with open(input_file_path) as file:
                dictionary = json.load(file)
                return dictionary
        except FileNotFoundError:
            print("В директории нет файла или он пуст")