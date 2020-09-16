// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'counter_store.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$CounterStore on _CounterStore, Store {
  final _$counterFutureAtom = Atom(name: '_CounterStore.counterFuture');

  @override
  ObservableFuture<int> get counterFuture {
    _$counterFutureAtom.reportRead();
    return super.counterFuture;
  }

  @override
  set counterFuture(ObservableFuture<int> value) {
    _$counterFutureAtom.reportWrite(value, super.counterFuture, () {
      super.counterFuture = value;
    });
  }

  final _$counterAtom = Atom(name: '_CounterStore.counter');

  @override
  int get counter {
    _$counterAtom.reportRead();
    return super.counter;
  }

  @override
  set counter(int value) {
    _$counterAtom.reportWrite(value, super.counter, () {
      super.counter = value;
    });
  }

  final _$incrementAsyncAction = AsyncAction('_CounterStore.increment');

  @override
  Future<dynamic> increment() {
    return _$incrementAsyncAction.run(() => super.increment());
  }

  @override
  String toString() {
    return '''
counterFuture: ${counterFuture},
counter: ${counter}
    ''';
  }
}
