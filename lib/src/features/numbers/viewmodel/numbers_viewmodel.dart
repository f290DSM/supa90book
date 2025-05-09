import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'numbers_viewmodel.g.dart';

@Riverpod(keepAlive: true)
class NumbersViewmodel extends _$NumbersViewmodel {
  @override
  List<int> build() {
    return [];
  }

  void add(int number) {
    if (state.contains(number)) {
      return;
    }
    state = [...state, number];
  }

  void remove(int number) {
    state = state.where((n) => n != number).toList();
  }
}
