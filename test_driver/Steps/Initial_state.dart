import 'package:flutter_gherkin/flutter_gherkin.dart';
import 'package:gherkin/gherkin.dart';
import '../page/home_page.dart';

class InitialStateOfApp extends GivenWithWorld<FlutterWorld> {
  InitialStateOfApp()
      : super(StepDefinitionConfiguration()..timeout = Duration(seconds: 10));

  @override
  Future<void> executeStep() async {
    //Instantiate homepage with world.driver as parameter for flutter driver object
    Homepage homePage = Homepage(world.driver);

    //expectMatch(await homePage.getCounterValue(), 1);
  }

  @override
  RegExp get pattern => RegExp(r"I test the initial state of the app");
}
