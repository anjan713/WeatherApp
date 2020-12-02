// TODO 1: Write a main() method to execute your tests
// TODO 2: Create a group with the name of the class

// TODO 3.1: Write a test that the TimeHelper should return Morning
// TODO 3.2: Write a test that the TimeHelper should return Afternoon
// TODO 3.3: Write a test that the TimeHelper should return Evening
// TODO 3.4: Write a test that the TimeHelper should return Night

import 'package:flutter_test/flutter_test.dart';
import 'package:timeimage/util/time_helper.dart';
// import '/';

main() {
  group('timeHelper', () {
    test('should return Night', () {
      //arrange
      DateTime night = DateTime(12, 12, 12, 5);
      //act
      var actual = TimeHelper.getTimeOfTheDay(night);
      //assert
      expect(actual, 'Night');
    });
    test('should return Afternoon', () {
      //arrange
      DateTime after = DateTime(12, 12, 12, 15);
      //act
      var actual = TimeHelper.getTimeOfTheDay(after);
      //assert
      expect(actual, 'Afternoon');
    });
    test('should return Morning', () {
      //arrange
      DateTime early = DateTime(12, 12, 12, 11);
      //act
      var actual = TimeHelper.getTimeOfTheDay(early);
      //assert
      expect(actual, 'Morning');
    });
    
  });
}
