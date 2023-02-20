import 'dart:convert';
import 'dart:io';
import 'package:http/http.dart' as http;
import 'package:async/async.dart';
import 'package:flutter/material.dart';
void main() async {
  await testConnection();
}
String host = "http://localhost/android_ors_chat/";
Future<bool> testConnection() async {
  debugPrint("Testing connection...");
  bool result = false;
  await http.get(Uri.parse('${host}test.php')).then((value){
    if(value.statusCode == 200){
      result = true;
    }
  });
  return result;
}
Future<bool> userExists(String username) async {
  bool result = false;
  await http.get(Uri.parse('${host}users/userExists.php?username=$username')).then((value){
    if(value.body == "1"){
      result = true;
    }
  });
  return result;
}
Future<bool> createUser(String username) async {
  bool result = false;
  await http.get(Uri.parse('${host}users/createUser.php?username=$username')).then((value){
    if(value.body == "0" && value.statusCode == 200){
      result = true;
    }
  });
  return result;
}