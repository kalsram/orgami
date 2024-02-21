import 'package:flutter/material.dart';
import 'package:orgami/bottom.dart';
import 'package:orgami/buyer.dart';
import 'package:orgami/home.dart';

import 'package:orgami/login.dart';
import 'package:orgami/new.dart';

import 'package:orgami/order.dart';
import 'package:orgami/registration.dart';
import 'package:orgami/home.dart';
import 'package:orgami/request.dart';
import 'package:orgami/seller.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.grey,
      ),
      home: Request(),
    );
  }
}
