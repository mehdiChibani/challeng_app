import 'package:challenge_app/contants/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_svg/svg.dart';

class ProductReview extends StatelessWidget {
  const ProductReview({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return 
    Row(
      children: [
        Icon(Icons.star,color: mustard,size: 16,),
        Padding(padding: EdgeInsets.only(left: 10.15,right: 12),child:
        Text('4.8',style: const TextStyle(
                              fontFamily: 'Inter',
                              fontWeight: FontWeight.w500,
                              fontSize: 12,
                              color: slateGray),),),
         Container(
           height: 21,
           decoration: BoxDecoration(border:Border.all(color: geyser,width: 1) ),
          ),
        SizedBox(width: 12,),
        Text('109 Reviews',style: const TextStyle(
                              fontFamily: 'Inter',
                              fontWeight: FontWeight.w500,
                              fontSize: 12,
                              color: cerulean),),
        
      ],
    );
  }
}
