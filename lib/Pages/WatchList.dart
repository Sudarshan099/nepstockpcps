import 'package:flutter/material.dart';
import 'package:nepstockfinal/services/stock_controller.dart';

class WatchListPage extends StatelessWidget {
  StockController stockController = StockController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Watch List',
          style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
        backgroundColor: Colors.blueGrey,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              margin: EdgeInsets.all(10),
              padding: EdgeInsets.symmetric(horizontal: 10),
              decoration: BoxDecoration(
                border: Border.all(color: Colors.black),
                borderRadius: BorderRadius.circular(5),
              ),
              child: Row(
                children: [
                  Icon(
                    Icons.search,
                    color: Colors.black,
                    size: 18,
                  ),
                  SizedBox(width: 10),
                  Expanded(
                    child: TextField(
                      decoration: InputDecoration(
                        hintText: "Search Here...",
                        border: InputBorder.none,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 10.0),
            FutureBuilder(
              future: stockController.fetchStock(),
              builder: (context, snapshot) {
                return SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: SingleChildScrollView(
                    scrollDirection: Axis.vertical,
                    child: DataTable(
                      columns: [
                        DataColumn(label: Text('ID')),
                        DataColumn(label: Text('Company ID')),
                        DataColumn(label: Text('Opening Price')),
                        DataColumn(label: Text('Closing Price')),
                        DataColumn(label: Text('Date')),
                      ],
                      rows: stockController.stockList.map((stock) {
                        return DataRow(
                          cells: [
                            DataCell(Text(stock.id.toString())),
                            DataCell(Text(stock.companyName.toString())),
                            DataCell(Text(stock.openingPrice.toString())),
                            DataCell(Text(stock.closingPrice.toString())),
                            DataCell(Text(stock.date.toString())),
                          ],
                        );
                      }).toList(),
                    ),
                  ),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
