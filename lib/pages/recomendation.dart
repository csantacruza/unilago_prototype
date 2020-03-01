import 'package:flutter/material.dart';
import 'package:unilago_prototype/models/item.dart';

class Recomendation extends StatelessWidget {
  Recomendation({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;

    return Scaffold(
        appBar: AppBar(
          title: Text(
                "Esta es nuestra recomendación",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontFamily: 'Ovo',
                  fontSize: 18.0,
                ),
              ),
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
        body: Container(
          color: Colors.white,
          height: screenSize.height,
          child: Column(
            children: <Widget>[
              Expanded(
                child: ListView.builder(
                    itemCount: recomendation.length,
                    itemBuilder: (BuildContext context, int index) {
                      final Item article = recomendation[index];

                      return Column(
                        children: <Widget>[
                          SizedBox(height: 10.0,),
                          Container(
                            decoration: BoxDecoration(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(10.0)),
                              color: Colors.white,
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.black,
                                  blurRadius:
                                      6.2, // has the effect of softening the shadow
                                  spreadRadius:
                                      0.1, // has the effect of extending the shadow
                                  offset: Offset(
                                    0.0, // horizontal, move right 10
                                    3, // vertical, move down 10
                                  ),
                                )
                              ],
                            ),
                            padding: EdgeInsets.symmetric(horizontal: 30.0),
                            child: Column(
                              children: <Widget>[
                                Image(
                                    height: 220,
                                    width: 250,
                                    fit: BoxFit.contain,
                                    image: NetworkImage(article.imageUrl)),
                                Text(article.name),
                              ],
                            ),
                          ),
                          SizedBox(
                            height: 10.0,
                          )
                        ],
                      );
                    }),
              )
            ],
          ),
        ));
  }
}
