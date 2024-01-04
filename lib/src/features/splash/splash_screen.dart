import 'package:flutter/material.dart';
import 'package:git_mobile/src/routing/route_constants.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    _startTimer();
    super.initState();
  }

  void _startTimer() async {
    Future.delayed(const Duration(seconds: 1), _moveToNextPage);
  }

  void _moveToNextPage() {
    Navigator.of(context).pushReplacementNamed(RouteConstants.homeScreen);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
      alignment: Alignment.center,
      child: const Icon(Icons.airplane_ticket),
    ));
  }
}
