import 'package:flutter/material.dart';
import 'package:profile/core/client.dart';
import 'package:provider/provider.dart';

import '../../data/repositories/profile_repository.dart';
import '../widgets/profile_page_app_bar.dart';
import 'profile_view_model.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider<ProfileViewModel>(
      create: (context) => ProfileViewModel(
        profileRepo: ProfileRepository(
          client: ApiClient(),
        ),
      ),
      child: ProfilePageContent(),
    );
  }
}

class ProfilePageContent extends StatelessWidget {
  const ProfilePageContent({super.key});

  @override
  Widget build(BuildContext context) {
    var vm = context.watch<ProfileViewModel>();

    return switch (vm.loading) {
      true => Center(child: CircularProgressIndicator()),
      false => DefaultTabController(
          length: 2,
          child: Scaffold(
            backgroundColor: Color(0xFF1C0F0D),
            appBar: ProfilePageAppBar(),
            body: TabBarView(
              children: [
                Text(
                  "Birinchi page",
                  style: TextStyle(color: Colors.white),
                ),
                Text(
                  "Ikkinchi page",
                  style: TextStyle(color: Colors.white),
                ),
              ],
            ),
          ),
        ),
    };
  }
}
