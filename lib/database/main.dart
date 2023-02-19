import 'dart:convert';
import 'dart:io';
import 'package:http/http.dart' as http;
import 'package:async/async.dart';
import 'package:flutter/material.dart';
void main() async {
  await testConnection();
}
String host = "http://localhost/android_ors_chat/";
Future<void> testConnection() async {
  http.get(Uri.parse('${host}users/createUser.php?username=Ori&password=1234qwer')).then((value){
    debugPrint(value.body);
  });
  debugPrint("Testing Connection...");
}
Future<bool> userExists() async {
  bool result = false;
  await http.get(Uri.parse('${host}users/userExists.php?username=Ori')).then((value){
    if(value.body == "1"){
      result = true;
    }
    else {
      result = false;
    }
  });
  return result;
}