import 'package:challenge_app/contants/colors.dart';
import 'package:challenge_app/widgets/home/bottom_tabs.dart';
import 'package:challenge_app/widgets/home/catogories_list.dart';
import 'package:challenge_app/widgets/commons/header.dart';
import 'package:challenge_app/widgets/home/new_arrivals_list.dart';
import 'package:challenge_app/widgets/home/search_input.dart';
import 'package:challenge_app/widgets/home/trending_sales_list.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  State<StatefulWidget> createState() => new _HomePage();
}

class _HomePage extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomTabs(),

      backgroundColor: wildSand,
        body: SafeArea(
      child: 
      Column(
        children: [
           Header(page: 'home'),
          const Padding(padding: EdgeInsets.only(left: 16,right: 24,top: 7),child: 
          SearchInput(),),
          Flexible(
            //flex:5 ,
            child: 
          Padding(padding: EdgeInsets.only(top: 30),child: 
          const CategoriesList(),),),
          // Padding(padding: EdgeInsets.only(top: 34),child: 
          // TrendingSalesList(),),
          Flexible(
            flex: 8,
            child: 
         ListView(children: [
         
          Padding(padding: EdgeInsets.only(top: 34),child: 
          TrendingSalesList(),),
         
          
          Padding(padding: EdgeInsets.only(top: 34),child: 
          NewArrivalsList(),),],),)
         
          
          
          // Flexible(
          //   flex: 7,
          //   child: 
          // Padding(padding: EdgeInsets.only(top: 34),child: 
          // TrendingSalesList(),))
          
          
          
          
          ],
      ),
    ));
  }
}
