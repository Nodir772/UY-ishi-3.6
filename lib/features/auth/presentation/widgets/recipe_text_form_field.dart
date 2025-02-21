import 'package:flutter/material.dart';
import 'package:profile/core/utils/colors.dart';
import 'package:profile/core/utils/sizes.dart';

class RecipeTextFormField extends StatelessWidget {
  const RecipeTextFormField({
    super.key,
    required this.title,
    required this.hintText,
    required this.validator,
    required this.controller,
  });

  final String title, hintText;
  final String? Function(String? value) validator;
  final TextEditingController controller;

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
              validator: validator,
              style: TextStyle(
                color: AppColors.beigeColor,
                fontSize: 16,
                fontWeight: FontWeight.w500,
              ),
              decoration: InputDecoration(
                filled: true,
                fillColor: AppColors.pink,
                hintText: hintText,
                hintStyle: TextStyle(
                  color: AppColors.beigeColor.withValues(alpha: 0.45),
                  fontSize: 16,
                  fontWeight: FontWeight.w500,
                  height: 1,
                ),
                contentPadding: EdgeInsets.symmetric(horizontal: AppSizes.padding36),
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
