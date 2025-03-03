import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:profile/core/colors.dart';
import 'package:profile/core/sizes.dart';
import 'package:profile/onboarding/presentation/managers/onboarding_view_model.dart';
import 'package:profile/profile/presentation/widgets/recipe_elevated_button.dart';

class OnboardingAppBar extends StatelessWidget implements PreferredSizeWidget {
  const OnboardingAppBar({
    super.key,
    required this.vm,
    required this.index,
  });

  final int index;

  @override
  Size get preferredSize => const Size(double.infinity, 156);
  final OnboardingViewModel vm;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: AppSizes.padding36),
      child: AppBar(
        backgroundColor: AppColors.beigeColor,
        leading: Visibility(
          visible: index != 0,
          child: Align(
            alignment: Alignment.centerLeft,
            child: GestureDetector(
              onTap: () => vm.controller.previousPage(
                duration: Duration(milliseconds: 300),
                curve: Curves.linear,
              ),
              child: SvgPicture.asset(
                "assets/icons/back-arrow.svg",
                width: 30,
                height: 20,
                fit: BoxFit.cover,
              ),
            ),
          ),
        ),
        bottom: PreferredSize(
          preferredSize: Size(double.infinity, 100),
          child: Align(
            alignment: Alignment.centerLeft,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  vm.pages[index].title,
                  style: TextStyle(
                    color: Colors.white,
                    fontFamily: "Poppins",
                    fontSize: 20,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                Text(
                  vm.pages[index].subtitle,
                  style: TextStyle(
                    color: Colors.white,
                    fontFamily: "Poppins",
                    fontSize: 13,
                  ),
                ),
                SizedBox(height: 40),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
