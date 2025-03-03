import 'package:flutter/material.dart';
import 'package:profile/core/colors.dart';
import 'package:profile/profile/presentation/pages/profile_view_model.dart';
import 'package:provider/provider.dart';

import 'profile_app_bar_bottom_stats.dart';

class BottomStatsContainer extends StatelessWidget {
  const BottomStatsContainer({super.key});

  @override
  Widget build(BuildContext context) {
    var vm = context.watch<ProfileViewModel>();
    return Container(
      width: double.infinity,
      height: 50,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(14),
        border: Border.all(color: AppColors.pink, width: 1),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          ProfileAppBarBottomStats(number: vm.myProfile.recipeCount, subtitle: "recipes"),
          Container(height: 26, width: 2, color: AppColors.pink),
          ProfileAppBarBottomStats(number: vm.myProfile.followingCount, subtitle: "Following"),
          Container(height: 26, width: 2, color: AppColors.pink),
          ProfileAppBarBottomStats(number: vm.myProfile.followerCount, subtitle: "Followers"),
        ],
      ),
    );
  }
}
