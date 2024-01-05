import 'package:flutter/material.dart';
import 'package:git_mobile/src/routing/route_constants.dart';
import 'package:git_mobile/src/ui_utils/app_assets.dart';
import 'package:git_mobile/src/ui_utils/common_asset_image.dart';
import 'package:git_mobile/src/ui_utils/text_styles.dart';
import 'package:git_mobile/src/utils/src/colors/app_colors.dart';
import 'package:github_sign_in_plus/github_sign_in_plus.dart';
import 'package:size_setter/size_setter.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  bool isSignSuccess = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.whiteColor,
      appBar: AppBar(
          title: CommonAssetImage(
            image: AppAssets.gitLogo,
            height: 70.h,
          ),
          centerTitle: true),
      floatingActionButton: SizedBox(
        width: MediaQuery.of(context).size.width / 1.2.w,
        child: ElevatedButton(
          onPressed: () async {
            final GitHubSignIn gitHubSignIn = GitHubSignIn(
                clientId: "8e483288b14b6b627947",
                clientSecret: "74993835bc9fd73d146ebdf353ddee81e22ebab7",
                redirectUrl:
                    "https://git-mobile-vgts.firebaseapp.com/__/auth/handler");
            var result = await gitHubSignIn.signIn(context);
            switch (result.status) {
              case GitHubSignInResultStatus.ok:
                debugPrint(result.token);
                isSignSuccess = true;
                setState(() {
                  Navigator.pushNamed(context, RouteConstants.homeScreen);
                });
                break;
              case GitHubSignInResultStatus.cancelled:
              case GitHubSignInResultStatus.failed:
                debugPrint(result.errorMessage);
                break;
            }
          },
          style: ElevatedButton.styleFrom(
            backgroundColor: AppColors.primaryColor,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10),
            ),
          ),
          child: Text(
            "Sign in with Github",
            style: TextStyles.mediumBodyText.copyWith(color: Colors.white),
          ),
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 20.w),
                child: const CommonAssetImage(
                  image: AppAssets.loginImage,
                ),
              ),
              SizedBox(
                height: 20.h,
              ),
              Text(
                "Lets built from here ...",
                style: TextStyles.regularTitleText
                    .copyWith(fontSize: 20, color: AppColors.blackColor),
              ),
              const HeightSpaceBox(size: 10),
              const Text(
                "Our platform drives innovation with tools that boost developer velocity",
                style: TextStyles.regularSubTitleText,
                textAlign: TextAlign.center,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
