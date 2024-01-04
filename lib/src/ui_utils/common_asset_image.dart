import 'package:flutter/material.dart';
import 'package:size_setter/size_setter.dart';

class CommonAssetImage extends StatelessWidget {
  const CommonAssetImage(
      {Key? key,
        required this.image,
        this.width,
        this.height,
        this.fit,
        this.onTap,
        this.color})
      : super(key: key);
  final String image;
  final double? width;
  final double? height;
  final BoxFit? fit;
  final VoidCallback? onTap;
  final Color? color;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Image.asset(
        image,
        width: width != null ? Utils.getScreenWidth(context, width!) : null,
        height: height != null ? Utils.getScreenHeight(context, height!) : null,
        fit: fit ?? BoxFit.cover,
        color: color,
      ),
    );
  }
}
