import 'package:get_storage/get_storage.dart';

class GetStorageHelper {
  static final _storage = GetStorage();

  static Future<void> writeData(String key, dynamic value) async {
    await _storage.write(key, value);
  }

  static dynamic readData(String key) {
    return _storage.read(key);
  }

  static Future<void> deleteData(String key) async {
    await _storage.remove(key);
  }

  static Future<void> clearAllData() async {
    await _storage.erase();
  }
}
