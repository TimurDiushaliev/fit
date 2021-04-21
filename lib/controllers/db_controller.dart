import 'package:fit/models/product.dart';
import 'package:path/path.dart';
import 'package:sqflite/sqflite.dart';

class DbController {
  static DbController instance = DbController();

  Future<Database> database;

  Future<void> open() async {
    database = openDatabase(
      join(await getDatabasesPath(), 'products.db'),
      onCreate: (Database db, int version) {
        return db.execute(
            'CREATE TABLE Products(id INTEGER PRIMARY KEY, proteins REAL, fats REAL, carbs REAL)');
      },
      version: 1,
    );
  }

  Future<void> insert() async {
    final Database db = await database;
    db.insert('Products', Product.instance.toMap());
  }
}
