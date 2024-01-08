import 'package:injectable/injectable.dart';
import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:threat_awareness/domain/connectivity/i_connectivity_service.dart';
import 'package:threat_awareness/injection.dart';

@LazySingleton(as: IConnectivityService)
class ConnectivityHandler implements IConnectivityService {
  final connectivity = getIt<Connectivity>();

  @override
  Stream<ConnectivityResult> get connectivityStateChanges {
    return connectivity.onConnectivityChanged.map(
      (connectivityResult) {
        if (connectivityResult == ConnectivityResult.mobile) {
          return ConnectivityResult.mobile;
        } else if (connectivityResult == ConnectivityResult.wifi) {
          return ConnectivityResult.wifi;
        } else {
          return ConnectivityResult.none;
        }
      },
    );
  }
}
