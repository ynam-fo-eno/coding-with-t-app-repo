// ignore_for_file: use_super_parameters

import "package:flutter/material.dart";



class WelcomePage extends StatelessWidget {
  const WelcomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text("Welcome to this crazy app!",
        style: Theme.of(context).textTheme.headlineLarge
        ),
      ),
    );
  }
}