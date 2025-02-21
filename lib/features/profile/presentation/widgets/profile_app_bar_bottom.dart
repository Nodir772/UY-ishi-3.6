import 'package:flutter/material.dart';

import 'bottom_buttons_row.dart';
import 'bottom_stats_container.dart';
import 'bottom_tab_bar.dart';

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
