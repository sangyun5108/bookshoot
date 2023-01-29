import 'package:flutter/material.dart';
import 'package:hello_word/screen/home_screen.dart';

// import 할때는 무조건 lib폴더가 기준이 된다.

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: HomeScreen(),
  ));
}
