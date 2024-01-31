import 'package:flutter/material.dart';

void main() { 
  runApp(MyApp());
  imageCache.clear();
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Hello World Demo Application',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: "6488104"),
    );
  }
}

class MyHomePage extends StatelessWidget {
  MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(this.title),
      ),
      body: ListView(
        shrinkWrap: true,
        padding: const EdgeInsets.fromLTRB(2.0, 10.0, 2.0, 10.0),
        children: <Widget>[
          ProductBoxNetwork(name: "Tablet", description: "Tablet...yeah tablet", price: 15000, url: 'https://m.media-amazon.com/images/I/718N62+jU7S._AC_UF894,1000_QL80_.jpg'),
          ProductBoxNetwork(name: "Laptop", description: "Just an ordinary laptop", price: 30000, url: 'https://cdn.discordapp.com/attachments/678571234652454922/1202109613651283978/hp_elitebook_mobile.jpg?ex=65cc42d2&is=65b9cdd2&hm=ac4b2e3b284451eae327b120cbcb577c92d25615f8de70b2b30361c833c64f1a&'),
          ProductBoxLocal(name: "Floppy Disk", description: "Just a regular floppy disk", price: 20, image: 'floppy.png'),
          ProductBoxLocal(name: "Iphone", description: "Just a Iphone", price: 25000, image: 'iphone.png')
        ],
      ),
      // body: Center(child: Image.asset("assets/herta.jpg")),
    );
  }
}

/**
 * ProductBox class using Image.asset() to render images from local. (assets/appimages/)
 */
class ProductBoxLocal extends StatelessWidget {
  ProductBoxLocal({Key? key, required this.name, required this.description,  required this.price, required this.image})
      : super(key: key);

  final String name;
  final String description;
  final int price;
  final String image;

  Widget build(BuildContext context) {
    return Container(
        padding: EdgeInsets.all(2),
        height: 120,
        child: Card(
            child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
              Image.asset("assets/appimages/" + image),
              Expanded(
                  child: Container(
                      padding: EdgeInsets.all(5),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: <Widget>[
                          Text(this.name,
                              style: TextStyle(fontWeight: FontWeight.bold)),
                          Text(this.description),
                          Text("Price: " + this.price.toString()),
                        ],
                      )))
            ])));
  }
}

/**
 * ProductBox class that use Image.network() to render the image from the internet using url
 */
class ProductBoxNetwork extends StatelessWidget {
  ProductBoxNetwork({Key? key, required this.name, required this.description,  required this.price, required this.url})
      : super(key: key);

  final String name;
  final String description;
  final int price;
  final String url;

  Widget build(BuildContext context) {
    return Container(
        padding: EdgeInsets.all(2),
        height: 120,
        child: Card(
            child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
              Image.network(url),
              Expanded(
                  child: Container(
                      padding: EdgeInsets.all(5),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: <Widget>[
                          Text(this.name,
                              style: TextStyle(fontWeight: FontWeight.bold)),
                          Text(this.description),
                          Text("Price: " + this.price.toString()),
                        ],
                      )))
            ])));
  }
}