import 'package:flutter/foundation.dart';
import 'package:http/http.dart' as http;
import 'package:get/get.dart';
import 'package:nepstockfinal/models/stock_model.dart';


class StockService extends GetxService {
  Future<List<StockModel>> fetchStockData() async {
    // Implement your logic to fetch data, e.g., from an API
    // Here, we'll mock the data for demonstration purposes
    final response = await http.get(Uri.parse('http://127.0.0.1:8000/api/stocks/'));
    if (kDebugMode) {
      print(response.statusCode);
    }

    if (response.statusCode == 200) {
      // final List<dynamic> jsonData = json.decode(response.body);
      return stockModelFromJson(response.body);
    } else {
      throw Exception('Failed to fetch stock data');
    }
  }
}

