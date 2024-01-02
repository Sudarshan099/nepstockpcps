import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class StockPricePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Stock Price',style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold,),),
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
                  'Stock Price',
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
              border: TableBorder.all(),
              children: [
                TableRow(
                  children: [
                    TableCell(
                      child: Container(
                        padding: EdgeInsets.all(8.0),
                        child: Center(child: Text('Symbol')),
                      ),
                    ),
                    TableCell(
                      child: Container(
                        padding: EdgeInsets.all(8.0),
                        child: Center(child: Text('LTP')),
                      ),
                    ),
                    TableCell(
                      child: Container(
                        padding: EdgeInsets.all(8.0),
                        child: Center(child: Text('High')),
                      ),
                    ),
                    TableCell(
                      child: Container(
                        padding: EdgeInsets.all(8.0),
                        child: Center(child: Text('Low')),
                      ),
                    ),
                    TableCell(
                      child: Container(
                        padding: EdgeInsets.all(8.0),
                        child: Center(child: Text('Open')),
                      ),
                    ),
                    TableCell(
                      child: Container(
                        padding: EdgeInsets.all(8.0),
                        child: Center(child: Text('Close')),
                      ),
                    ),
                    TableCell(
                      child: Container(
                        padding: EdgeInsets.all(4.0),
                        child: Center(child: Text('%Change')),
                      ),
                    ),
                  ],
                ),
                TableRow(
                  children: [
                    TableCell(
                      child: Center(child: Text('PRVU',)
                      ),
                    ),
                    TableCell(
                      child: Center(child: Text('158.00')),
                    ),
                    TableCell(
                      child: Center(child: Text('158.00')),
                    ),
                    TableCell(
                      child: Center(child: Text('158.00')),
                    ),
                    TableCell(
                      child: Center(child: Text('158.00')),
                    ),
                    TableCell(
                      child: Center(child: Text('158.00')),
                    ),
                    TableCell(
                      child: Center(child: Text('0.00',style: TextStyle(backgroundColor: Colors.yellowAccent,))),
                    ),
                  ],
                ),
                TableRow(
                  children: [
                    TableCell(
                      child: Center(child: Text('PCBL')),
                    ),
                    TableCell(
                      child: Center(child: Text('184.00')),
                    ),
                    TableCell(
                      child: Center(child: Text('184.00')),
                    ),
                    TableCell(
                      child: Center(child: Text('184.00')),
                    ),
                    TableCell(
                      child: Center(child: Text('184.00')),
                    ),
                    TableCell(
                      child: Center(child: Text('184.00')),
                    ),
                    TableCell(
                      child: Center(child: Text('0.00',style: TextStyle(backgroundColor: Colors.yellowAccent,))),
                    ),
                  ],
                ),
                TableRow(
                  children: [
                    TableCell(
                      child: Center(child: Text('GBIME')),
                    ),
                    TableCell(
                      child: Center(child: Text('208.00')),
                    ),
                    TableCell(
                      child: Center(child: Text('208.00')),
                    ),
                    TableCell(
                      child: Center(child: Text('208.00')),
                    ),
                    TableCell(
                      child: Center(child: Text('208.00')),
                    ),
                    TableCell(
                      child: Center(child: Text('208.00')),
                    ),
                    TableCell(
                      child: Center(child: Text('0.00',style: TextStyle(backgroundColor: Colors.yellowAccent,))),
                    ),
                  ],
                ),
                TableRow(
                  children: [
                    TableCell(
                      child: Center(child: Text('NIMB')),
                    ),
                    TableCell(
                      child: Center(child: Text('176.50')),
                    ),
                    TableCell(
                      child: Center(child: Text('176.50')),
                    ),
                    TableCell(
                      child: Center(child: Text('176.50')),
                    ),
                    TableCell(
                      child: Center(child: Text('176.50')),
                    ),
                    TableCell(
                      child: Center(child: Text('176.50')),
                    ),
                    TableCell(
                      child: Center(child: Text('0.00',style: TextStyle(backgroundColor: Colors.yellowAccent,))),
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