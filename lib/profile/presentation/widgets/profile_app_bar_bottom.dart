import 'package:flutter/material.dart';
import 'package:profile/profile/presentation/widgets/bottom_buttons_row.dart';
import 'package:profile/profile/presentation/widgets/bottom_stats_container.dart';
import 'package:profile/profile/presentation/widgets/bottom_tab_bar.dart';
import 'package:profile/profile/presentation/pages/profile_view_model.dart';
import 'package:provider/provider.dart';

class ProfileAppBarBottom extends StatelessWidget implements PreferredSizeWidget {
  const ProfileAppBarBottom({super.key});

  @override
  Size get preferredSize => const Size(double.infinity, double.infinity);

  @override
  Widget build(BuildContext context) {
    return Column(
      spacing: 10,
      children: [
        BottomButtonsRow(),
        BottomStatsContainer(),
        BottomTabBar(),
        SizedBox(height: 10),
      ],
    );
  }
}
