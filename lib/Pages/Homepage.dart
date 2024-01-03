import 'dart:math';

import 'package:flutter/material.dart';
import 'package:nepstockfinal/Pages/Calculator.dart';
import 'package:nepstockfinal/Pages/Contact.dart';
import 'package:nepstockfinal/Pages/StockStudy.dart';
import 'package:nepstockfinal/Pages/Minerals.dart';
import 'package:nepstockfinal/Pages/PredictedGraph.dart';
import 'package:nepstockfinal/Pages/Price.dart';
import 'package:nepstockfinal/Pages/StockGraph.dart';
import 'package:nepstockfinal/Pages/WatchList.dart';


import 'Login.dart';
import 'Profile.dart';
import 'StockAlert.dart';
import 'StockPrice.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'NepStock',
          style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold,),
        ),
        centerTitle: true,
        backgroundColor: Colors.blueGrey,
        leading: Builder(
          builder: (BuildContext context) {
            return IconButton(
              icon: Icon(Icons.menu),
              onPressed: () {
                Scaffold.of(context).openDrawer();
              },
            );
          },
        ),
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            DrawerHeader(
              decoration: BoxDecoration(
                color: Colors.lightBlueAccent,
              ),
              child: Text(
                'Menu',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 24,
                ),
              ),
            ),
            buildDrawerItem(Icons.person, 'Profile', context),
            buildDrawerItem(Icons.attach_money, 'Stock Price', context),
            buildDrawerItem(Icons.notifications, 'Stock Alert', context),
            buildDrawerItem(Icons.show_chart, 'Price/Volume', context),
            buildDrawerItem(Icons.folder, 'Minerals', context),
            buildDrawerItem(Icons.list, 'Watch List', context),
            buildDrawerItem(Icons.timeline, 'Stock Graph', context),
            buildDrawerItem(Icons.calculate, 'Calculator', context),
            buildDrawerItem(Icons.trending_up, 'Predicted Graph', context),
            buildDrawerItem(Icons.school, 'Stock Study', context),
            buildDrawerItem(
                Icons.contact_mail, 'Contact and Feedback', context),
            Divider(),
            buildDrawerItem(Icons.exit_to_app, 'Logout', context),
          ],
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: 20.0),
            Container(
              padding: EdgeInsets.all(10.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Index',
                    style: TextStyle(
                      fontSize: 20.0,
                      color: Colors.black,
                    ),
                  ),
                ],
              ),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
                color: Colors.grey,
              ),
            ),
            Container(
              padding: EdgeInsets.all(10.0),
              child: Table(
                border: TableBorder.symmetric(),
                children: [
                  TableRow(
                    children: [
                      TableCell(
                        child: Center(child: Text('1852.08',style: TextStyle(color: Colors.red,fontWeight: FontWeight.bold,fontSize: 20))
                        ),
                      ),
                      TableCell(
                        child: Center(child: Text('High')),
                      ),
                      TableCell(
                        child: Center(child: Text('Turnover')),
                      ),

                    ],
                  ),
                  TableRow(
                    children: [
                      TableCell(
                        child: Center(child: Text('-11.85 -0.63%',style: TextStyle(color: Colors.red,))),
                      ),
                      TableCell(
                        child: Center(child: Text('1866.93',)),
                      ),
                      TableCell(
                        child: Center(child: Text('83.60 Cr')),
                      ),

                    ],
                  ),
                  TableRow(
                    children: [
                      TableCell(
                        child: Center(child: Text('PClose')),
                      ),
                      TableCell(
                        child: Center(child: Text('Low')),
                      ),
                      TableCell(
                        child: Center(child: Text('Volume')),
                      ),

                    ],
                  ),
                  TableRow(
                    children: [
                      TableCell(
                        child: Center(child: Text('1863.94')),
                      ),
                      TableCell(
                        child: Center(child: Text('1847.85')),
                      ),
                      TableCell(
                        child: Center(child: Text('28.34 Lk units')),
                      ),

                    ],
                  ),
                  TableRow(
                    children: [
                      TableCell(
                        child: Center(child: Text('Traded Stocks')),
                      ),
                      TableCell(
                        child: Center(child: Text('+ve Circuit')),
                      ),
                      TableCell(
                        child: Center(child: Text('-ve Circuit')),
                      ),

                    ],
                  ),
                  TableRow(
                    children: [
                      TableCell(
                        child: Center(child: Text('282.0')),
                      ),
                      TableCell(
                        child: Center(child: Text('0',style: TextStyle(color: Colors.green,))),
                      ),
                      TableCell(
                        child: Center(child: Text('0',style: TextStyle(color: Colors.red,))),
                      ),

                    ],
                  ),
                  TableRow(
                    children: [
                      TableCell(
                        child: Center(child: Text('Advanced')),
                      ),
                      TableCell(
                        child: Center(child: Text('Declined')),
                      ),
                      TableCell(
                        child: Center(child: Text('Unchanged')),
                      ),

                    ],
                  ),
                  TableRow(
                    children: [
                      TableCell(
                        child: Center(child: Text('72',style: TextStyle(color: Colors.green,))),
                      ),
                      TableCell(
                        child: Center(child: Text('199',style: TextStyle(color: Colors.red,))),
                      ),
                      TableCell(
                        child: Center(child: Text('11')),
                      ),

                    ],
                  ),
                ],
              ),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),

              ),
            ),
            SizedBox(height: 20.0),
            Container(
              padding: EdgeInsets.all(10.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Top Gainer',
                    style: TextStyle(
                      fontSize: 20.0,
                      color: Colors.black,
                    ),
                  ),
                  Text(
                    'Top Loser',
                    style: TextStyle(
                      fontSize: 20.0,
                      color: Colors.black,
                    ),
                  ),
                ],
              ),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
                color: Colors.grey,
              ),
            ),
            //SizedBox(height: 1.0),
            Container(
              padding: EdgeInsets.all(10.0),
              child: Table(
                border: TableBorder.symmetric(),
                children: [
                  TableRow(
                    children: [
                      TableCell(
                        child: Container(
                          color: Colors.blue,
                          padding: EdgeInsets.all(8.0),
                          child: Center(child: Text('Symbol')),
                        ),
                      ),
                      TableCell(
                        child: Container(
                          color: Colors.blue,
                          padding: EdgeInsets.all(8.0),
                          child: Center(child: Text('LTP')),
                        ),
                      ),
                      TableCell(
                        child: Container(
                          color: Colors.blue,
                          padding: EdgeInsets.all(8.0),
                          child: Center(child: Text('Change')),
                        ),
                      ),
                      TableCell(
                        child: Container(
                          color: Colors.blue,
                          padding: EdgeInsets.all(8.0),
                          child: Center(child: Text('Change%')),
                        ),
                      ),
                    ],
                  ),
                  TableRow(
                    children: [
                      TableCell(
                        child: Center(child: Text('SPHL',)
                        ),
                      ),
                      TableCell(
                        child: Center(child: Text('150.00',style: TextStyle(color: Colors.green,))),
                      ),
                      TableCell(
                        child: Center(child: Text('+5.00',style: TextStyle(color: Colors.green,))),
                      ),
                      TableCell(
                        child: Center(child: Text('+3%',style: TextStyle(color: Colors.green,))),
                      ),
                    ],
                  ),
                  TableRow(
                    children: [
                      TableCell(
                        child: Center(child: Text('SBCF')),
                      ),
                      TableCell(
                        child: Center(child: Text('7.70',style: TextStyle(color: Colors.green,))),
                      ),
                      TableCell(
                        child: Center(child: Text('-10.00',style: TextStyle(color: Colors.red,))),
                      ),
                      TableCell(
                        child: Center(child: Text('+1%',style: TextStyle(color: Colors.green,))),
                      ),
                    ],
                  ),
                  TableRow(
                    children: [
                      TableCell(
                        child: Center(child: Text('OHL')),
                      ),
                      TableCell(
                        child: Center(child: Text('728.00',style: TextStyle(color: Colors.green,))),
                      ),
                      TableCell(
                        child: Center(child: Text('+28.2',style: TextStyle(color: Colors.green,))),
                      ),
                      TableCell(
                        child: Center(child: Text('+4.03%',style: TextStyle(color: Colors.green,))),
                      ),
                    ],
                  ),
                  TableRow(
                    children: [
                      TableCell(
                        child: Center(child: Text('SAMAJ')),
                      ),
                      TableCell(
                        child: Center(child: Text('96.7',style: TextStyle(color: Colors.green,))),
                      ),
                      TableCell(
                        child: Center(child: Text('+3.6',style: TextStyle(color: Colors.green,))),
                      ),
                      TableCell(
                        child: Center(child: Text('+3.87%',style: TextStyle(color: Colors.green,))),
                      ),
                    ],
                  ),
                  TableRow(
                    children: [
                      TableCell(
                        child: Center(child: Text('SIFC')),
                      ),
                      TableCell(
                        child: Center(child: Text('318.00',style: TextStyle(color: Colors.green,))),
                      ),
                      TableCell(
                        child: Center(child: Text('+10.00',style: TextStyle(color: Colors.green,))),
                      ),
                      TableCell(
                        child: Center(child: Text('+3.31%',style: TextStyle(color: Colors.green,))),
                      ),
                    ],
                  ),
                  TableRow(
                    children: [
                      TableCell(
                        child: Center(child: Text('GOOGL')),
                      ),
                      TableCell(
                        child: Center(child: Text('330.00',style: TextStyle(color: Colors.green,))),
                      ),
                      TableCell(
                        child: Center(child: Text('+10.4',style: TextStyle(color: Colors.green,))),
                      ),
                      TableCell(
                        child: Center(child: Text('+3.25%',style: TextStyle(color: Colors.green,))),
                      ),
                    ],
                  ),
                ],
              ),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),

              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget buildDrawerItem(IconData icon, String title, BuildContext context) {
    return ListTile(
      leading: Icon(icon),
      title: Text(title),
      onTap: () {
        // Close the drawer
        Navigator.pop(context);

        // Handle onTap for each menu item
        if (title == 'Profile') {
          // Navigate to the profile page
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => ProfilePage()),
          );
        } else if (title == 'Logout') {
          // Show a confirmation dialog before logging out
          showDialog(
            context: context,
            builder: (BuildContext context) {
              return AlertDialog(
                title: Text('Logout'),
                content: Text('Are you sure you want to logout?'),
                actions: [
                  TextButton(
                    onPressed: () {
                      Navigator.of(context).pop(); // Close the dialog
                    },
                    child: Text('Cancel'),
                  ),
                  TextButton(
                    onPressed: () {
                      // Navigate to the login page
                      Navigator.pushAndRemoveUntil(
                        context,
                        MaterialPageRoute(builder: (context) => LoginPage()),
                            (route) => false,
                      );
                    },
                    child: Text('Ok'),
                  ),
                ],
              );
            },
          );
        } else if (title == 'Calculator') {
          // Navigate to the calculator page
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => CalculatorPage()),
          );
        } else if (title == 'Stock Price') {
          // Navigate to the stock price page
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => StockPricePage()),
          );
        } else if (title == 'Stock Alert') {
          // Navigate to the stock alert page
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => StockAlertPage()),
          );
        } else if (title == 'Price/Volume') {

          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => PricePage()),
          );
        } else if (title == 'Minerals') {

          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => MineralPage()),
          );
        } else if (title == 'Watch List') {

          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => WatchListPage()),
          );
        } else if (title == 'Stock Graph') {

          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => StockGraphPage()),
          );
        } else if (title == 'Predicted Graph') {

          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => PredictedGraphPage()),
          );
        } else if (title == 'Stock Study') {

          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => StockStudyPage()),
          );
        } else if (title == 'Contact and Feedback') {

          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => ContactPage()),
          );
        }
      },
    );
  }

}



