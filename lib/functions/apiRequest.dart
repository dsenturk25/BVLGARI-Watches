import 'dart:convert';

import 'package:http/http.dart' as http;

Future request(url, type, body) async {
  try {
    if (type == "post") {
      var response = await http.post(Uri.parse(url), body: body);
      return json.decode(response.body);
    } else if (type == "get") {
      var response = await http.get(Uri.parse(url));
      return json.decode(response.body);
    }
  } catch (e) {
    return null;
  }
  return null;
}
