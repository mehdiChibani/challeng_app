import 'package:challenge_app/contants/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_svg/svg.dart';

class CaButton extends StatelessWidget {
  CaButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      padding: EdgeInsets.symmetric(vertical: 15),
      decoration: BoxDecoration(
      borderRadius: BorderRadius.all(Radius.circular(12),),
      color: electricVioletTwo,
    ),
    child: Text('Checkout',style:TextStyle(
                          fontFamily: 'Inter',
                          fontWeight: FontWeight.w600,
                          fontSize: 16,
                          color: Colors.white) ,),
    );
  }
}
