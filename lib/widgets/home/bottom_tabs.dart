import 'package:challenge_app/contants/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_svg/svg.dart';

class BottomTabs extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      type: BottomNavigationBarType.fixed,
      selectedItemColor: electricViolet,
      items: <BottomNavigationBarItem>[
        BottomNavigationBarItem(
            icon: SvgPicture.asset(
              'assets/icons/home.svg',
              colorFilter: ColorFilter.mode(electricViolet, BlendMode.srcIn),
            ),
            label: 'Home',
           ),
         BottomNavigationBarItem(
            icon: SvgPicture.asset(
              'assets/icons/heart.svg',
             colorFilter: ColorFilter.mode(gullGray, BlendMode.srcIn),
            ),
            label: 'Favourites',
            
           ),
        BottomNavigationBarItem(
            icon: SvgPicture.asset(
              'assets/icons/notifications.svg',
          colorFilter: ColorFilter.mode(gullGray, BlendMode.srcIn),
            ),
            label: 'Notifications',
           ),
        BottomNavigationBarItem(
            icon: SvgPicture.asset(
              'assets/icons/user.svg',
            colorFilter: ColorFilter.mode(gullGray, BlendMode.srcIn),
            ),
            label: 'Profile',
           ),
        
      ],
    );
  }
}
