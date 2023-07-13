import 'package:uniaccounts/services/API/api_interface.dart';
import 'package:uniaccounts/services/API/production/accounts.dart';

class ProductionApi implements ApiInterface {
  late ProductionAccountAPI _accountsApi;

  @override
  Future<void> initialize() {
    _accountsApi = ProductionAccountAPI();

    return Future(() => true);
  }

  @override
  AccountAPI get accounts => _accountsApi;
}
