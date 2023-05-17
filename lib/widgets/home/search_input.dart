import 'package:challenge_app/contants/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_svg/svg.dart';

class SearchInput extends StatelessWidget {
  const SearchInput({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
          color: catskillwhite,
          borderRadius: BorderRadius.all(
            Radius.circular(8),
          )),
      child: Padding(
        padding: EdgeInsets.symmetric(vertical: 16.5, horizontal: 14),
        child: Row(
          children: [
            SvgPicture.asset('assets/icons/search.svg'),
            Flexible(child: 
            Padding(
              padding: EdgeInsets.only(left: 16),
              child:  
              new TextField(
              decoration: const InputDecoration(hintText: "Search products ",border: InputBorder.none, contentPadding: EdgeInsets.symmetric(horizontal: 0, vertical: 0),isDense: true,),
              
            ),
          ),)
            
          ],
        ),
      ),
    );
  }
}
