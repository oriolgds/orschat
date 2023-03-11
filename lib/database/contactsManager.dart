import 'package:shared_preferences/shared_preferences.dart';
class Contact {
  final String name;
  final String username;
  final String pathPhoto;
  const Contact({
    required this.name,
    required this.username,
    required this.pathPhoto
  });
  Map<String, Map<String, dynamic>> toMap() {
    return {
      name: {
        'username': username,
        'photo': pathPhoto
      }
    };
  }
}
Future<String> getContacts() async {
  final prefs = await SharedPreferences.getInstance();
  if(prefs.getString('contacts') == null){
    return 'VOID';
  } else {
    return prefs.getString('contacts')!;
  }
}
Future<void> createContact() async {
  final prefs = await SharedPreferences.getInstance();

}