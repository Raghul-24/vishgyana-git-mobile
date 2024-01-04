import 'package:flutter/material.dart';
import 'package:git_mobile/src/utils/src/colors/app_colors.dart';
import 'package:git_mobile/src/utils/src/helpers/ui_dimens.dart';


abstract class TextStyles {
  static const midTextWhite = TextStyle(
    color: Colors.white,
    fontWeight: FontWeight.w600,
    fontSize: UIDimens.size14, //Utils.getFontSize(context, 30)
  );
  static const regularText = TextStyle(
    color: AppColors.primaryColor,
    fontSize: UIDimens.size14, //Utils.getFontSize(context, 30)
  );
}
