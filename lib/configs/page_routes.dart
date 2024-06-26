import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:mahalaxmi_shop/pages/homepage/home_page.dart';

import '../pages/product/add_product_page.dart';

final GoRouter router = GoRouter(
  routes: [
    GoRoute(
      path: '/',
      builder: (BuildContext context, GoRouterState state) {
        return const HomePage();
      },
      
    ),
    GoRoute(
      path: '/addProduct',
      builder: (BuildContext context, GoRouterState state) {
        return const AddProductPage();
      },
      
    ),
  ],
);