import 'dart:async';

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:unilago_prototype/shared/loading.dart';

class Microphone extends StatefulWidget {
  Microphone({Key key}) : super(key: key);

  @override
  _MicrophoneState createState() => _MicrophoneState();
}

class _MicrophoneState extends State<Microphone> {
  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    bool loading = false;

    return loading 
    ? Loading()
    : Container(
      height: screenSize.height,
      width: screenSize.width,
      //Use theme defined in the main.dart to get the colors
      color: Colors.white,
      child: Column(
        children: <Widget>[
          SizedBox(
            height: screenSize.height * 0.20,
          ),
          Center(
            child: Text("Dinos lo que buscas ... ",
                style: Theme.of(context)
                    .textTheme
                    .headline
                    .copyWith(color: Theme.of(context).primaryColor)),
          ),
          Expanded(
            child: Container(
              // color: Colors.grey,
              height: screenSize.height * 0.2,
              width: screenSize.width * 0.3,
              child: FlatButton(
                autofocus: true,
                shape: CircleBorder(),
                color: Theme.of(context).buttonColor,
                child: Icon(
                  Icons.mic,
                  color: Theme.of(context).accentColor,
                  size: screenSize.width * 0.18,
                ),
                onPressed: () {
                    Navigator.of(context).pushNamed('/recomendation');         
                },
              ),
            ),
          )
        ],
      ),
    );
  }
}
