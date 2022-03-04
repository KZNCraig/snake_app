import 'package:sqflite/sqflite.dart';
import 'package:path/path.dart';
import 'database_taxon_classes.dart';
//'assets/database-taxa/taxon.db',


class DatabaseHandler {
  Future<Database> initializeDB() async {
    String path = await getDatabasesPath();
    return openDatabase('assets/database-taxa/taxon.db',
      onCreate: (database, version) async {
        await database.execute(
          //"CREATE TABLE users(id INTEGER PRIMARY KEY AUTOINCREMENT, name TEXT NOT NULL,age INTEGER NOT NULL, country TEXT NOT NULL, email TEXT)",
            "CREATE TABLE species (id INTEGER PRIMARY KEY AUTOINCREMENT,commonName TEXT NOT NULL,latinName TEXT NOT NULL,swaziName TEXT,distribution TEXT NOT NULL,danger TEXT NOT NULL,habits TEXT NOT NULL,description TEXT NOT NULL,behaviour TEXT NOT NULL,firstAid TEXT,biteSymptoms BLOB,media TEXT)",
        );
      },
      version: 1,
    );
  }

  Future<int> insertUser(List<Species> species) async {
    int result = 0;
    final Database db = await initializeDB();
    for(var taxon in species){
      result = await db.insert('species', taxon.toMap());
    }
    return result;
  }

  Future<List<Species>> retrieveUsers() async {
    final Database db = await initializeDB();
    final List<Map<String, Object?>> queryResult = await db.query('species');
    return queryResult.map((e) => Species.fromMap(e)).toList();
  }

  Future<void> deleteUser(int id) async {
    final db = await initializeDB();
    await db.delete(
      'species',
      where: "id = ?",
      whereArgs: [id],
    );
  }


}