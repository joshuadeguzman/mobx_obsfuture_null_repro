import 'package:mobx/mobx.dart';
import 'package:mobx_obsfuture_null_repro/counter_repository.dart';

part 'counter_store.g.dart';

class CounterStore extends _CounterStore with _$CounterStore {
  CounterStore(ICounterRepository counterRepository) : super(counterRepository);
}

abstract class _CounterStore with Store {
  _CounterStore(this.counterRepository);

  final ICounterRepository counterRepository;

  @observable
  ObservableFuture<int> counterFuture;

  @observable
  int counter = 0;

  @action
  Future increment() async {
    counterFuture = ObservableFuture(
      counterRepository.increment(counter),
    );

    counter = await counterFuture;
  }
}
