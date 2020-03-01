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
      color: Colors.white,
      child: Column(
        children: <Widget>[
          SizedBox(
            height: 30.0,
          ),
          Center(
            child: Text("Dinos lo que buscas ... ",
                style: Theme.of(context)
                    .textTheme
                    .display2
                    .copyWith(color: Theme.of(context).primaryColor)),
          ),
          Expanded(
            child: Center(
                child: Container(
              height: 95.0,
              width: 95.0,
              child: Center(
                child: FlatButton(
                  autofocus: true,
                  shape: CircleBorder(),
                  color: Theme.of(context).buttonColor,
                  child: Center(
                    child: Icon(
                      Icons.mic,
                      color: Theme.of(context).accentColor,
                      size: 68.0,
                    ),
                  ),
                  onPressed: () {
                    Navigator.of(context).pushNamed('/recomendation');
                  },
                ),
              ),
            )),
          ),
        ],
      ),
    );
  }
}
