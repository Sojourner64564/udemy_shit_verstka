import 'package:internet_connection_checker/internet_connection_checker.dart';
import 'package:udemy_shit_verstka/core/network/network_info.dart';

class NetworkInfoImpl implements NetworkInfo{
  NetworkInfoImpl(this.internetConnectionChecker);

  final InternetConnectionChecker internetConnectionChecker;

  @override
  Future<bool> get isConnected => internetConnectionChecker.hasConnection;
}