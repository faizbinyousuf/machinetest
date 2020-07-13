import 'package:flutter/material.dart';
import 'package:geolocator/geolocator.dart';

import 'shopping_cart.dart';

void main() => runApp(MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    ));

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  Position _location = Position(latitude: 0.0, longitude: 0.0);

  void _displayCurrentLocation() async {
    final location = await Geolocator()
        .getCurrentPosition(desiredAccuracy: LocationAccuracy.high);

    setState(() {
      _location = location;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(
        child: ListView(
          children: [
            DrawerHeader(
              child: Text(
                'Side Bar ',
                style: TextStyle(color: Colors.white, fontSize: 26.0),
              ),
              decoration: BoxDecoration(
                color: Colors.blueGrey[900],
              ),
            ),
            ListTile(
              leading: Icon(Icons.home),
              title: Text('Home Page'),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            ListTile(
              leading: Icon(Icons.shopping_cart),
              title: Text('Cart Page'),
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => OrderCard()));
              },
            ),
          ],
        ),
      ),
      appBar: AppBar(
          title: Text('Machine Test'), backgroundColor: Colors.blueGrey[900]),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: FlatButton(
              child: Text(
                'Get Location',
                style: TextStyle(fontSize: 16.0),
              ),
              color: Colors.blueGrey,
              onPressed: () {
                _displayCurrentLocation();
              },
            ),
          ),
          Text(
            "${_location.latitude}, ${_location.longitude}",
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
          ),
        ],
      ),
    );
  }
}
