import 'package:flutter/material.dart';
import 'package:unilago_prototype/routes.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primaryColor: Color(0xff4D0084),
        accentColor: Color(0xff852EAD),
        buttonColor: Color(0xff7ACEEF),
        cardColor: Color(0xffFFE5E5),
        iconTheme: IconThemeData(
          color: Colors.white,
        ),
        appBarTheme: AppBarTheme(
          elevation: 5.0,
          color: Color(0xff4D0084),
        ),
        fontFamily: 'Muli',
      ),
      initialRoute: '/',
      onGenerateRoute: Routes.generateRoute,
    );
  }
}
