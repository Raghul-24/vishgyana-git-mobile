import 'package:flutter/material.dart';
import 'package:git_mobile/src/ui_utils/app_assets.dart';
import 'package:git_mobile/src/ui_utils/common_asset_image.dart';
import 'package:git_mobile/src/ui_utils/text_styles.dart';
import 'package:git_mobile/src/utils/src/colors/app_colors.dart';
import 'package:size_setter/size_setter.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColors.primaryColor,
        title: Text("Github",style: TextStyles.mediumTitleText.copyWith(color: AppColors.whiteColor),),
        centerTitle: false,
        actions: [
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 15.w),
            child: CommonAssetImage(image: AppAssets.notifications,height: 20.h,),
          )
        ],
      ),
        body: GestureDetector(
            onTap: () {
              // Navigator.push(context,
              //     MaterialPageRoute(builder: (context) => const MainFlow()));
            },
            child: SafeArea(
              child: const Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("Hello",style: TextStyles.regularBodyText,),
                ],
              ),
            )));
  }
}
