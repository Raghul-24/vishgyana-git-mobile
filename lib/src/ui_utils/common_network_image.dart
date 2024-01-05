import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:git_mobile/src/ui_utils/app_assets.dart';
import 'package:size_setter/size_setter.dart';

class CommonNetworkImage extends StatelessWidget {
  final String image;
  final String? placeHolder;
  final double? imageWidth;
  final double? imageHeight;
  const CommonNetworkImage(
      {super.key, required this.image, this.placeHolder, this.imageWidth, this.imageHeight});
  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(8),
      child: CachedNetworkImage(
        imageBuilder: (context,imageProvider){
          return Container(
            width: imageWidth??90.w,
            height: imageHeight??MediaQuery.of(context).size.height,
            decoration: BoxDecoration(
                image: DecorationImage(
                    image: imageProvider,
                    fit: BoxFit.fitHeight
                )
            ),
          );
        },
        imageUrl: image,
        placeholder: (context,url)=>SizedBox(width: 90.w,child: Image.asset(placeHolder??AppAssets.placeHolderImage),),
        errorWidget: (context,url,error)=>Container(
          color: Colors.black,
          child: Icon(Icons.error,size: 100.h,color: Colors.red,),
        ),
      ),
    );
  }
}