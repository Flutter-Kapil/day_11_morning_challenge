import 'package:test/test.dart';
import 'main.dart';
import 'main.dart';

void main() {
  test("test case 1", () {
    expect(incrementToTop([3, 10, 3]), 14);
    expect(incrementToTop([3, 3, 3]), 0);
  });
  test("test case 2", () {
    expect(count(["A", "A", "K", "Q", "Q", "J"]), -6);
    expect(count(["A", 5, 5, 2, 6, 2, 3, 8, 9, 7]), 5);
  });
}
