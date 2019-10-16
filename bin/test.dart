import 'package:test/test.dart';

import 'main.dart';


main(){
  test('count posotive sum negative', (){
    expect(countPosSumNeg([1, 2, 3, 4, 5, 6, 7, 8, 9, 10, -11, -12, -13, -14, -15]), [10, -65]);
  });

  test('Digit distance', (){
    expect(digitDistance(234,489), 12);
  });
}