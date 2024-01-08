import 'dart:async';
import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:threat_awareness/domain/connectivity/i_connectivity_service.dart';
import 'package:threat_awareness/injection.dart';

part 'connectivity_state.dart';
part 'connectivity_cubit.freezed.dart';

@lazySingleton
class ConnectivityCubit extends Cubit<ConnectivityState> {
  late StreamSubscription? _connectivitySubscription;
  late final IConnectivityService _connectivityService;

  ConnectivityCubit() : super(ConnectivityState.empty()) {
    _connectivityService = getIt<IConnectivityService>();

    _connectivitySubscription = _connectivityService.connectivityStateChanges
        .listen(_listenConnectivityStateChangesStream);
  }

  @override
  Future<void> close() async {
    await _connectivitySubscription?.cancel();
    super.close();
  }

  Future<void> _listenConnectivityStateChangesStream(
      ConnectivityResult connectivityResult) async {
    if (connectivityResult == ConnectivityResult.mobile ||
        connectivityResult == ConnectivityResult.wifi) {
      emit(state.copyWith(isUserConnectedToTheInternet: true));
    } else {
      emit(state.copyWith(isUserConnectedToTheInternet: false));
    }
  }
}
