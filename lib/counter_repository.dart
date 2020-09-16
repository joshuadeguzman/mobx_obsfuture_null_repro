abstract class ICounterRepository {
  Future<int> increment(int number);
}

class CounterRepository implements ICounterRepository {
  @override
  Future<int> increment(int number) {
    return Future<int>.value(number++);
  }
}
