import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_test/flutter_test.dart';

void testBloc<B extends BlocBase<S>, S>(
  String descr, {

  /// Callback on bloc building
  required B Function() build,

  /// First state of bloc by default
  S? expectedInitialState,

  /// Callback on init events of bloc, if neccessary.
  Future<void> Function(B)? performInit,

  /// Queue of states, which must to be emitted in order
  List<S>? matchers,

  /// Callback on actions which must lead to state changes
  Future<void> Function(B)? act,

  /// Comparator to custom comparing of actual and expected states
  bool Function(S, S)? comparator,
}) {
  test(descr, () async {
    void _comparator(S s1, S s2) =>
        comparator != null ? expect(comparator(s1, s2), true) : expect(s1, s2);

    final bloc = build();

    if (expectedInitialState != null) {
      expect(bloc.state, expectedInitialState);
    }

    if (performInit != null) {
      await performInit(bloc);
    }

    if (matchers != null) {
      var i = 0;

      // Subscribe to bloc state stream and take [matcher.length] events
      bloc.stream.take(matchers.length).listen((state) {
        // compare every state with state from queue one by one
        _comparator(state, matchers[i++]);
      });


      // After subscribe init bloc actions to trigger new states
      if (act != null) {
        await act(bloc);
      }
    }
  });
}
