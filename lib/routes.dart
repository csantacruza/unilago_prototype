import 'package:flutter/material.dart';
import 'package:unilago_prototype/models/item.dart';
import 'package:unilago_prototype/pages/micro.dart';
import 'package:unilago_prototype/pages/recomendation.dart';

import 'pages/ar.dart';
import 'pages/detail_recomendation.dart';

class Routes {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    final args = settings.arguments;
    switch (settings.name) {
      case '/':
        return MaterialPageRoute(builder: (_) => Microphone());
      
      case '/recomendation':
        if (args is Widget) {
          return MaterialPageRoute(
            builder: (_) => Recomendation(),
          );
        }
        return MaterialPageRoute(builder: (_) => Recomendation());
      
      case '/detail':
      if (args is Item){
        return MaterialPageRoute(builder: (_) => RecomendationDetailed(data: args));
      }
      return _errorRoute();

      case '/ar':
      if (args is String){
        return MaterialPageRoute(builder: (_) => AR(data: args));
      }
       return _errorRoute();

      default:
        return _errorRoute();
    }
  }

  static Route<dynamic> _errorRoute() {
    return MaterialPageRoute(builder: (_) {
      return Scaffold(
          appBar: AppBar(
            title: Text("Error"),
          ),
          body: Center(
              child: Text('ERROR Path',
                  style:
                      TextStyle(fontSize: 15.0, fontWeight: FontWeight.w500))));
    });
  }
}
