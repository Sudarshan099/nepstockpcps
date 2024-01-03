import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_charts/charts.dart';

class StockGraphPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    List<ChartData> data = [
      ChartData(DateTime(2023, 10, 10), 250),
      ChartData(DateTime(2023, 10, 11), 230),
      ChartData(DateTime(2023, 10, 12), 210),
      ChartData(DateTime(2023, 10, 13), 180),
      ChartData(DateTime(2023, 10, 14), 200),
      ChartData(DateTime(2023, 10, 15), 205),
      ChartData(DateTime(2023, 10, 16), 210),
      ChartData(DateTime(2023, 10, 17), 230),
      ChartData(DateTime(2023, 10, 18), 250),
      ChartData(DateTime(2023, 10, 19), 270),
      ChartData(DateTime(2023, 10, 20), 280),
      ChartData(DateTime(2023, 10, 21), 290),
      ChartData(DateTime(2023, 10, 22), 320),
      ChartData(DateTime(2023, 10, 23), 350),
      ChartData(DateTime(2023, 10, 24), 370),
      ChartData(DateTime(2023, 10, 25), 340),
      ChartData(DateTime(2023, 10, 26), 330),
      ChartData(DateTime(2023, 10, 27), 300),
      ChartData(DateTime(2023, 10, 28), 320),
      ChartData(DateTime(2023, 10, 29), 310),
      ChartData(DateTime(2023, 10, 30), 300),
      ChartData(DateTime(2023, 10, 31), 290),
      ChartData(DateTime(2023, 11, 1), 280),
      ChartData(DateTime(2023, 11, 2), 270),
      ChartData(DateTime(2023, 11, 3), 290),
      ChartData(DateTime(2023, 11, 4), 310),
      ChartData(DateTime(2023, 11, 5), 330),
      ChartData(DateTime(2023, 11, 6), 230),
      ChartData(DateTime(2023, 11, 7), 220),
      ChartData(DateTime(2023, 11, 8), 250),
      ChartData(DateTime(2023, 11, 9), 300),
    ];

    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Stock Graph',
          style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
        backgroundColor: Colors.blueGrey,
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: TextField(
              decoration: InputDecoration(
                hintText: 'Search Here...',
                prefixIcon: Icon(Icons.search),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(15.0),
                ),
              ),
            ),
          ),
          Expanded(
            child: Center(
              child: Container(
                height: 350,
                width: 450,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                  Text(
                  "Chart of CBBL(2023 Oct 10 - 2023 Nov 9)",
                  style: TextStyle(
                    fontSize: 16,
                    color: Colors.black,
                  ),
                ),
                SizedBox(height: 10),
                SfCartesianChart(
                  primaryXAxis: DateTimeAxis(),
                  series: <ChartSeries>[
                    AreaSeries<ChartData, DateTime>(
                      dataSource: data,
                      xValueMapper: (ChartData sales, _) => sales.date,
                      yValueMapper: (ChartData sales, _) => sales.value,
                      color: Colors.redAccent,
                    )
                  ],
                ),
                ]
              ),
            ),
          ),
          )
        ],
      ),
    );
  }
}

class ChartData {
  ChartData(this.date, this.value);

  final DateTime date;
  final double value;
}

