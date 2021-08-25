import 'package:http/http.dart' as http;
import 'dart:convert';

const apiKey = '223a753601dd11417c5f2c5a3eea2d53';

class NetworkHelper {
  NetworkHelper(this.url);

  final String url;

  Future getData() async {
    http.Response response = await http.get(url);

    if (response.statusCode == 200) {
      String data = response.body;
      return jsonDecode(data);
    } else {
      print(response.statusCode);
    }
  }
}
