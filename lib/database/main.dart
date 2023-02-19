import 'dart:convert';
import 'dart:io';
import 'package:http/http.dart' as http;
import 'package:async/async.dart';
import 'package:flutter/material.dart';
void main() async {
  await testConnection();
}
Future<bool> testConnection() async {
  var response = http.get(Uri.parse('https://jsonplaceholder.typicode.com/albums/1'));
  return false;
}