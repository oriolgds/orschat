import 'package:flutter/cupertino.dart';
import 'package:sqflite/sqflite.dart';
Future<bool> databaseExists(String path) async => await databaseFactory.databaseExists(path);
void main() async {
  bool result = await databaseExists('contacts.db');
  debugPrint(result.toString());
}