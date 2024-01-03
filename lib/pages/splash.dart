import 'package:flutter/material.dart';
import 'package:gochecker/pages/home.dart';

class Splash extends StatefulWidget {
  final String splashImageTag;
  final double splashImageProportion;
  final int fadeSeconds;

  const Splash({
    Key? key,
    this.splashImageTag = "splashImageTag",
    this.splashImageProportion = 0.8,
    this.fadeSeconds = 3
  }) : super(key: key);

  @override
  State<Splash> createState() => _SplashState();
}

class _SplashState extends State<Splash> with SingleTickerProviderStateMixin {
  late Animation<double> fadeInFadeOut;
  late AnimationController animation;

  @override
  void initState() {
    animation = AnimationController(vsync: this, duration: Duration(seconds: widget.fadeSeconds));
    fadeInFadeOut = Tween<double>(begin: 0.0, end: 1.0).animate(animation);
    animation.forward();

    Future.delayed(Duration(seconds: widget.fadeSeconds + 1), () {
      Navigator.of(context).pushReplacement(
        MaterialPageRoute(builder: (_) => const HomePage(title: '',)),
      );
    });
    super.initState();
  }

  @override
  dispose() {
    animation.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 12.0),
          child: Center(
            child: FadeTransition(
              opacity: fadeInFadeOut,
              child: Hero(
                tag: widget.splashImageTag,
                child: Image.asset(
                  'assets/logo/logo_animada.gif',
                ),
              ),
            ),
          )
        )
      )
    );
  }
}