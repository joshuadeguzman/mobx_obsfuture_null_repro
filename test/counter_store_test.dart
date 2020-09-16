import 'package:flutter_test/flutter_test.dart';
import 'package:mobx_obsfuture_null_repro/counter_repository.dart';
import 'package:mobx_obsfuture_null_repro/counter_store.dart';
import 'package:mockito/mockito.dart';

class MockCounterRepository extends Mock implements ICounterRepository {}

void main() {
  MockCounterRepository mockCounterRepository;
  CounterStore store;

  setUp(() {
    mockCounterRepository = MockCounterRepository();
    store = CounterStore(mockCounterRepository);
  });

  test("", () async {
    /// Arrange
    when(
      mockCounterRepository.increment(
        0,
      ),
    ).thenAnswer(
      (_) async => 1,
    );

    /// Act
    await store.increment();

    /// Assert
    expect(store.counter, 1);
  });
}
