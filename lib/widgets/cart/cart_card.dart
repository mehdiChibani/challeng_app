import 'package:challenge_app/contants/colors.dart';
import 'package:challenge_app/models/product.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_svg/svg.dart';

class CartCard extends StatelessWidget {
  Product product;
  CartCard({super.key, required this.product});

  @override
  Widget build(BuildContext context) {
    return 
    Padding(padding: EdgeInsets.symmetric(vertical: 18),child: 
    Row(
      children: [
        Container(
          padding: EdgeInsets.symmetric(horizontal: 12,vertical: 10),
          color: catskillwhite,
          child: 
          Image.network(
            product.picture,
            height: 62,
            width: 60,
          ),
        ),
        SizedBox(width: 6,),
        Flexible(child: 
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
          Text(product.name,style: TextStyle(
                          fontFamily: 'Inter',
                          fontWeight: FontWeight.w600,
                          fontSize: 16,
                          color: pickledBluewood),),
          Padding(padding: EdgeInsets.symmetric(vertical: 5),child:
          Text(product.company,style: TextStyle(
                          fontFamily: 'Inter',
                          fontWeight: FontWeight.w400,
                          fontSize: 14,
                          color: slateGray),) ,),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
            Text(product.price.toStringAsFixed(0) + ' £',style: TextStyle(
                          fontFamily: 'Inter',
                          fontWeight: FontWeight.w600,
                          fontSize: 17,
                          color: pickledBluewood),) ,
          Row(children: [
            Container(
                          padding: EdgeInsets.all(15),
                          decoration: BoxDecoration(
                              border: Border.all( color: athensGrayTwo, width: 1),
                              shape: BoxShape.circle,
                              ),
                          child: SvgPicture.asset(
                            'assets/icons/moin.svg',
                            colorFilter: ColorFilter.mode(
                                electricViolet, BlendMode.srcIn),
                          ),
                        ),
            Padding(padding: EdgeInsets.symmetric(horizontal: 16),child: Text('1',style: 
            TextStyle(
                          fontFamily: 'Inter',
                          fontWeight: FontWeight.w600,
                          fontSize: 16,
                          color: pickledBluewood),)
            ),
            Container(
                          padding: EdgeInsets.all(12),
                          decoration: BoxDecoration(
                              color: magnolia,
                              borderRadius:
                                  BorderRadius.all(Radius.circular(20))),
                          child: SvgPicture.asset(
                            'assets/icons/add.svg',
                            colorFilter: ColorFilter.mode(
                                electricViolet, BlendMode.srcIn),
                          ),
                        )
          ],)
          ],)
        ],))
      ],
    ),);
  }
}
