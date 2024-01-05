import 'package:flutter/material.dart';
import 'package:git_mobile/src/features/home_screen/common_list_tile.dart';
import 'package:git_mobile/src/ui_utils/app_assets.dart';
import 'package:git_mobile/src/ui_utils/common_network_image.dart';
import 'package:git_mobile/src/utils/src/colors/app_colors.dart';
import 'package:size_setter/size_setter.dart';

class SideDrawer extends StatelessWidget {
  const SideDrawer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Drawer(
      elevation: 0,
      backgroundColor: AppColors.whiteColor,
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
           DrawerHeader(
            decoration: BoxDecoration(
              border: Border(
                bottom: Divider.createBorderSide(context,
                    color: Colors.white),
              ),
            ),
            child: CommonListTile(
              image: "https://dailycart.com/cdn/shop/products/white-potatoes_8433aa9f-73ba-4a6a-845f-af672580578a.jpg?v=1640381551&width=600",
              titleName: "Bruce Wayne",
              isHeader: true,
              subtitleName: "VGTS",
            ),
          ),
          ListTile(
            leading: Container(
              height: 50.h,
              width: 50.w,
              decoration: const BoxDecoration(
                color: AppColors.whiteColor,
                borderRadius: BorderRadius.all(Radius.circular(10)),
              ),
              child: CommonNetworkImage(
                image: "https://dailycart.com/cdn/shop/products/white-potatoes_8433aa9f-73ba-4a6a-845f-af672580578a.jpg?v=1640381551&width=600",
                placeHolder: AppAssets.placeHolderImage,
                imageHeight: 20.h,
              ),
            ),
            title: Text("VGTS"),
          ),
        ],
      ),
    );
  }
}
