import 'package:flutter/material.dart';
import 'package:welcomescreen/phonescreen.dart';

import 'Shipmentform.dart';
import 'db.dart';
import 'loginselect.dart';
import 'registerscreen.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Logged In as Buyer',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: BuyerAfterLogin(),
    );
  }
}

class BuyerAfterLogin extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Logged In as Buyer'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'Hi, Successfully Logged In as Buyer',
              style: TextStyle(fontSize: 38),
            ),
            SizedBox(height: 50),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => ShipmentForm()),
                );
                // Perform register button action
                print('Book a Truck');
              },
              child: Text('Book a Truck'),
            ),
            SizedBox(height: 40),
            ElevatedButton(
              onPressed: () {
                // Perform login button action
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => MyDropdown2()),
                );
                print('Book My Shipment');
              },
              child: Text('Book My Shipment'),
            ),
          ],
        ),
      ),
    );
  }
}