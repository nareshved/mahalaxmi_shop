import 'package:flutter/material.dart';
import 'package:mahalaxmi_shop/pages/category/category_page.dart';
import 'package:mahalaxmi_shop/pages/coupon/coupon_page.dart';
import 'package:mahalaxmi_shop/pages/dashboard/dashboard.dart';
import 'package:mahalaxmi_shop/pages/product/product_page.dart';
import 'package:mahalaxmi_shop/pages/settings/settings_page.dart';

class DrawerProvider extends ChangeNotifier {

 int selectedPageIndex = 0;


 // created page list for showing currPage index in homepage/dashboard

   var pages = const [
   DashBoard(),
   ProductPage(),
   CategoryPage(),
   CouponPage(),
   SettingsPage()
   ];

 void seletedMenu(int index) {
    selectedPageIndex = index;
    notifyListeners();
 }


}