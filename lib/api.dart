import 'dart:convert';

import 'package:flutter/cupertino.dart';
import 'package:http/http.dart' as http;

class Api {
  final String baseUrl = 'https://reqres.in';
  getData() async {
    final http.Response res = await http.get(
      Uri.parse('$baseUrl/api/users/'),
    );
    debugPrint(res.statusCode.toString());
    debugPrint(jsonDecode(res.body)["data"].toString());
  }
}
