import 'package:flutter/material.dart';
import 'package:unilago_prototype/models/item.dart';
import 'package:unilago_prototype/models/seller.dart';

class RecomendationDetailed extends StatelessWidget {
  final Item data;

  RecomendationDetailed({Key key, @required this.data}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;

    return Scaffold(
        appBar: AppBar(
          actions: <Widget>[
            FlatButton.icon(
              icon: Icon(Icons.compare,color: Theme.of(context).accentColor,),
              label: Text('Ver en casa',style: TextStyle(color: Theme.of(context).primaryColor),),
              onPressed: () {
                Navigator.of(context).pushNamed("/ar",arguments: data.type);
              },
            )
          ],
          title: Text(
            data.type,
            style: TextStyle(
                fontWeight: FontWeight.bold,
                fontFamily: 'Ovo',
                fontSize: 18.0,
                color: Theme.of(context).primaryColor),
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
          child: Column(children: <Widget>[
            SizedBox(
              height: 5.0,
            ),
            Card(
                margin:
                    EdgeInsets.symmetric(horizontal: screenSize.width * 0.001),
                elevation: 5.0,
                color: Colors.white,
                child: Column(
                  children: <Widget>[
                    SizedBox(height: screenSize.height * 0.01,),
                    Text(
                      data.name,
                      textAlign: TextAlign.start,
                      style: TextStyle(
                          fontFamily: 'Ovo',
                          fontSize: 25.0,
                          fontWeight: FontWeight.w500,
                          color: Colors.blueGrey//Theme.of(context).accentColor,
                          ),
                    ),
                    Image(
                        height: screenSize.height * 0.25,
                        width: screenSize.width * 0.80,
                        fit: BoxFit.contain,
                        image: NetworkImage(data.imageUrl)),
                    Container(
                        padding: EdgeInsets.all(6),
                        // color: Colors.blue,
                        width: screenSize.width * 0.70,
                        child: Text(
                          data.description,
                          textAlign: TextAlign.left,
                        )),
                  ],
                )),
            SizedBox(
              height: screenSize.height * 0.03,
            ),
            Text("Lista de precios",
                style: TextStyle(
                    fontFamily: 'Ovo',
                    fontSize: 18.0,
                    color: Theme.of(context).primaryColor,
                    fontWeight: FontWeight.w500)),
            SizedBox(
              height: screenSize.height * 0.03,
            ),
            Expanded(
              child: ListView.builder(
                  itemCount: data.sellers.length,
                  itemBuilder: (BuildContext context, int index) {
                    final Seller seller = data.sellers[index];

                    return Container(
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 8.0),
                        child: Column(
                          children: <Widget>[
                            Divider(),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: <Widget>[
                                Column(
                                  children: <Widget>[
                                    Text(
                                      seller.name,
                                      textAlign: TextAlign.start,
                                      style: TextStyle(
                                          color: Theme.of(context).accentColor,
                                          fontSize: 20.0,
                                          fontWeight: FontWeight.w600,
                                          fontFamily: 'Ovo'),
                                    ),
                                    Text(
                                      "Encuentrelo en ${seller.ubication}",
                                      style: TextStyle(
                                        color: Colors.grey[600],
                                      ),
                                    ),
                                  ],
                                ),
                                Column(
                                  children: <Widget>[
                                    Text(
                                      "\$ ${seller.price}",
                                      style: TextStyle(
                                          fontSize: 20.0,
                                          fontWeight: FontWeight.w600,
                                          color: Theme.of(context).accentColor
                                          ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    );
                  }),
            ),
          ]),
        ));
  }
}
