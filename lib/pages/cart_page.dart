import 'package:challenge_app/contants/colors.dart';
import 'package:challenge_app/models/product.dart';
import 'package:challenge_app/widgets/cart/cart_list.dart';
import 'package:challenge_app/widgets/commons/ca_button.dart';
import 'package:challenge_app/widgets/commons/header.dart';
import 'package:challenge_app/widgets/product_details/details_content.dart';
import 'package:challenge_app/widgets/product_details/product_image.dart';
import 'package:flutter/material.dart';

class CartPage extends StatefulWidget {
 
 

  State<StatefulWidget> createState() => new _CartPage();
}

class _CartPage extends State<CartPage> {
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor:Colors.white ,
      body:
      SafeArea(
      
        child:
    Column(children: [
      Flexible(child: 
      
     Padding(padding: EdgeInsets.symmetric(horizontal: 16),child: 
      Column(
        children: [
          Header(page: 'Cart',),
          Flexible(child: 
          CartList(),)
          

        ],
      ) ,)),
      Material(
      //shadowColor: Color.fromRGBO(0, 0, 0, 0.3),
      borderRadius: BorderRadius.only(topLeft: Radius.circular(7),topRight:Radius.circular(7)),
      elevation: 20,
      child:
      Container(
        width: MediaQuery.of(context).size.width,
        padding: EdgeInsets.only(left: 16.5,right: 16.5,top: 21,bottom: 38),
        decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.only(topLeft: Radius.circular(7),topRight:Radius.circular(7),
         )
      ),
      child:
      CaButton()
      
      ))
      
      
      ,],)
      
      
      
      )
    
    );
  }
}
