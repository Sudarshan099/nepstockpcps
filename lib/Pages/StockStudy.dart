import 'package:flutter/material.dart';

class StockStudyPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Stock Analysis Study',style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold,)),
        centerTitle: true,
        backgroundColor: Colors.blueGrey, // Set the app bar color
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: ListView(
          children: [
            _buildStudyMaterial(
              title: 'Introduction to Stock Analysis',
              content:
              'Stock analysis involves evaluating a company\'s financial performance, industry trends, and overall market conditions. It helps investors make informed decisions about buying or selling stocks.',
              source: 'Source: Investopedia',
              color: Colors.green, // Set a specific color for this section
            ),
            SizedBox(height: 16),
            _buildStudyMaterial(
              title: 'Fundamental Analysis',
              content:
              'Fundamental analysis examines a company\'s financial statements, earnings, dividends, and other factors to determine its intrinsic value. It helps investors assess the long-term potential of a stock.',
              source: 'Source: The Intelligent Investor by Benjamin Graham',
              color: Colors.orange, // Set a specific color for this section
            ),
            SizedBox(height: 16),
            _buildStudyMaterial(
              title: 'Technical Analysis',
              content:
              'Technical analysis involves studying price charts, patterns, and trading volumes to forecast future stock price movements. It is often used for short-term trading strategies.',
              source: 'Source: Technical Analysis of the Financial Markets by John Murphy',
              color: Colors.purple, // Set a specific color for this section
            ),
            SizedBox(height: 16),
            _buildStudyMaterial(
              title: 'Risk Management',
              content:
              'Risk management is crucial in stock trading. Diversification, setting stop-loss orders, and understanding risk-reward ratios are essential for protecting your capital.',
              source: 'Source: A Random Walk Down Wall Street by Burton Malkiel',
              color: Colors.red, // Set a specific color for this section
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildStudyMaterial({
    required String title,
    required String content,
    required String source,
    required Color color,
  }) {
    return Container(
      padding: EdgeInsets.all(16),
      margin: EdgeInsets.only(bottom: 16),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.5),
            spreadRadius: 2,
            blurRadius: 5,
            offset: Offset(0, 3),
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Text(
            title,
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: color),
          ),
          SizedBox(height: 12),
          Text(
            content,
            style: TextStyle(fontSize: 16),
          ),
          SizedBox(height: 12),
          Text(
            source,
            style: TextStyle(fontSize: 12, fontStyle: FontStyle.italic, color: Colors.grey),
          ),
        ],
      ),
    );
  }
}
