import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:profile/core/utils/colors.dart';
import 'package:profile/core/utils/sizes.dart';

class RecipePasswordFormField extends StatelessWidget {
  const RecipePasswordFormField({
    super.key,
    required this.controller,
    required this.title,
    required this.validator
  });

  final TextEditingController controller;
  final String title;
  final String? Function(String? value) validator;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        spacing: 10,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            title,
            style: TextStyle(
              fontSize: 15,
              fontWeight: FontWeight.w500,
            ),
          ),
          SizedBox(
            width: 375 * AppSizes.wRatio,
            child: TextFormField(
              controller: controller,
              maxLines: 1,
              validator: validator,
              style: TextStyle(
                color: AppColors.beigeColor,
                fontSize: 16,
                fontWeight: FontWeight.w500,
              ),
              decoration: InputDecoration(
                suffix: SvgPicture.asset(
                  "assets/icons/password.svg",
                  width: 25,
                  height: 25,
                  alignment: Alignment.center,
                  fit: BoxFit.cover,
                ),
                filled: true,
                fillColor: AppColors.pink,
                hintText: "●●●●●●●",
                hintStyle: TextStyle(
                  letterSpacing: 5,
                  color: AppColors.beigeColor.withValues(alpha: 0.45),
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
                contentPadding: EdgeInsets.only(left: AppSizes.padding36, right: 20),
                border: OutlineInputBorder(
                  borderSide: BorderSide.none,
                  borderRadius: BorderRadius.circular(18),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
