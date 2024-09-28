import 'package:flutter/material.dart';
import 'package:webapp/constants/colors.dart';
import 'package:webapp/widgets/header_desktop.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: CustomColor.scaffoldBg,
      body: ListView(
        children: [
          // Hero Section
          const HeaderDesktop(),
          // Skills Section
          Container(
            height: 500,
            width: double.maxFinite,
            color: Colors.amber,
          ),
          // Projects Section
          Container(
            height: 500,
            width: double.maxFinite,
            color: Colors.amber,
          ),
          // Contact Section
          const SizedBox(
            height: 500,
            width: double.maxFinite,
          ),
          // Footer Section
          Container(
            height: 500,
            width: double.maxFinite,
            color: Colors.amber,
          ),
        ],
      ),
    );
  }
}
