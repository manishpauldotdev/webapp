import 'package:flutter/material.dart';
import 'package:webapp/constants/colors.dart';
import 'package:webapp/constants/size.dart';
import 'package:webapp/widgets/drawer_mobile.dart';
import 'package:webapp/widgets/header_desktop.dart';
import 'package:webapp/widgets/header_mobile.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final scaffoldKey = GlobalKey<ScaffoldState>();
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, contraints) {
      return Scaffold(
        key: scaffoldKey,
        backgroundColor: CustomColor.scaffoldBg,
        endDrawer: contraints.maxWidth > kMinDesktopWidth ? null : const DrawerMobile(),
        body: ListView(
          children: [
            // Hero Section
            if (contraints.maxWidth >= kMinDesktopWidth)
              const HeaderDesktop()
            else
              HeaderMobile(
                onLogoTap: () {},
                onMenuTap: () {
                  scaffoldKey.currentState?.openEndDrawer();
                },
              ),
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
    });
  }
}
