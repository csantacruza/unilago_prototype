import 'dart:async';

import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:flutter/material.dart';

class Loading extends StatelessWidget {
  const Loading({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.deepPurple[300],
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            SpinKitChasingDots(
              color: Theme.of(context).accentColor,
              size: 50.0,
            ),
            SizedBox(height:MediaQuery.of(context).size.height * 0.05,),
            Text(
              "Estamos buscando ...",
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontFamily: 'Muli',
                  fontSize: 18.0,
                  color: Theme.of(context).primaryColor),
            ),
          ],
        ),
      ),
    );
  }
}
