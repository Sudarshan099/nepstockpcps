
import 'package:flutter/foundation.dart';
import 'package:get/get.dart';

import 'package:nepstockfinal/services/stock_service.dart';


import '../models/stock_model.dart';

class StockController extends GetxController {
  StockService stockService = StockService();

  var stockList = <StockModel>[].obs;

  fetchStock() async {
    try {
      var data = await stockService.fetchStockData();

      stockList.addAll(data);
    } catch (error) {
      if (kDebugMode) {
        print('Error fetching stock data: $error');
        print(stockList);
      }
    }
  }
}