import 'package:challenge_app/contants/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_svg/svg.dart';

class ProductDetailsImage extends StatelessWidget {
  String image;
  ProductDetailsImage({super.key, required this.image});

  @override
  Widget build(BuildContext context) {
    return 
    SizedBox(height: 342,child: 
    Padding(
      padding: EdgeInsets.symmetric(horizontal: 40.39, vertical: 30),
      child: Image.network(image,height: 256,width: 327,),)
    );
  }
}
