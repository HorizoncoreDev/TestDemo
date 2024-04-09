
import 'package:flutter_test/flutter_test.dart';
import 'package:untitled1/main.dart';

void main() {
  test('String should be reversed', (){
    String initial = "Hello";
    String reversed = reverseString(initial);
    expect(reversed, 'olleH');
  });
}