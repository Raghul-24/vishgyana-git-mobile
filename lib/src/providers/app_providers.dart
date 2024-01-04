import 'package:flutter/material.dart';
import 'package:git_mobile/src/services/connectivity_service_provider.dart/data_connection_checker.dart';

enum ConnectionStatus { connected, disconnected }

class AppProvider with ChangeNotifier {
  late DataConnectionChecker _dataConnectionChecker;
  late bool _isConnected;
  internetConnectionProvider() {
    _dataConnectionChecker = DataConnectionChecker();
    _isConnected = true;

    _dataConnectionChecker.onStatusChange.listen((status) {
      _isConnected = status == DataConnectionStatus.connected;
      notifyListeners();
    });
  }

  bool get isConnected => _isConnected;
}
