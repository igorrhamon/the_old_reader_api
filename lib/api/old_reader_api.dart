import 'package:http/http.dart' as http;
import 'dart:convert';
import 'models/user_info.dart';
import 'models/subscription.dart';
import 'models/item.dart';
import 'models/friend.dart';

class OldReaderApi {
  static const String baseUrl = 'https://theoldreader.com/reader/api/0';
  final String _authToken;
  final http.Client _client;

  OldReaderApi(this._authToken) : _client = http.Client();

  Map<String, String> get _headers => {
    'Authorization': 'GoogleLogin auth=$_authToken',
    'Content-Type': 'application/json',
  };

  Future<String> authenticate(String email, String password, String appName) async {
    final response = await _client.post(
      Uri.parse('$baseUrl/accounts/ClientLogin'),
      body: {
        'client': appName,
        'accountType': 'HOSTED_OR_GOOGLE',
        'service': 'reader',
        'Email': email,
        'Passwd': password,
      },
    );

    if (response.statusCode != 200) {
      throw Exception('Authentication failed');
    }

    final authResponse = response.body;
    final authToken = RegExp(r'Auth=(.*)').firstMatch(authResponse)?.group(1);
    
    if (authToken == null) {
      throw Exception('Invalid authentication response');
    }

    return authToken;
  }

  Future<UserInfo> getUserInfo() async {
    final response = await _client.get(
      Uri.parse('$baseUrl/user-info?output=json'),
      headers: _headers,
    );

    if (response.statusCode != 200) {
      throw Exception('Failed to get user info');
    }

    return UserInfo.fromJson(jsonDecode(response.body));
  }

  void dispose() {
    _client.close();
  }
}