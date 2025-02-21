import 'package:flutter/material.dart';
import 'package:profile/core/core.dart';
import 'package:profile/core/presentation/widgets/recipe_elevated_button.dart';
import 'package:profile/features/auth/presentation/manager/sign_up_view_model.dart';
import 'package:profile/features/auth/presentation/pages/recipe_date_of_birth_field.dart';
import 'package:profile/features/auth/presentation/widgets/recipe_password_form_field.dart';
import 'package:profile/features/auth/presentation/widgets/recipe_text_form_field.dart';
import 'package:provider/provider.dart';

class SignUpView extends StatelessWidget {
  const SignUpView({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider<SignUpViewModel>(
      create: (context) => SignUpViewModel(
        authRepo: context.read(),
      ),
      builder: (context, child) {
        final vm = context.read<SignUpViewModel>();
        return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: Text("Sign Up"),
        ),
        body: ListView(
          children: [
            SizedBox(height: 20),
            Form(
              key: vm.formKey,
              child: Column(
                spacing: 10,
                children: [
                  RecipeTextFormField(
                    title: "First Name",
                    hintText: "Nodir",
                    validator: (value) => null,
                    controller: vm.firstNameController,
                  ),
                  RecipeTextFormField(
                    title: "Last Name",
                    hintText: "Xusniddinov",
                    validator: (value) => null,
                    controller: vm.lastNameController,
                  ),
                  RecipeTextFormField(
                    title: "Username",
                    hintText: "chef-boss",
                    validator: (value) => null,
                    controller: vm.usernameController,
                  ),
                  RecipeTextFormField(
                    title: "Email",
                    hintText: "example@example.com",
                    validator: (value) => null,
                    controller: vm.emailController,
                  ),
                  RecipeTextFormField(
                    title: "Phone Number",
                    hintText: "+9989012345678",
                    validator: (value) => null,
                    controller: vm.numberController,
                  ),
                  RecipeDateOfBirthField(),
                  RecipePasswordFormField(
                    controller: vm.passwordController,
                    title: "Password",
                    validator: (value) => null,
                  ),
                  RecipePasswordFormField(
                    controller: vm.confirmPasswordController,
                    title: "Confirm Password",
                    validator: (value) {
                      if (vm.passwordController.text != vm.confirmPasswordController.text) {
                        return "Passwords do not match!";
                      }
                      return null;
                    },
                  ),
                ],
              ),
            ),
            SizedBox(height: 20),
            RecipeElevatedButton(
              text: "Sign Up",
              size: Size(195, 45),
              foregroundColor: Colors.white,
              backgroundColor: AppColors.redPinkMain,
              callback: () async {
                if (vm.formKey.currentState!.validate()) {
                  if (await vm.signUp() && context.mounted) {
                    await showDialog(
                      context: context,
                      builder: (context) => Center(
                        child: Container(
                          width: 250,
                          height: 286,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(40),
                          ),
                          child: Column(
                            children: [
                              Text("Sign Up Successful!"),
                            ],
                          ),
                        ),
                      ),
                    );
                  }
                }
              },
            ),
          ],
        ),
      );
      },
    );
  }
}
