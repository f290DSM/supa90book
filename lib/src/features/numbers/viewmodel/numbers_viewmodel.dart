import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'numbers_viewmodel.g.dart';

@riverpod
class NumbersViewmodel extends _$NumbersViewmodel {
  @override
  List<int> build() {
    return [42, 51, 27];
  }

  void add(int number) {
    state = [...state, number];
  }
}
