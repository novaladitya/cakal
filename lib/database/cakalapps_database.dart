import 'package:sqflite/sqflite.dart';
import 'package:path/path.dart';

class CakalAppsDatabase {
  static final CakalAppsDatabase instance = CakalAppsDatabase._init();
  static Database _database;
  CakalAppsDatabase._init();

  final tables = [];

  Future<Database> get database async {
    if (_database != null) return _database;

    _database = await _initDB('cakalapps.db');
    return _database;
  }

  Future<Database> _initDB(String filePath) async {
    final dbPath = await getDatabasesPath();
    final path = join(dbPath, filePath);

    return await openDatabase(path, version: 1, onCreate: _createDB);
  }

  Future _createDB(Database db, int version) async {
    tables.forEach((table) async {
      await db.execute(table).then((value) {
        print("Success");
      }).catchError((err) {
        print("Error: ${err.toString()}");
      });
    });
    print('Table Created');
  }
}
