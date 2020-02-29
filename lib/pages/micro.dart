import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class Microphone extends StatelessWidget {
  const Microphone({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    final screenSize = MediaQuery.of(context).size;

    return Container(
          height: screenSize.height,
          width: screenSize.width,
          //Use theme defined in the main.dart to get the colors
          color: Theme.of(context).cardColor,
          child: Center(
            child: FlatButton(
              shape: CircleBorder(),
              color: Theme.of(context).buttonColor,
              child: Icon(Icons.mic,
              color: Theme.of(context).accentColor,
              size: 28.0,),
              onPressed: (){
                Navigator.of(context).pushNamed('/recomendation');
              },
            )),
    );
  }
}