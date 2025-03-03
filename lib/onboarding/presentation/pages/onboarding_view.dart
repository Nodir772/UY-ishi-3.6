import 'package:flutter/material.dart';
import 'package:profile/core/colors.dart';
import 'package:profile/onboarding/presentation/managers/onboarding_view_model.dart';
import 'package:profile/onboarding/presentation/pages/onboarding_app_bar.dart';
import 'package:profile/profile/presentation/widgets/recipe_elevated_button.dart';
import 'package:profile/onboarding/presentation/pages/onboarding_last_page.dart';

class OnboardingView extends StatelessWidget {
  const OnboardingView({
    super.key,
    required this.vm,
  });

  final OnboardingViewModel vm;

  @override
  Widget build(BuildContext context) {
    return ListenableBuilder(
      listenable: vm,
      builder: (context, child) => PageView.builder(
        controller: vm.controller,
        itemCount: vm.pages.length+1,
        itemBuilder: (context, index) {
          if (index == vm.pages.length) {
            return OnboardingLastPage(index: index,vm: vm);
          }
          return Scaffold(
            backgroundColor: AppColors.beigeColor,
            appBar: OnboardingAppBar(vm: vm, index: index),
            body: Stack(
              alignment: Alignment.bottomCenter,
              children: [
                Image.network(
                  vm.pages[index].image,
                  width: double.infinity,
                  height: 741,
                  fit: BoxFit.cover,
                ),
                Align(
                  alignment: Alignment.topCenter,
                  child: Container(
                    width: double.infinity,
                    height: 286,
                    decoration: BoxDecoration(
                      gradient: LinearGradient(
                        colors: [AppColors.beigeColor, Colors.transparent],
                        stops: [0.2, 1],
                        begin: Alignment.topCenter,
                        end: Alignment.bottomCenter,
                      ),
                    ),
                  ),
                ),
                Container(
                  width: double.infinity,
                  height: 128,
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                      colors: [AppColors.beigeColor, Colors.transparent],
                      begin: Alignment.bottomCenter,
                      end: Alignment.topCenter,
                    ),
                  ),
                ),
                Positioned(
                  bottom: 48,
                  child: RecipeElevatedButton(
                    text: "Continue",
                    fontSize: 20,
                    callback: () {
                      if (index < vm.pages.length) {
                        vm.controller.nextPage(
                          duration: Duration(milliseconds: 300),
                          curve: Curves.linear,
                        );
                      }
                    },
                    size: Size(207, 45),
                  ),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
