import 'dart:async';

import 'package:data/data.dart';
import 'package:dependencies/dependencies.dart';

import 'index.dart';

abstract class RefreshableCubit<S> extends Cubit<S> {
  RefreshableCubit(super.initialState) {
    setup();
  }

  StreamSubscription? _refreshSubscription;

  void initRefresh({
    required String refreshKey,
    required VoidCallback onRefresh,
  }) {
    _refreshSubscription?.cancel();
    _refreshSubscription = getIt<RefreshManager>()
        .refreshStream
        .where((key) => key == refreshKey)
        .listen((_) => onRefresh());
  }

  @override
  Future<void> close() async {
    await _refreshSubscription?.cancel();
    return super.close();
  }

  // call initRefresh in this method when implementing
  void setup(); // force subclass to implement setup
}
