import 'dart:convert';
import 'package:challenge_app/models/product.dart';
import 'package:flutter/services.dart';

class JsonUtils {

  static const String trendingSalesFile = "assets/data/trending_sales_data.json";
  static const String newArrivalsFile = "assets/data/new_arrivals_data.json";

  Future<List<Product>> readTrendingSalesJson() async {
  final String response = await rootBundle.loadString(trendingSalesFile);
   List<Product> trendingSales = (json.decode(response))
          .map<Product>((products) => Product.fromJson(products))
          .toList();
  return trendingSales;
}
  Future<List<Product>> readNewArrivalsJson() async {
  final String response = await rootBundle.loadString(newArrivalsFile);
   List<Product> trendingSales = (json.decode(response))
          .map<Product>((products) => Product.fromJson(products))
          .toList();
  // final trendingSales = await json.decode(response);
  return trendingSales;
}

}


