import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class PricePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(' Price/Volume ',style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold,),),
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
                  'Price/Volume',
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
                        child: Center(child: Text('Price Change')),
                      ),
                    ),
                    TableCell(
                      child: Container(
                        color: Colors.purpleAccent,
                        padding: EdgeInsets.all(8.0),
                        child: Center(child: Text('Volume Change')),
                      ),
                    ),
                  ],
                ),
                TableRow(
                  children: [
                    TableCell(
                      child: Container(
                        padding: EdgeInsets.all(8.0),
                        child: Center(child: Text('ACLBSL',)
                      ),
                      ),
                    ),
                    TableCell(
                      child: Container(
                        padding: EdgeInsets.all(8.0),
                        child: Center(child: Text('1.92%')),
                      ),
                    ),
                    TableCell(
                      child: Container(
                        padding: EdgeInsets.all(8.0),
                        child: Center(child: Text('-64.80%')),
                      ),
                    ),

                  ],
                ),
                TableRow(
                  children: [
                    TableCell(
                      child: Container(
                        padding: EdgeInsets.all(8.0),
                        child: Center(child: Text('AHL')),
                      ),
                    ),
                    TableCell(
                      child: Container(
                        padding: EdgeInsets.all(8.0),
                        child: Center(child: Text('0.25%')),
                      ),
                    ),
                    TableCell(
                      child: Container(
                        padding: EdgeInsets.all(8.0),
                        child: Center(child: Text('76.92%')),
                      ),
                    ),
                  ],
                ),
                TableRow(
                  children: [
                    TableCell(
                      child: Container(
                        padding: EdgeInsets.all(8.0),
                        child: Center(child: Text('AHPC')),
                      ),
                    ),
                    TableCell(
                      child: Container(
                        padding: EdgeInsets.all(8.0),
                        child: Center(child: Text('-0.49%')),
                      ),
                    ),
                    TableCell(
                      child: Container(
                        padding: EdgeInsets.all(8.0),
                        child: Center(child: Text('92.03%')),
                      ),
                    ),
                  ],
                ),
                TableRow(
                  children: [
                    TableCell(
                      child: Container(
                        padding: EdgeInsets.all(8.0),
                        child: Center(child: Text('AKJCL')),
                      ),
                    ),
                    TableCell(
                      child: Container(
                        padding: EdgeInsets.all(8.0),
                        child: Center(child: Text('-1.00%')),
                      ),
                    ),
                    TableCell(
                      child: Container(
                        padding: EdgeInsets.all(8.0),
                        child: Center(child: Text('27.01%')),
                      ),
                    ),
                  ],
                ),
                TableRow(
                  children: [
                    TableCell(
                      child: Container(
                        padding: EdgeInsets.all(8.0),
                        child: Center(child: Text('AKPL')),
                      ),
                    ),
                    TableCell(
                      child: Container(
                        padding: EdgeInsets.all(8.0),
                        child: Center(child: Text('-1.79%')),
                      ),
                    ),
                    TableCell(
                      child: Container(
                        padding: EdgeInsets.all(8.0),
                        child: Center(child: Text('63.89%')),
                      ),
                    ),
                  ],
                ),
                TableRow(
                  children: [
                    TableCell(
                      child: Container(
                        padding: EdgeInsets.all(8.0),
                        child: Center(child: Text('ALBSL')),
                      ),
                    ),
                    TableCell(
                      child: Container(
                        padding: EdgeInsets.all(8.0),
                        child: Center(child: Text('1.20%')),
                      ),
                    ),
                    TableCell(
                      child: Container(
                        padding: EdgeInsets.all(8.0),
                        child: Center(child: Text('-31.14%')),
                      ),
                    ),
                  ],
                ),
                TableRow(
                  children: [
                    TableCell(
                      child: Container(
                        padding: EdgeInsets.all(8.0),
                        child: Center(child: Text('ALICL')),
                      ),
                    ),
                    TableCell(
                      child: Container(
                        padding: EdgeInsets.all(8.0),
                        child: Center(child: Text('-0.84%')),
                      ),
                    ),
                    TableCell(
                      child: Container(
                        padding: EdgeInsets.all(8.0),
                        child: Center(child: Text('-3.78%')),
                      ),
                    ),
                  ],
                ),
                TableRow(
                  children: [
                    TableCell(
                      child: Container(
                        padding: EdgeInsets.all(8.0),
                        child: Center(child: Text('API')),
                      ),
                    ),
                    TableCell(
                      child: Container(
                        padding: EdgeInsets.all(8.0),
                        child: Center(child: Text('-0.59%')),
                      ),
                    ),
                    TableCell(
                      child: Container(
                        padding: EdgeInsets.all(8.0),
                        child: Center(child: Text('77.53%')),
                      ),
                    ),
                  ],
                ),
                TableRow(
                  children: [
                    TableCell(
                      child: Container(
                        padding: EdgeInsets.all(8.0),
                        child: Center(child: Text('BARUN')),
                      ),
                    ),
                    TableCell(
                      child: Container(
                        padding: EdgeInsets.all(8.0),
                        child: Center(child: Text('-1.90%')),
                      ),
                    ),
                    TableCell(
                      child: Container(
                        padding: EdgeInsets.all(8.0),
                        child: Center(child: Text('-65.74%')),
                      ),
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