import 'package:flutter/material.dart';
import 'package:git_mobile/src/ui_utils/app_assets.dart';
import 'package:git_mobile/src/ui_utils/common_asset_image.dart';
import 'package:git_mobile/src/ui_utils/common_network_image.dart';
import 'package:git_mobile/src/ui_utils/text_styles.dart';
import 'package:git_mobile/src/utils/src/colors/app_colors.dart';
import 'package:size_setter/size_setter.dart';

class ProjectListTile extends StatelessWidget {
  const ProjectListTile({
    super.key, this.title, this.subtitle, this.image, this.isHeader = false,
  });
  final String? title;
  final String? subtitle;
  final String? image;
  final bool? isHeader;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(title!,style: TextStyles.mediumSubTitleText.copyWith(color:isHeader! == true? AppColors.whiteColor:AppColors.primaryTextColor),),
      subtitle: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(subtitle!,style: TextStyles.regularBodyText.copyWith(color: isHeader! == true? AppColors.whiteColor:AppColors.secondaryTextColor),),
          isHeader==false?
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 5.0),
            child: Row(
              children: [
                CommonAssetImage(image: AppAssets.personCheck,),
                WidthSpaceBox(size: 10),
                Text("Name",style: TextStyles.regularSmallText,),
              ],
            ),
          ):SizedBox(),
        ],
      ),
      leading: Container(
        height: 50.h,
        width: 50.w,
        decoration: BoxDecoration(
          color: isHeader! == true? AppColors.whiteColor :AppColors.lightOrangeColor,
          borderRadius: BorderRadius.only(topLeft: Radius.circular(10),bottomRight: Radius.circular(10),topRight: Radius.circular(10)),
        ),
        child:isHeader! == true ?CommonNetworkImage(
          image: image!,
          placeHolder: AppAssets.placeHolderImage,
          imageHeight: 20.h,
        )
            :Padding(
          padding: const EdgeInsets.all(8.0),
          child: CommonAssetImage(image: AppAssets.folder,),
        ),
      ),
    );
  }
}