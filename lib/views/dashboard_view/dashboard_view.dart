import 'package:flutter/material.dart';
import 'package:mahalaxmi_shop/pages/mobile/auth/dashboard/dashboard.dart';
import 'package:mahalaxmi_shop/pages/web/auth/dashboard/dashboard.dart';
import 'package:mahalaxmi_shop/widgets/responsive_layout.dart';

class DashboardView extends StatelessWidget {
  const DashboardView({super.key});

  @override
  Widget build(BuildContext context) {
    return const ResponsiveLayoutPage(
      mobile: MobileDashboard(), 
      desktop: WebDashboard()
      );
  }
}