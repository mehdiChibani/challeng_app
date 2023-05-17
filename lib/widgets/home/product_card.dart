import 'package:challenge_app/bloc/cart_bloc.dart';
import 'package:challenge_app/contants/colors.dart';
import 'package:challenge_app/models/product.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';
import 'package:go_router/go_router.dart';


class ProductCard extends StatelessWidget {
  Product product;
  int index;
  ProductCard({super.key, required this.product, required this.index});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        context.push('/details',extra: product);
      },
    child: 
    
    Padding(
      padding: index == 0 ? EdgeInsets.only(left: 16) : EdgeInsets.only(),
      child: Container(
          color: Colors.white,
          padding: EdgeInsets.all(6),
          child: Column(
            //crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                color: catskillwhite,
                child: Image.network(
                  product.picture,
                ),
                height: 120,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: EdgeInsets.only(top: 18, bottom: 4),
                    child: 
                    FittedBox(
        fit: BoxFit.fitWidth, 
        child:
                    Text(
                      product.name,
                      style: TextStyle(
                          fontFamily: 'Inter',
                          fontWeight: FontWeight.w600,
                          fontSize: 16,
                          color: pickledBluewood),
                    )),
                  ),
                  Text(
                    product.company,
                    style: TextStyle(
                        fontFamily: 'Inter',
                        fontWeight: FontWeight.w400,
                        fontSize: 14,
                        color: slateGray),
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: 15),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          product.price.toStringAsFixed(0) + ' £',
                          style: TextStyle(
                              fontFamily: 'Inter',
                              fontWeight: FontWeight.w600,
                              fontSize: 20,
                              color: pickledBluewood),
                        ),
                        BlocProvider(
                        create: (context) => CartBloc(),
                        child: 
                        BlocBuilder<CartBloc, CartState>(
                              builder: (context, state) {
                        return
                        GestureDetector(onTap: (){
                          BlocProvider.of<CartBloc>(context).add(AddToCart(product: product));
                        },child :
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
                        ),);
                              }))
                      ],
                    ),
                  )
                ],
              )
            ],
          )),
    ));
  }
}
