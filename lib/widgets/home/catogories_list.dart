import 'package:challenge_app/contants/colors.dart';
import 'package:challenge_app/widgets/home/trending_sales_list.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_svg/svg.dart';

class CategoriesList extends StatelessWidget {
  const CategoriesList({super.key});

  @override
  Widget build(BuildContext context) {
    return 
    
    ListView(
      shrinkWrap: true,
      // This next line does the trick.
      scrollDirection: Axis.horizontal,
      children: <Widget>[
        Padding(padding: EdgeInsets.only(left: 16,right: 10),child: 
        Container(
          decoration: BoxDecoration(
            color: cornflowerBlue,
            borderRadius: BorderRadius.all(Radius.circular(25))
          ),
          child:
          Padding(padding: EdgeInsets.symmetric(horizontal: 18,vertical: 6),child: 
           Text('All',
           style: TextStyle(fontFamily: 'Inter',fontWeight: FontWeight.w500,fontSize: 15,color: Colors.white),
           
           ),)
        
        ),),
        Padding(padding: EdgeInsets.only(right: 10),child: 
        Container(
          decoration: BoxDecoration(
            border: Border.all(color: athensGrayTwo),
            borderRadius: BorderRadius.all(Radius.circular(25))
          ),
          child:
          Padding(padding: EdgeInsets.symmetric(horizontal: 18,vertical: 6),child: 
          Row(children: [
            SvgPicture.asset('assets/icons/gaming.svg',colorFilter:  ColorFilter.mode(athensGrayTwo, BlendMode.srcIn),),
            SizedBox(width: 10.22,),
            Text('Gamming',
           style: TextStyle(fontFamily: 'Inter',fontWeight: FontWeight.w500,fontSize: 15,color: pickledBluewood),
           ), 
          ],)
           )
        ),),
        Padding(padding: EdgeInsets.only(right: 10),child: 
        Container(
          decoration: BoxDecoration(
            border: Border.all(color: athensGrayTwo),
            borderRadius: BorderRadius.all(Radius.circular(25))
          ),
          child:
          Padding(padding: EdgeInsets.symmetric(horizontal: 18,vertical: 6),child: 
          Row(children: [
            SvgPicture.asset('assets/icons/speaker.svg',colorFilter:  ColorFilter.mode(athensGrayTwo, BlendMode.srcIn),),
            SizedBox(width: 10.22,),
            Text('Speaker',
           style: TextStyle(fontFamily: 'Inter',fontWeight: FontWeight.w500,fontSize: 15,color: pickledBluewood),
           ), 
          ],)
           )
        ),),
        Padding(padding: EdgeInsets.only(right: 10),child: 
        Container(
          decoration: BoxDecoration(
            border: Border.all(color: athensGrayTwo),
            borderRadius: BorderRadius.all(Radius.circular(25))
          ),
          child:
          Padding(padding: EdgeInsets.symmetric(horizontal: 18,vertical: 6),child: 
          Row(children: [
            SvgPicture.asset('assets/icons/headphones.svg',colorFilter:  ColorFilter.mode(athensGrayTwo, BlendMode.srcIn),),
            SizedBox(width: 10.22,),
            Text('Headphones',
           style: TextStyle(fontFamily: 'Inter',fontWeight: FontWeight.w500,fontSize: 15,color: pickledBluewood),
           ), 
          ],)
           ),
        ),),
        
      ],
    );
  }
}
