import 'package:fit/controllers/db_controller.dart';
import 'package:fit/view/daily_calories_page.dart';
import 'package:fit/view/my_calorie_maintance_page.dart';
import 'package:fit/view/my_products_page.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await DbController.instance.open();
  runApp(App());
}

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: '/',
      routes: {
        '/': (BuildContext context) => MyCalorieMaintencePage(),
        '/daily_calories_page': (BuildContext context) => DailyCaloriesPage(),
        'my_products': (BuildContext context) => MyProductsPage(),
      },
    );
  }
}
