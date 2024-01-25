import 'package:isar/isar.dart';
import 'package:path_provider/path_provider.dart';
import 'package:tasksheet_databases/drone.dart';

class Database {
  static late Isar isar;

  Future<void> initDatabase() async {
    final dir = await getApplicationDocumentsDirectory();
    isar = await Isar.open(
      [DroneSchema],
      directory: dir.path,
    );
  }

  readById(Id id) {}
  readByQuery(String query) {}
  create() {}
  update() {}
  delete(Id id) {}
}
