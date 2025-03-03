import 'package:flutter/material.dart';
import 'package:profile/core/sizes.dart';
import 'package:profile/profile/presentation/pages/profile_view_model.dart';
import 'package:provider/provider.dart';

class ProfileAppBarTitle extends StatelessWidget {
  const ProfileAppBarTitle({super.key});

  @override
  Widget build(BuildContext context) {
    var vm = context.watch<ProfileViewModel>();
    return SizedBox(
      width: 170 * AppSizes.wRatio,
      height: 102 * AppSizes.hRatio,
      child: Column(
        spacing: 5,
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            vm.myProfile!.fullName,
            style: TextStyle(
              fontFamily: "Poppins",
              color: Color(0xFFFD5D69),
              fontWeight: FontWeight.w500,
              fontSize: 15,
            ),
          ),
          Text(
            "@${vm.myProfile!.username}",
            style: TextStyle(
              fontFamily: "Poppins",
              color: Color(0xFFEC888D),
              fontSize: 12,
            ),
          ),
          Text(
            vm.myProfile!.bio,
            maxLines: 3,
            softWrap: true,
            style: TextStyle(
              fontFamily: "League Spartan",
              color: Colors.white,
              fontWeight: FontWeight.w300,
              fontSize: 12,
            ),
          ),
        ],
      ),
    );
  }
}
