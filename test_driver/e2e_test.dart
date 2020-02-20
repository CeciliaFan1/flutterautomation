// Imports the Flutter Driver API.
import 'dart:io';

import 'package:flutter_driver/flutter_driver.dart';
import 'package:test/test.dart';



void main() {
  group('Counter App', () {
    // First, define the Finders and use them to locate widgets from the
    // test suite. Note: the Strings provided to the `byValueKey` method must
    // be the same as the Strings we used for the Keys in step 1.
    final counterTextFinder = find.byValueKey('counterText');
    final buttonFinder = find.byTooltip('Increment');
    FlutterDriver driver;

    // Connect to the Flutter driver before running any tests.
    setUpAll(() async {
      driver = await FlutterDriver.connect();
    });

    // Close the connection to the driver after the tests have completed.
    tearDownAll(() async {
      if (driver != null) {
        driver.close();
      }
    });

    test('starts at 0', () async {
      // Use the `driver.getText` method to verify the counter starts at 0.
      sleep(Duration(seconds: 3));
      expect(await driver.getText(counterTextFinder), "0");
      print(counterTextFinder);
      sleep(Duration(seconds: 3));
      print(counterTextFinder);
    });

    test('increments the counter', () async {
      // First, tap the button.
      //sleep(Duration(seconds: 3));

       try {
                print("Debug");
               await driver.tap(buttonFinder);
               sleep(Duration(seconds:3));
               print("tap");
            } catch(e) {
                print("Error!");
            }
      sleep(Duration(seconds: 3));
      
      
      // Then, verify the counter text is incremented by 1.
      sleep(Duration(seconds: 3));
      expect(await driver.getText(counterTextFinder), "1");
      sleep(Duration(seconds: 3));
      print(counterTextFinder);
    });

  });
}