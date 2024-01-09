import 'package:flutter/material.dart';
import 'package:git_mobile/src/routing/route_constants.dart';
import 'package:git_mobile/src/ui_utils/app_assets.dart';
import 'package:git_mobile/src/ui_utils/common_network_image.dart';
import 'package:git_mobile/src/ui_utils/text_styles.dart';
import 'package:git_mobile/src/utils/src/colors/app_colors.dart';
import 'package:size_setter/size_setter.dart';

class CommonListTile extends StatelessWidget {
  const CommonListTile({
    super.key, this.titleName, this.image, this.subtitleName, this.isHeader = false, this.onTap = false,
  });

  final String? titleName;
  final String? image;
  final String? subtitleName;
  final bool? isHeader;
  final bool? onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){
        Navigator.pushNamed(context, RouteConstants.projectScreen);
      },
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 5.0),
        child: Card(
          elevation: isHeader!=true?1:0,
          color: Colors.white,
          surfaceTintColor: AppColors.whiteColor,
          child: ListTile(
            title: Text(titleName!,style: TextStyles.mediumSubTitleText,),
            leading: Container(
              height: 50.h,
              width: 50.w,
              decoration: const BoxDecoration(
                color: AppColors.whiteColor,
                borderRadius: BorderRadius.all(Radius.circular(10)),
              ),
              child: CommonNetworkImage(
                image: image!,
                placeHolder: AppAssets.placeHolderImage,
                imageHeight: 20.h,
              ),
            ),
            trailing: isHeader! == true?null:const Icon(Icons.chevron_right_sharp),
            subtitle: Container(
              decoration: BoxDecoration(
                color: isHeader! == true?AppColors.whiteColor:Colors.transparent,
                borderRadius: const BorderRadius.all(Radius.circular(10)),
              ),
              child: Text(subtitleName == "null"?"Personal":subtitleName!),
            ),
          ),
        ),
      ),
    );
  }
}
