import 'package:cidi_example_app/counter.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('Test start, increment, decrement', () {
    test('Value should start at 0', () {
      expect(Counter().value, 0);
    });

    test('El contador debe aumentar', () {
      final counter = Counter();

      counter.increment();

      expect(counter.value, 1);
    });

    test('value should be decremented', () {
      final counter = Counter();

      counter.decrement();

      expect(counter.value, -1);
    });
  });
}
