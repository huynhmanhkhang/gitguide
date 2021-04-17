import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
        child: Container(
            padding: EdgeInsets.only(left: 10.0, top: 40.0),
            alignment: Alignment.center,
            color: Colors.deepPurple,
            //width: 200.0,
            //height: 100.0,
            child: Column(children: <Widget>[
              Row(
                children: <Widget>[
                  Expanded(
                      child: Text("Spice Jet",
                          style: TextStyle(
                              decoration: TextDecoration.none,
                              fontSize: 35.0,
                              fontFamily: 'Raleway',
                              fontWeight: FontWeight.w300),
                          textDirection: TextDirection.ltr)),
                  Expanded(
                      child: Text("From Wut omg bruh bruh lmao lmao dark dark",
                          style: TextStyle(
                              decoration: TextDecoration.none,
                              fontSize: 10.0,
                              fontFamily: 'Raleway',
                              fontWeight: FontWeight.w300),
                          textDirection: TextDirection.ltr))
                ],
              ),
              Row(
                children: <Widget>[
                  Expanded(
                      child: Text("Muda muda",
                          style: TextStyle(
                              decoration: TextDecoration.none,
                              fontSize: 35.0,
                              fontFamily: 'Raleway',
                              fontWeight: FontWeight.w300),
                          textDirection: TextDirection.ltr)),
                  Expanded(
                      child: Text("From Wut omg bruh bruh lmao lmao dark dark",
                          style: TextStyle(
                              decoration: TextDecoration.none,
                              fontSize: 10.0,
                              fontFamily: 'Raleway',
                              fontWeight: FontWeight.w300),
                          textDirection: TextDirection.ltr))
                ],
              ),
              FlowerImageAsset(),
              BookButton()
            ])));
    throw UnimplementedError();
  }
}

class FlowerImageAsset extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    AssetImage assetImage = AssetImage('images/pngwing.com.png');
    Image image = Image(image: assetImage);
    return Container(child: image);
    throw UnimplementedError();
  }
}

class BookButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
        margin: EdgeInsets.only(top: 30.0),
        width: 250.0,
        height: 50.0,
        child: RaisedButton(
          onPressed: () => book(context),
          color: Colors.deepOrange,
          child: Text("Book your",
              style: TextStyle(
                  fontSize: 20.0,
                  color: Colors.white,
                  fontFamily: 'Raleway',
                  fontWeight: FontWeight.w700)),
          elevation: 6.0,
        ));
    throw UnimplementedError();
  }
}

void book(BuildContext context) {
  var alertDialog = AlertDialog(
    title: Text("Flight Booked Succed"),
    content: Text("Good luck!"),
  );
  showDialog(context: context, builder: (BuildContext context) => alertDialog);
}
