import 'package:flutter/material.dart';

class NaverLogin extends StatelessWidget {
  const NaverLogin({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        bottom: false,
        child: Center(
          child: Text("네이버로그인"),
        )
      ),
    );
  }
}
