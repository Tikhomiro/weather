import csv

class DicToCsv:

    def dict_to_csv(self, output_file_path, data):
        try:
            with open(output_file_path, 'w', newline='') as f:
                names = data[0].keys()
                writer = csv.DictWriter(f, fieldnames=names)

                writer.writeheader()
                writer.writerows(data)
        except TypeError:
            print(TypeError)
