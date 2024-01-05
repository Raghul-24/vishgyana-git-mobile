import 'package:flutter/material.dart';
import 'package:git_mobile/src/features/project_repo_screen/project_list_tile.dart';
import 'package:git_mobile/src/ui_utils/text_styles.dart';
import 'package:git_mobile/src/utils/src/colors/app_colors.dart';
import 'package:size_setter/size_setter.dart';

class ProjectScreen extends StatelessWidget {
  const ProjectScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColors.primaryColor,
        iconTheme: const IconThemeData(color: Colors.white),
        title: Text("Project",style: TextStyles.mediumTitleText.copyWith(color: AppColors.whiteColor),),
        centerTitle: true,
        actionsIconTheme: const IconThemeData(color: AppColors.whiteColor),
      ),
      body: Column(
        children: [
          Container(
            height: 138.h,
            width: double.infinity,
            color: AppColors.primaryColor,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                ProjectListTile(
                  image: "https://dailycart.com/cdn/shop/products/white-potatoes_8433aa9f-73ba-4a6a-845f-af672580578a.jpg?v=1640381551&width=600",
                  subtitle: "Rajesh kannan",
                  isHeader: true,
                  title: "Heavenly",
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 15.w),
                  child: Text("Last Update : 24/04/2023 9:30 AM",style: TextStyles.regularBodyText.copyWith(color: AppColors.whiteColor),),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: FilterChip(
              onSelected: (bool value){},
              backgroundColor: AppColors.backgroundColor,
              shape: StadiumBorder(side: BorderSide(color: Colors.transparent)),
              label: Text(
                'GeeksforGeeks',
                style: TextStyles.mediumSubTitleText.copyWith(color: AppColors.secondaryTextColor),
              ), //Text
            ),
          ),
          ProjectListTile(
            title: "Login Flow",
            subtitle: "17/05/23 09:30AM",
          ),
        ],
      ),
    );
  }
}
