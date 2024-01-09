import 'package:flutter/material.dart';
import 'package:git_mobile/src/routing/route_constants.dart';
import 'package:git_mobile/src/services/local_storage/key_value_storage_service.dart';
import 'package:git_mobile/src/ui_utils/app_assets.dart';
import 'package:git_mobile/src/ui_utils/common_asset_image.dart';
import 'package:size_setter/size_setter.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  final KeyValueStorageService _keyValueStorageService =
  KeyValueStorageService();

  @override
  void initState() {
    _startTimer();
    super.initState();
  }

  void _startTimer() async {
    Future.delayed(const Duration(seconds: 1), _moveToNextPage);
  }

  void _moveToNextPage() {
    if (_keyValueStorageService.getAuthState() == true){
    Navigator.of(context).pushReplacementNamed(RouteConstants.homeScreen);
    } else {
      Navigator.of(context).pushReplacementNamed(RouteConstants.loginScreen);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
      alignment: Alignment.center,
      child: CommonAssetImage(image: AppAssets.gitLogo,width: 200.w,),
    ));
  }
}
