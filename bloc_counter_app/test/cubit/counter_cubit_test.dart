import 'package:bloc_counter_app/cubit/counter_cubit.dart';
import 'package:bloc_test/bloc_test.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group(CounterCubit, () {
    CounterCubit? counterCubit;
    setUp(() {
      counterCubit = CounterCubit();
    });
    tearDown(() {
      counterCubit!.close();
    });

    test(
        'The initial State for the CounterCubit is CounterState(counterValue: 0)',
        () {
      expect(counterCubit!.state,
          CounterState(counterValue: 0, wasIncremented: false));
    });
  });
}
