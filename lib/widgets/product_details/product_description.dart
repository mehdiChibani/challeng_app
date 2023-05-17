import 'package:challenge_app/contants/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_svg/svg.dart';

class ProductDescription extends StatelessWidget {
  String description;
  ProductDescription({super.key, required this.description});

  @override
  Widget build(BuildContext context) {
    return 
    // SizedBox(height: 342,child: 
    Padding(
      padding: EdgeInsets.only(top: 15.75),
      child:Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
        Text('About this item',
        style: TextStyle(
                              fontFamily: 'Inter',
                              fontWeight: FontWeight.w600,
                              fontSize: 14,
                              color: pickledBluewood),
        ),
        SizedBox(height: 5,),
        Text(description,style:
        TextStyle(
                              fontFamily: 'Inter',
                              fontWeight: FontWeight.w400,
                              fontSize: 14,
                              color: slateGray)
        )
      ],)
    // )
    );
  }
}
