import 'dart:convert';
import 'package:challenge_app/bloc/cart_bloc.dart';
import 'package:challenge_app/models/product.dart';
import 'package:flutter/services.dart';
import 'package:shared_preferences/shared_preferences.dart';

class StorageUtils {
  static const String cartStrorage = "shopping_cart";

  Future<List<Product>> readCartProducts() async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    final String cartProducts = prefs.getString(cartStrorage) ?? '[]';

    final List<Product> products = Product.decode(cartProducts);
    return products;
  }

  Future<List<Product>> addToCartUtils(Product product) async {
    print('kk');
    print(product.company);
    print('product');
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    List<Product> cartList = await readCartProducts();

    if (cartList != []) {
      cartList.add(product);
      String encodedList = Product.encode(cartList);
      await prefs.setString(cartStrorage, encodedList);
      return cartList;
    } else {
      List<Product> productsList = [];
      productsList.add(product);
      String encodedList = Product.encode(productsList);
      await prefs.setString(cartStrorage, encodedList);
      return productsList;
    }
  }
}
