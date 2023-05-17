import 'package:challenge_app/contants/colors.dart';
import 'package:challenge_app/models/product.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_svg/svg.dart';

class CartContent extends StatelessWidget {
  List<Product> products;
  CartContent({super.key, required this.products});

  double getSubToToTal() {
    double subTotal = 0;
    for (var i = 0; i < products.length; i++) {
      subTotal = subTotal + products[i].price;
    }
    return subTotal;
  }

  double getTotal() {
    double subTotal = getSubToToTal();
    double prourcentage=(subTotal*15)/100;
    double total=subTotal-prourcentage;
    return total;
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(height: 53),
        Text('Voucher Discount ',
            style: TextStyle(
                fontFamily: 'Inter',
                fontWeight: FontWeight.w600,
                fontSize: 16,
                color: pickledBluewood)),
        SizedBox(height: 7),
        Container(
          padding: EdgeInsets.all(14),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.all(Radius.circular(8)),
            border: Border.all(color: athensGrayTwo, width: 1),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text('10845630872FK'),
              SvgPicture.asset(
                'assets/icons/check.svg',
              ),
            ],
          ),
        ),
        SizedBox(height: 24),
        Container(
          decoration:
              BoxDecoration(border: Border.all(color: athensGrayTwo, width: 1)),
        ),
        SizedBox(height: 22),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text('Sub total',
                style: TextStyle(
                    fontFamily: 'Inter',
                    fontWeight: FontWeight.w600,
                    fontSize: 16,
                    color: slateGray)),
            Text(getSubToToTal().toStringAsFixed(0) + ' £',
                style: TextStyle(
                    fontFamily: 'Inter',
                    fontWeight: FontWeight.w600,
                    fontSize: 18,
                    color: pickledBluewood))
          ],
        ),
        SizedBox(height: 8),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text('Delivery cost',
                style: TextStyle(
                    fontFamily: 'Inter',
                    fontWeight: FontWeight.w600,
                    fontSize: 16,
                    color: slateGray)),
            Text('23 £',
                style: TextStyle(
                    fontFamily: 'Inter',
                    fontWeight: FontWeight.w600,
                    fontSize: 18,
                    color: pickledBluewood))
          ],
        ),
        SizedBox(height: 8),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text('Voucher Discount',
                style: TextStyle(
                    fontFamily: 'Inter',
                    fontWeight: FontWeight.w600,
                    fontSize: 16,
                    color: slateGray)),
            Text('-15 % £',
                style: TextStyle(
                    fontFamily: 'Inter',
                    fontWeight: FontWeight.w600,
                    fontSize: 18,
                    color: alizarinCrimson))
          ],
        ),
        SizedBox(height: 16),
        Container(
          decoration:
              BoxDecoration(border: Border.all(color: athensGrayTwo, width: 1)),
        ),
        SizedBox(height: 22),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text('Total',
                style: TextStyle(
                    fontFamily: 'Inter',
                    fontWeight: FontWeight.w600,
                    fontSize: 24,
                    color: slateGray)),
            Text(getTotal().toStringAsFixed(0) + ' £',
                style: TextStyle(
                    fontFamily: 'Inter',
                    fontWeight: FontWeight.w600,
                    fontSize: 24,
                    color: pickledBluewood))
          ],
        ),
      ],
    );
  }
}
