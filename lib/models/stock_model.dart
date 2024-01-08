// To parse this JSON data, do
//
//     final stockModel = stockModelFromJson(jsonString);

import 'dart:convert';

List<StockModel> stockModelFromJson(String str) => List<StockModel>.from(json.decode(str).map((x) => StockModel.fromJson(x)));

String stockModelToJson(List<StockModel> data) => json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class StockModel {
  int id;
  String companyName;
  int openingPrice;
  int closingPrice;
  DateTime date;

  StockModel({
    required this.id,
    required this.companyName,
    required this.openingPrice,
    required this.closingPrice,
    required this.date,
  });

  factory StockModel.fromJson(Map<String, dynamic> json) => StockModel(
    id: json["id"],
    companyName: json["company_name"],
    openingPrice: json["opening_price"],
    closingPrice: json["closing_price"],
    date: DateTime.parse(json["date"]),
  );

  Map<String, dynamic> toJson() => {
    "id": id,
    "company_name": companyName,
    "opening_price": openingPrice,
    "closing_price": closingPrice,
    "date": "${date.year.toString().padLeft(4, '0')}-${date.month.toString().padLeft(2, '0')}-${date.day.toString().padLeft(2, '0')}",
  };
}
