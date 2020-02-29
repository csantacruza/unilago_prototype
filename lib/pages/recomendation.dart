import 'package:flutter/material.dart';

class Recomendation extends StatefulWidget {
  Recomendation({Key key}) : super(key: key);

  @override
  _RecomendationState createState() => _RecomendationState();
}

class _RecomendationState extends State<Recomendation> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Theme.of(context).accentColor,
      child: Text("Recomendation"),
    );
  }
}
