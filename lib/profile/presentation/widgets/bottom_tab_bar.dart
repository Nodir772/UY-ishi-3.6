import 'package:flutter/material.dart';
import 'package:profile/core/colors.dart';

class BottomTabBar extends StatelessWidget {
  const BottomTabBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return TabBar(
      indicatorSize: TabBarIndicatorSize.tab,
      indicatorColor: AppColors.redPinkMain,
      tabs: [
        Text(
          "Recipes",
          style: TextStyle(
            color: Colors.white,
            fontFamily: "Poppins",
            fontSize: 12,
          ),
        ),
        Text(
          "Favorites",
          style: TextStyle(
            color: Colors.white,
            fontFamily: "Poppins",
            fontSize: 12,
          ),
        ),
      ],
    );
  }
}
