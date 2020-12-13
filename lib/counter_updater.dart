import 'package:hooks_riverpod/hooks_riverpod.dart';

import 'counter_model.dart';

final counterUpdateProvider = StateNotifierProvider<CounterUpdater>((ref) {
  return CounterUpdater();
});

class CounterUpdater extends StateNotifier<CounterModel> {
  CounterUpdater([CounterModel model]) : super(model ?? CounterModel.init());

  void increment() {
    state = state.copyWith(count: state.count + 1);
  }
}
