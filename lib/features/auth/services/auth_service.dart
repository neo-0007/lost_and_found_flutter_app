import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:lost_and_found_flutter_app/configs/api_constants.dart';
import 'package:lost_and_found_flutter_app/features/auth/models/usermodel.dart';
import 'package:shared_preferences/shared_preferences.dart';

class AuthService {  
  Future<String> registerNew(UserModel user) async {
    final response = await http.post(
      Uri.parse(ApiConstants.signupUrl),
      body: jsonEncode({
        'firstName': user.firstName,
        'lastName': user.lastName,
        'email': user.email,
        'password': user.password,
      }),
      headers: {'Content-type': 'application/json'},
    );
    if (response.statusCode == 201) {
      return response.body;
    } else {
      throw Exception('Failed to SignUp');
    }
  }

  Future<Map<String, dynamic>> loginUser(String email, String password) async {

    final response = await http.post(
      Uri.parse(ApiConstants.signinUrl),
      headers: {'Content-type': 'application/json'},
      body: jsonEncode(
        {'email': email, 'password': password},
      ),
    );
    
    if (response.statusCode == 200) {
      return jsonDecode(response.body);
    }else{
      throw Exception('Failed to Signin');      
    }
  }

  Future<void> storeToken(String token) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    await prefs.setString('token', token);
  }

  Future<String?> getToken() async {
  SharedPreferences prefs = await SharedPreferences.getInstance();
  return prefs.getString('token');
}

Future<void> clearToken() async {
  SharedPreferences prefs = await SharedPreferences.getInstance();
  await prefs.remove('token');
}
  }

