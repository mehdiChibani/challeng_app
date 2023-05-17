import 'package:challenge_app/contants/colors.dart';
import 'package:challenge_app/models/product.dart';
import 'package:challenge_app/widgets/product_details/product_description.dart';
import 'package:challenge_app/widgets/product_details/product_review.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_svg/svg.dart';

class DetailsContent extends StatelessWidget {
  Product product;
  DetailsContent({super.key, required this.product});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.only(topLeft: const Radius.circular(15),topRight:const Radius.circular(15) )
        
      
      ),
      child:Column(
        crossAxisAlignment:CrossAxisAlignment.start ,
        children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
          Text(product.name,style: const TextStyle(
                              fontFamily: 'Inter',
                              fontWeight: FontWeight.w600,
                              fontSize: 16,
                              color: pickledBluewood),),
          Text('${product.price.toStringAsFixed(0)} £',style: const TextStyle(
                              fontFamily: 'Inter',
                              fontWeight: FontWeight.w600,
                              fontSize: 24,
                              color: pickledBluewood))
        ],),
        Padding(padding: EdgeInsets.only(bottom: 18,top: 5),
        child: Text(product.company,style: const TextStyle(
                              fontFamily: 'Inter',
                              fontWeight: FontWeight.w400,
                              fontSize: 14,
                              color: slateGray),)
        ),
        const ProductReview(),
        ProductDescription(description: product.description,)
        
      ],));
  }
}
