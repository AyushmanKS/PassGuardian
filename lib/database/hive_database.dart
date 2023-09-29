import 'package:hive_flutter/adapters.dart';

class HiveDatabse {
  // reference our box
  final myBox = Hive.box('myBox');

  // write data
  writeData(String key, String value) async {
    myBox.put(key, value);
    print('writing data completed.......key: $key and value: $value');
  }

  // read data
  readData(String key) async {
    myBox.get(key);
    print('reading data completed.............');
    print(
        'Stored in $key.............${myBox.get(key)}....${myBox.get(key).toString().length}');
  }

  // delete data
  deleteData(String key) async {
    myBox.delete(key);
    print('deleted....${myBox.get(key)}');
  }
}
