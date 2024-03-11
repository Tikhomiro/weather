from read_json import JsonToDict
from to_csv import DicToCsv

class Result:

    def download(self, input_file_path, output_file_path):
        try:
            _json = JsonToDict()
            _csv = DicToCsv()
            read_json = _json.json_to_dict(input_file_path)
            join_json_to_csv = _csv.dict_to_csv(output_file_path, read_json)
            return "good"
        except TypeError:
            print("Error")



if __name__ == '__main__':
    file_name_json = 'strage/data/example.json'
    file_name_csv = 'strage/out/example.csv'

    result = Result()
    print(result.download(file_name_json, file_name_csv))


