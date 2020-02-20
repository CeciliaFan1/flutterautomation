    import 'package:flutter_driver/flutter_driver.dart';
  class Homepage{

        final counterTextFinder = find.byValueKey('counterText');
        final buttonFinder = find.byTooltip('Increment');


         FlutterDriver _driver;

         Homepage(FlutterDriver driver){
           this._driver=driver;
         }

         Future<String> getcountvalue() async{
            return await _driver.getText(counterTextFinder);

         }


  }
  


