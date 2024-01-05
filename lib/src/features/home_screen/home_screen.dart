import 'package:flutter/material.dart';
import 'package:git_mobile/src/features/home_screen/common_list_tile.dart';
import 'package:git_mobile/src/features/home_screen/side_drawer.dart';
import 'package:git_mobile/src/ui_utils/app_assets.dart';
import 'package:git_mobile/src/ui_utils/common_asset_image.dart';
import 'package:git_mobile/src/ui_utils/common_network_image.dart';
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
        iconTheme: const IconThemeData(color: Colors.white),
        title: Text("Github",style: TextStyles.mediumTitleText.copyWith(color: AppColors.whiteColor),),
        centerTitle: false,
        actions: [
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 15.w),
            child: CommonAssetImage(image: AppAssets.notifications,height: 20.h,),
          )
        ],
      ),
        drawer: const SideDrawer(),
        body: SafeArea(
          child:  Column(
            children: [
              Stack(
                clipBehavior: Clip.none,
                alignment: AlignmentDirectional.topCenter,
                fit: StackFit.loose,
                children: <Widget>[
                  Container(
                    height: 138.h,
                    width: double.infinity,
                    color: AppColors.primaryColor,
                    child: Padding(
                      padding: EdgeInsets.symmetric(horizontal: 18.w),
                      child: Text("Hi Bruce Wayne",style: TextStyles.mediumTitleText.copyWith(color: AppColors.whiteColor),),
                    ),
                  ),
                  Positioned(
                    bottom: -70,
                    child: SizedBox(
                      height: 150.h,
                      width: MediaQuery.of(context).size.width/1.1.w,
                      child: Card(
                        surfaceTintColor: AppColors.whiteColor,
                        elevation: 2,
                        color: AppColors.whiteColor,
                        child: Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 10,vertical: 15),
                          child: CommonListTile(
                            image: "https://dailycart.com/cdn/shop/products/white-potatoes_8433aa9f-73ba-4a6a-845f-af672580578a.jpg?v=1640381551&width=600",
                            isHeader: true,
                            subtitleName: "VGTS",
                            titleName: "Bruce Wayne",
                          ),
                        ),
                      ),
                    )
                  ),
                ],
              ),
              HeightSpaceBox(size: 80.h),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 18.w),
                child: const Align(
                  alignment: Alignment.topLeft,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("Projects",style: TextStyles.mediumSubTitleText,),
                      CommonListTile(
                        image: "https://dailycart.com/cdn/shop/products/white-potatoes_8433aa9f-73ba-4a6a-845f-af672580578a.jpg?v=1640381551&width=600",
                        subtitleName: "VGTS",
                        titleName: "dfkemsfv",
                      ),
                      CommonListTile(
                        image: "https://dailycart.com/cdn/shop/products/white-potatoes_8433aa9f-73ba-4a6a-845f-af672580578a.jpg?v=1640381551&width=600",
                        subtitleName: "VGTS",
                        titleName: "dfkemsfv",
                      ),
                      CommonListTile(
                        image: "https://dailycart.com/cdn/shop/products/white-potatoes_8433aa9f-73ba-4a6a-845f-af672580578a.jpg?v=1640381551&width=600",
                        subtitleName: "VGTS",
                        titleName: "dfkemsfv",
                      ),
                      CommonListTile(
                        image: "https://dailycart.com/cdn/shop/products/white-potatoes_8433aa9f-73ba-4a6a-845f-af672580578a.jpg?v=1640381551&width=600",
                        subtitleName: "VGTS",
                        titleName: "dfkemsfv",
                      ),
                    ],
                  ),
                ),
              ),

            ],
          ),
        ));
  }
}


