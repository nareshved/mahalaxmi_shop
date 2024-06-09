import 'package:flutter/material.dart';
import 'package:mahalaxmi_shop/providers/drawer_provider.dart';

import 'package:mahalaxmi_shop/views/homepage/home_page_view.dart';
import 'package:provider/provider.dart';

import 'configs/appt_themes.dart';


void main() {
  runApp(MultiProvider(
    providers: [
      ChangeNotifierProvider(create: (context) => DrawerProvider(),)
    
      
    
    ],
    child: const MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Mahalaxmi Shop',
      theme: mlightTheme,
      darkTheme: mDarkTheme,
      themeMode: ThemeMode.dark,
      home: const HomePageView(),
    );
  }
}
