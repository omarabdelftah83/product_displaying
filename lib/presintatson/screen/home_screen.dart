import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:product_displaying/app/constant.dart';

import '../widget/home_body.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.purple,
      appBar: homeAppar(),
      body: HomeBody(),
    );
  }
}

AppBar homeAppar() {
  return AppBar(
    backgroundColor: Colors.purple,

    elevation: 0,
    title: Text(
      'مرحبا بكم في متجر الالكترونيات',
      style: GoogleFonts.getFont('Almarai'),
    ),
    actions: [
      IconButton(
        icon: Icon(Icons.menu),
        onPressed: () {},
      )
    ],
  );
}
