import 'package:flutter/material.dart';
import 'package:lightmode/screens/forgot_password.dart';
import 'package:lightmode/screens/home.dart';
import 'package:lightmode/screens/password.dart';
import 'package:lightmode/screens/reducework.dart';
import 'package:lightmode/screens/login.dart';
import 'package:lightmode/screens/register.dart';
import 'package:lightmode/screens/verify.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home:Password() ,
    ),
  );
}
