import 'package:challenge_app/contants/colors.dart';
import 'package:challenge_app/models/product.dart';
import 'package:challenge_app/widgets/commons/header.dart';
import 'package:challenge_app/widgets/product_details/details_content.dart';
import 'package:challenge_app/widgets/product_details/product_image.dart';
import 'package:flutter/material.dart';

class ProductDetailPage extends StatefulWidget {
  Product product;
   ProductDetailPage({super.key,required this.product});

  State<StatefulWidget> createState() => new _ProductDetailPage(product: product);
}

class _ProductDetailPage extends State<ProductDetailPage> {
  Product product;
  _ProductDetailPage({required this.product});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor:Colors.white ,
      body:
      SafeArea(
        child:
      Container(
        color: catskillwhite,
        child: 
      Column(
        children: [
          Header(page: 'Product details',),
          ProductDetailsImage(image: product.picture,),
          Flexible(child: 
          DetailsContent(product: product,))

        ],
      )  ,),)
    
    );
  }
}
