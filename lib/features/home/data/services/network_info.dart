import 'dart:io';

import 'package:internet_connection_checker/internet_connection_checker.dart';

abstract class NetworkInfo {
  Future<bool> hasInternet();
  Stream<InternetConnectionStatus> connectionChanged();
}

class NetworkInfoImpl implements NetworkInfo {
  @override
  Future<bool> hasInternet() async {
    try {
      final results = await InternetConnectionChecker().hasConnection;
      return results;
    } on SocketException catch (_) {
      return false;
    }
  }

  @override
  Stream<InternetConnectionStatus> connectionChanged() {
    return InternetConnectionChecker().onStatusChange;
    //  InternetConnectionChecker().onStatusChange.listen((status) {
    //   switch (status) {
    //     case InternetConnectionStatus.connected:
    //       print('Data connection is available.');
    //       break;
    //     case InternetConnectionStatus.disconnected:
    //       print('You are disconnected from the internet.');
    //       break;
    //   }
    // });
  }
}
