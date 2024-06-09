import 'package:flutter/material.dart';
import 'package:mahalaxmi_shop/widgets/responsive_layout.dart';

import '../pages/mobile/auth/auth.dart';
import '../pages/web/auth/auth.dart';

class AuthViewPage extends StatelessWidget {
  const AuthViewPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const ResponsiveLayoutPage(
      mobile: MobileAuthPage(),
       desktop: WebAuthPage());
  }
}

// this page called from widget/ responsive layout page