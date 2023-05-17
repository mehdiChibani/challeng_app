import 'package:challenge_app/bloc/cart_bloc.dart';
import 'package:challenge_app/contants/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';
import 'package:go_router/go_router.dart';
import 'package:badges/badges.dart' as badges;
import 'package:shared_preferences/shared_preferences.dart';

class Header extends StatefulWidget {
  String page;
   Header({super.key,required this.page});

  State<StatefulWidget> createState() => new _Header(page: page);
}

class _Header extends State<Header> {
  String page;
  _Header({required this.page});
  @override
  Widget build(BuildContext context) {
    return Container(
      color: page != 'home' ? Colors.white : wildSand,
      child: Padding(
        padding: EdgeInsets.symmetric(vertical: 10, horizontal: 17),
        child: page != 'home'
            ? Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  GestureDetector(
                    child: SvgPicture.asset('assets/icons/pop.svg'),
                    onTap: () {
                      context.pop();
                    },
                  ),
                  Text(page,
                      style: TextStyle(
                          fontFamily: 'Inter',
                          fontWeight: FontWeight.w600,
                          fontSize: 20,
                          color: oxfordBlue)),
                  BlocProvider(
                      create: (context) => CartBloc()..add(GetCartProducts()),
                      child: GestureDetector(
                        onTap: () async {
                          //context.push('/cart');
                          context.push('/cart');
                          // SharedPreferences prefs =
                          //     await SharedPreferences.getInstance();
                          // prefs.remove('shopping_cart');
                        },
                        child: BlocBuilder<CartBloc, CartState>(
                          builder: (context, state) {
                            if (state is LoadedState) {
                              return badges.Badge(
                                  position: badges.BadgePosition.custom(
                                      start: 26, top: 7),
                                  showBadge: state.cartProductsList.isNotEmpty
                                      ? true
                                      : false,
                                  child: Container(
                                      decoration: const BoxDecoration(
                                          color: athensGray,
                                          borderRadius: BorderRadius.all(
                                            Radius.circular(20),
                                          )),
                                      child: Padding(
                                        padding: EdgeInsets.all(11),
                                        child: SvgPicture.asset(
                                            'assets/icons/shoppingBag.svg'),
                                      )));
                            } else {
                              return CircularProgressIndicator(
                    color:electricViolet ,
            );;
                            }
                          },
                        ),
                      ))
                ],
              )
            : Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Hello Ayoub',
                        style: TextStyle(
                            fontFamily: 'Inter',
                            fontWeight: FontWeight.w600,
                            fontSize: 20,
                            color: oxfordBlue),
                      ),
                      Padding(
                          padding: EdgeInsets.only(top: 5),
                          child: Text('What are you buying today ?',
                              style: TextStyle(
                                  fontFamily: 'Inter',
                                  fontWeight: FontWeight.w400,
                                  fontSize: 14,
                                  color: slateGray)))
                    ],
                  ),
                  BlocProvider(
                      create: (context) => CartBloc()..add(GetCartProducts()),
                      child: GestureDetector(
                        onTap: () async {
                          //context.push('/cart');
                          context.push('/cart');
                          // SharedPreferences prefs =
                          //     await SharedPreferences.getInstance();
                          // prefs.remove('shopping_cart');
                        },
                        child: BlocBuilder<CartBloc, CartState>(
                          builder: (context, state) {
                            if (state is LoadedState) {
                              return badges.Badge(
                                  position: badges.BadgePosition.custom(
                                      start: 26, top: 7),
                                  showBadge: state.cartProductsList.isNotEmpty
                                      ? true
                                      : false,
                                  child: Container(
                                      decoration: const BoxDecoration(
                                          color: athensGray,
                                          borderRadius: BorderRadius.all(
                                            Radius.circular(20),
                                          )),
                                      child: Padding(
                                        padding: EdgeInsets.all(11),
                                        child: SvgPicture.asset(
                                            'assets/icons/shoppingBag.svg'),
                                      )));
                            } else {
                              return Text('loading');
                            }
                          },
                        ),
                      ))
                ],
              ),
      ),
    );
  }
}
