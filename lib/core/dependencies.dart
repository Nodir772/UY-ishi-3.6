import 'package:dio/dio.dart';
import 'package:profile/core/client.dart';
import 'package:profile/core/interceptor.dart';
import 'package:profile/features/auth/data/repositories/AuthRepository.dart';
import 'package:profile/features/onboarding/data/repositories/onboarding_repositories.dart';
import 'package:provider/provider.dart';
import 'package:provider/single_child_widget.dart';

List<SingleChildWidget> providers = [
  Provider(
    create: (context) => ApiClient(),
  ),
  Provider(
    create: (context) => AuthRepository(
      client: context.read(),
    ),
  ),
  Provider(
    create: (context) => OnboardingRepository(
      client: context.read(),
    ),
  ),
];
