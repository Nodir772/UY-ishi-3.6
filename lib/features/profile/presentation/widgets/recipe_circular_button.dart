import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class RecipeCircularButton extends StatelessWidget {
  const RecipeCircularButton({
    super.key,
    required this.image,
    required this.callback,
    this.backgroundColor = const Color(0xFFFFC6C9),
    this.iconColor = const Color(0xFFEC888D),
  });

  final String image;
  final Color backgroundColor, iconColor;

  final VoidCallback callback;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: callback,
      child: Container(
        width: 28,
        height: 28,
        alignment: Alignment.center,
        decoration: BoxDecoration(
          color: backgroundColor,
          borderRadius: BorderRadius.circular(14),
        ),
        child: SvgPicture.asset(
          image,
          colorFilter: ColorFilter.mode(iconColor, BlendMode.srcIn),
        ),
      ),
    );
  }
}
