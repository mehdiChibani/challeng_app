import 'package:challenge_app/bloc/new_arrivals_bloc.dart';

import 'package:challenge_app/contants/colors.dart';
import 'package:challenge_app/widgets/home/product_card.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class NewArrivalsList extends StatefulWidget {
  State<StatefulWidget> createState() => new _NewArrivalsList();
}

class _NewArrivalsList extends State<NewArrivalsList> {
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
        create: (context) => NewArrivalsBloc()..add(GetNewArrivals()),
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 16),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('Trending sales',
                      style: TextStyle(
                          fontFamily: 'Inter',
                          fontWeight: FontWeight.w600,
                          fontSize: 20,
                          color: pickledBluewood)),
                  Text('See all',
                      style: TextStyle(
                          fontFamily: 'Inter',
                          fontWeight: FontWeight.w400,
                          fontSize: 14,
                          color: purpleHeart)),
                ],
              ),
            ),
            SizedBox(
              height: 25,
            ),
            BlocBuilder<NewArrivalsBloc, NewArrivalsState>(
              builder: (context, state) {
                if (state is LoadedState) {
                  return
                  SizedBox(height: 245,child:
                  GridView.builder(
                    // gridDelegate:const SliverGridDelegate(
                      
                    // ) ,
                    //crossAxisCount: 2,
                    gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
                maxCrossAxisExtent: 480,
                childAspectRatio: 2.5/ 2,
                crossAxisSpacing: 20,
                mainAxisSpacing: 20),
            //itemCount: myProducts.length,
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (context, index) {
                      return ProductCard(product: state.newArrivals[index],index: index,);
                    },
                    itemCount: state.newArrivals.length,
                  ),);
                } else if (state is ErrorState) {
                  return Text(state.errorMessage);
                } else {
                  return CircularProgressIndicator(
                    color:electricViolet ,
            );
                }
              },
            ),
          ],
        ));
  }
}
