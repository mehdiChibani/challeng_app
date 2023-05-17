import 'package:challenge_app/bloc/cart_bloc.dart';
import 'package:challenge_app/contants/colors.dart';
import 'package:challenge_app/widgets/cart/cart_card.dart';
import 'package:challenge_app/widgets/cart/cart_content.dart';
import 'package:challenge_app/widgets/home/product_card.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';

class CartList extends StatefulWidget {
  State<StatefulWidget> createState() => new _CartList();
}

class _CartList extends State<CartList> {
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => CartBloc()..add(GetCartProducts()),
      child: BlocBuilder<CartBloc, CartState>(
        builder: (context, state) {
          if (state is LoadedState) {
            return
            SingleChildScrollView(child: 
             Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
              ListView.separated(
                physics : NeverScrollableScrollPhysics() ,
                shrinkWrap: true,
                separatorBuilder: (context, index) {
                  return 
                  Padding(padding: EdgeInsets.symmetric(horizontal: 17),child:
                  Container(
                    decoration: BoxDecoration(
                        border: Border.all(color: athensGrayTwo, width: 1)),
                  ) ,);
                },
                itemCount: state.cartProductsList.length,
                itemBuilder: (context, index) {
                  return CartCard(product:state.cartProductsList[index] ,);
                },
              ),
            CartContent(products: state.cartProductsList,)
                  
      
            ]),);
          } else if (state is ErrorState) {
            return Text(state.errorMessage);
          } else {
            return CircularProgressIndicator(
                    color:electricViolet ,
            );
          }
        },
      ),
    );
  }
}
