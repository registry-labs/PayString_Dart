import 'package:flutter_test/flutter_test.dart';
import 'package:paystring/paystring.dart';
void main() {
  test('adds one to input values', () {
    PayString().fetchAddresses("jon\$spaceturtle.app", "payid", "mainnet");
  });
}
