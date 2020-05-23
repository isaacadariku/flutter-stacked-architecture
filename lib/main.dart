import 'package:flutter/material.dart';
import 'package:stacked_services/stacked_services.dart';
import 'app/locator.dart';
import 'app/router.gr.dart';
import 'ui/views/partial_build/partial_builds_view.dart';
import 'ui/views/reactive_example/reactive_example_view.dart';
// import 'ui/views/home/home_view.dart';

void main() {
  setupLocator();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
    
   
    home: ReactiveExampleView(),
    // initialRoute: Routes.startupViewRoute,
      onGenerateRoute: Router().onGenerateRoute,
 navigatorKey: locator<NavigationService>().navigatorKey,
    );
  }
}
