import 'package:challenge_app/models/product.dart';
import 'package:challenge_app/pages/cart_page.dart';
import 'package:challenge_app/pages/home_page.dart';
import 'package:challenge_app/pages/product_details_page.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class AppRouter {
  GoRouter router = GoRouter(routes: [
    GoRoute(
      path: '/',
      pageBuilder: (context, state) {
        return const MaterialPage(child: HomePage());
      },
    ),
    GoRoute(
      path: '/cart',
      pageBuilder: (context, state) {
        return  MaterialPage(child: CartPage());
      },
    ),
    GoRoute(
      path: '/details',
      pageBuilder: (context, state) {
        Product product = state.extra as Product;
        return  MaterialPage(child: ProductDetailPage(product: product,));
      },
    )
  ]);
}
