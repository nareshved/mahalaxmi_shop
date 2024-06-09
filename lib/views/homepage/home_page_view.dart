import 'package:flutter/material.dart';
import 'package:mahalaxmi_shop/pages/mobile/auth/homepage/home_page.dart';
import 'package:mahalaxmi_shop/pages/web/auth/homepage/home_page.dart';
import 'package:mahalaxmi_shop/widgets/responsive_layout.dart';

class HomePageView extends StatelessWidget {
  const HomePageView({super.key});

  @override
  Widget build(BuildContext context) {
    return const ResponsiveLayoutPage(
      mobile: MobileHomePage(), 
      desktop: WebHomePage());
  }
}