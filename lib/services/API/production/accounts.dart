import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:uniaccounts/models/user.dart';
import 'package:uniaccounts/services/API/api_interface.dart';
import 'package:uniaccounts/services/API/production/base.dart' as BASE;

class ProductionAccountAPI implements AccountAPI {
  @override
  Future<bool> signUp(User user) async {
    var url = Uri.parse('${BASE.URL_API}/api/v1/signup');
    var body = jsonEncode(user.toJson());
    var response = await http.post(url, body: body);
    if (response.statusCode == 200) {
      // La petición fue exitosa, extraer los datos del cuerpo de la respuesta
      var responseData = jsonDecode(response.body);

      // Acceder a los datos específicos dentro del objeto responseData
      var success = responseData['Success'];

      return Future(() => success);
    }
    return Future(() => false);
  }
}
