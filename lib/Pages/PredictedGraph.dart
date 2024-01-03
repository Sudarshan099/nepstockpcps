import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_charts/charts.dart';

class PredictedGraphPage extends StatelessWidget {
  final List<ChartData> chartData = [
    ChartData('0', 8000, 7000, 9000),
    ChartData('1', 7500, 6500, 8500),
    ChartData('2', 9000, 8000, 8000),
    ChartData('3', 8500, 7500, 9500),
    ChartData('4', 8800, 6000, 8000),
    ChartData('5', 7500, 6500, 8500),
    ChartData('6', 8000, 7000, 7500),
    ChartData('7', 8500, 7500, 9500),
    ChartData('8', 9000, 8000, 10000),
    ChartData('9', 8500, 7500, 9500),
    ChartData('10', 8000, 8000, 9000),
    ChartData('11', 7500, 6500, 8500),
    ChartData('12', 9000, 8000, 8900),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Predicted Graph',
          style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
        backgroundColor: Colors.blueGrey,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(16.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
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
              Row(
                children: [
                  Text(
                    '  Nabil',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  SizedBox(width: 20.0),
                  Text(
                    'H:1000',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  SizedBox(width: 20.0),
                  Text(
                    'L:9000',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  SizedBox(width: 20.0),
                  Text(
                    'R:8000',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                ],
              ),
              SizedBox(height: 20.0),
              Container(
                height: 200,
                width: 300,
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.black),
                  borderRadius: BorderRadius.circular(10.0),
                ),
                child: SfCartesianChart(
                  primaryXAxis: CategoryAxis(),
                  primaryYAxis: NumericAxis(minimum: 6000, maximum: 10000),
                  series: <ChartSeries>[
                    LineSeries<ChartData, String>(
                      dataSource: chartData,
                      xValueMapper: (ChartData data, _) => data.x,
                      yValueMapper: (ChartData data, _) => data.high,
                      name: 'High',
                    ),
                    LineSeries<ChartData, String>(
                      dataSource: chartData,
                      xValueMapper: (ChartData data, _) => data.x,
                      yValueMapper: (ChartData data, _) => data.low,
                      name: 'Low',
                    ),
                    LineSeries<ChartData, String>(
                      dataSource: chartData,
                      xValueMapper: (ChartData data, _) => data.x,
                      yValueMapper: (ChartData data, _) => data.close,
                      name: 'Close',
                    ),
                  ],
                ),
              ),
              SizedBox(height: 20.0),
              Container(
                height: 250,
                width: 350,
                padding: EdgeInsets.all(20),
                decoration: BoxDecoration(
                  color: const Color(0xffb2d9f1),
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Padding(
                  padding: const EdgeInsets.symmetric(vertical: 10),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text('Sector'),
                                Text('Market Price'),
                                Text('Percentage Change'),
                                Text('One Year High-Low'),
                                Text('100 Day Average'),
                                Text('One Year Yield'),
                                Text('Book Value'),
                                Text('30 Days Average'),
                              ],
                            ),
                          ),
                          Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(' Banking sector'),
                                Text(' RS: 500'),
                                Text(' +2.3%'),
                                Text(' RS:1699-499'),
                                Text(' 699'),
                                Text(' +5.79%'),
                                Text(' 399'),
                                Text(' 27905729'),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),

    );
  }
}
class ChartData {
  ChartData(this.x, this.high, this.low, this.close);
  final String x;
  final double high;
  final double low;
  final double close;
}
