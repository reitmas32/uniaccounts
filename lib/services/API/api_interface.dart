import 'package:uniaccounts/models/user.dart';

abstract class ApiInterface {
  AccountAPI get accounts;
  //ComputerLabAPI get computerLab;
  // Otras secciones de la API

  Future<void> initialize(); // Método para inicializar la conexión
}

abstract class AccountAPI {
  Future<bool> signUp(User user);
}
