import 'package:flutter/material.dart';

class AR extends StatelessWidget {

  final String data;

  const AR({Key key, this.data}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0.0,
        leading: GestureDetector(
            onTap: () {
              Navigator.of(context).pop();
            },
            child: Icon(
              Icons.arrow_back_ios,
              color: Theme.of(context).accentColor,
            )),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            Text("Usa la camara para ver tu $data"),
            Image(
                image:
                    NetworkImage('https://i.blogs.es/925614/image/1366_2000.jpeg')),
          ],
        ),
      ),
    );
  }
}
