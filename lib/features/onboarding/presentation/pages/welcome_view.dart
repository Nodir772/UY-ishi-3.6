import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:go_router/go_router.dart';
import 'package:profile/core/core.dart';
import 'package:profile/core/presentation/widgets/recipe_elevated_button.dart';
import 'package:profile/core/routing/routes.dart';

class WelcomeView extends StatelessWidget {
  const WelcomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leadingWidth: 80,
        leading: Padding(
          padding: EdgeInsets.only(left: AppSizes.padding36),
          child: Align(
            alignment: Alignment.centerLeft,
            child: SvgPicture.asset(
              "assets/icons/back-arrow.svg",
              width: 30,
              height: 20,
              fit: BoxFit.cover,
            ),
          ),
        ),
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: AppSizes.padding36),
        child: Center(
          child: Column(
            spacing: 20,
            children: [
              Image.asset(
                "assets/images/welcome.png",
                width: 356 * AppSizes.wRatio,
                height: 557 * AppSizes.wRatio,
              ),
              Text(
                "Welcome",
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w600,
                ),
              ),
              Text(
                "Find the best recipes that the world "
                "can provide you also with every step "
                "that you can learn to increase your "
                "cooking skills.",
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 13,
                ),
              ),
              RecipeElevatedButton(
                text: "I'm New",
                callback: () => context.go(Routes.signup),
                foregroundColor: AppColors.pinkSub,
                backgroundColor: AppColors.pink,
                fontSize: 20,
                fontWeight: FontWeight.w600,
                size: const Size(207, 45),
              ),
              RecipeElevatedButton(
                text: "I've Been Here",
                callback: () => context.go(Routes.login),
                foregroundColor: AppColors.pinkSub,
                backgroundColor: AppColors.pink,
                fontSize: 20,
                fontWeight: FontWeight.w600,
                size: const Size(207, 45),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
