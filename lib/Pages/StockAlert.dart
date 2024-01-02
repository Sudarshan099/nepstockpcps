import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class StockAlertPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Stock Alert',style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold,),),
        centerTitle: true,
        backgroundColor: Colors.blueGrey,
      ),
      body: Column(
        children: [
          SizedBox(height: 20.0),
          Container(
            padding: EdgeInsets.all(1.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Stock Alert',
                  style: TextStyle(
                    fontSize: 30.0,
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
                        color: Colors.purpleAccent,
                        padding: EdgeInsets.all(8.0),
                        child: Center(child: Text('Symbol')),
                      ),
                    ),
                    TableCell(
                      child: Container(
                        color: Colors.purpleAccent,
                        padding: EdgeInsets.all(8.0),
                        child: Center(child: Text('Type')),
                      ),
                    ),
                    TableCell(
                      child: Container(
                        color: Colors.purpleAccent,
                        padding: EdgeInsets.all(8.0),
                        child: Center(child: Text('Price')),
                      ),
                    ),
                    TableCell(
                      child: Container(
                        color: Colors.purpleAccent,
                        padding: EdgeInsets.all(8.0),
                        child: Center(child: Text('Active')),
                      ),
                    ),
                  ],
                ),
                TableRow(
                  children: [
                    TableCell(
                      child: Center(child: Text('Nicasia',)
                      ),
                    ),
                    TableCell(
                      child: Center(child: Text('IPO')),
                    ),
                    TableCell(
                      child: Center(child: Text('129')),
                    ),
                    TableCell(
                      child: Center(child: Text('upcoming')),
                    ),
                  ],
                ),
                TableRow(
                  children: [
                    TableCell(
                      child: Center(child: Text('Nabil')),
                    ),
                    TableCell(
                      child: Center(child: Text('IPO')),
                    ),
                    TableCell(
                      child: Center(child: Text('129')),
                    ),
                    TableCell(
                      child: Center(child: Text('upcoming')),
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
    );
  }

}