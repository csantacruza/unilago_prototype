import 'package:flutter/material.dart';
import 'package:unilago_prototype/models/item.dart';

class Recomendation extends StatelessWidget {
  Recomendation({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    double _mean = 0;

    double _calculateMean() {
      //_mean = 0;
      sellers.forEach((seller) {
        _mean += seller.price;
      });
      _mean = _mean / sellers.length;
      return _mean;
    }

    return Scaffold(
        appBar: AppBar(
          title: Text("Esta es nuestra recomendación",
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontFamily: 'Ovo',
                  fontSize: 18.0,
                  color: Colors.black)),
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
                          SizedBox(
                            height: 8.0,
                          ),
                          GestureDetector(
                            onTap: (){
                              Navigator.of(context).pushNamed('/detail',arguments: article);
                            },
                            child: Container(
                              width: screenSize.width * 0.90,
                              decoration: BoxDecoration(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(10.0)),
                                color: Colors.white,
                                boxShadow: [
                                  BoxShadow(
                                    color: Colors.black54,
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
                              padding: EdgeInsets.symmetric(horizontal: 15.0),
                              child: Column(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                children: <Widget>[
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: <Widget>[
                                      Padding(
                                        padding: const EdgeInsets.symmetric(
                                            vertical: 7.0),
                                        child: Text(
                                          article.type,
                                          style: TextStyle(
                                              fontWeight: FontWeight.bold,
                                              fontSize: 18.0,
                                              color: Colors.blueGrey),
                                        ),
                                      ),
                                    ],
                                  ),
                                  Image(
                                      height: screenSize.height * 0.25,
                                      width: screenSize.width * 0.75,
                                      fit: BoxFit.contain,
                                      image: NetworkImage(article.imageUrl)),
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: <Widget>[
                                      Text(
                                        article.name,
                                        style: TextStyle(
                                            color: Colors.grey[600],
                                            fontFamily: 'Muli',
                                            fontSize: 18.0,
                                            fontWeight: FontWeight.bold),
                                      ),
                                      Text(
                                          "Aprox \$ ${_calculateMean().toInt().toString()}"),
                                    ],
                                  ),
                                  SizedBox(
                                    height: 8.0,
                                  )
                                ],
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 8.0,
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
