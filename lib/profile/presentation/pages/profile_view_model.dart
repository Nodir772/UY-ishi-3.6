import 'package:flutter/material.dart';
import 'package:profile/profile/data/models/profile_model.dart';
import 'package:profile/profile/data/repositories/profile_repository.dart';

class ProfileViewModel extends ChangeNotifier {
  ProfileViewModel({
    required ProfileRepository profileRepo,
  }) : _profileRepo = profileRepo {
    load();
  }

  bool loading = true;

  final ProfileRepository _profileRepo;
  late ProfileModel myProfile;

  Future load() async {
    loading = true;
    notifyListeners();

    myProfile = await _profileRepo.fetchMyProfile();
    loading = false;
    notifyListeners();
  }
}
