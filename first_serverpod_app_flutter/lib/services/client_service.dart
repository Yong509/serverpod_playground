import 'package:first_serverpod_app_client/first_serverpod_app_client.dart';
import 'package:serverpod_flutter/serverpod_flutter.dart';

class ClientService {
  ClientService._internal();
  static final ClientService _instance = ClientService._internal();
  factory ClientService() => _instance;

  Client client = Client('http://localhost:8080/')
    ..connectivityMonitor = FlutterConnectivityMonitor();
}
