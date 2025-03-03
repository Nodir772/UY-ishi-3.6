import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:profile/core/colors.dart';
import 'package:profile/onboarding/presentation/managers/onboarding_view_model.dart';
import 'package:profile/profile/presentation/widgets/recipe_elevated_button.dart';

class OnboardingLastPage extends StatelessWidget {
  const OnboardingLastPage({super.key, required this.vm, required this.index});

  final OnboardingViewModel vm;

  final int index;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.beigeColor,
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(36.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Align(
                  alignment: Alignment.topLeft,
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
                GridView.builder(
                  shrinkWrap: true,
                  physics: NeverScrollableScrollPhysics(),
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    crossAxisSpacing: 8,
                    mainAxisSpacing: 8,
                    childAspectRatio: 1,
                  ),
                  itemCount: 6,
                  itemBuilder: (context, index) {
                    return ClipRRect(
                      borderRadius: BorderRadius.circular(12),
                      child: Image.network(
                        "https://source.unsplash.com/200x200/?food,cooking&sig=$index",
                        fit: BoxFit.cover,
                      ),
                    );
                  },
                ),
                const SizedBox(height: 10),
                const Text(
                  "Welcome",
                  style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold, color: Colors.white),
                ),
                const Text(
                  "Find the best recipes that the world can provide you also with every step "
                  "that you can learn to increase your cooking skills.",
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 16, color: Colors.white70),
                ),
                const SizedBox(height: 10),
                RecipeElevatedButton(
                  text: "I'm New",
                  fontSize: 18,
                  callback: () => Navigator.pushNamed(context, '/signup'), // Ro'yxatdan o'tish sahifasi
                  size: const Size(207, 45),
                ),
                const SizedBox(height: 10),
                RecipeElevatedButton(
                  text: "I've Been Here",
                  fontSize: 18,
                  callback: () => Navigator.pushNamed(context, '/home'), // Bosh sahifaga yo'naltirish
                  size: const Size(207, 45),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
