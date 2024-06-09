import 'package:flutter/material.dart';

import 'package:flutter_svg/flutter_svg.dart';
import 'package:mahalaxmi_shop/configs/app_colors.dart';
import 'package:mahalaxmi_shop/configs/asset_path.dart';
import 'package:mahalaxmi_shop/providers/drawer_provider.dart';
import 'package:mahalaxmi_shop/widgets/my_drawer_menu.dart';
import 'package:provider/provider.dart';


class WebHomePage extends StatelessWidget {
  const WebHomePage({super.key});


  @override
  Widget build(BuildContext context) {

    final drawerProvider = Provider.of<DrawerProvider>(context, listen: false);

    return Scaffold(
      body: SafeArea(child: Row(
        children: [

          Expanded(child: 
          Consumer<DrawerProvider>(builder: (context, value, child) {
            return Column(
              children: [
                DrawerHeader(
                  child: SvgPicture.asset(IconsAssets.appIcon)),

                MyDrawerMenu(
                icon: IconsAssets.dashboard, 
                onTap: (){
                  drawerProvider.seletedMenu(0);
                }, 
                title: "Dashboard",
                isSelected: drawerProvider.selectedPageIndex ==0,
                ), 

                MyDrawerMenu(
                icon: IconsAssets.bag, 
                onTap: (){
                  drawerProvider.seletedMenu(1);
                }, 
                title: "Products",
                isSelected: drawerProvider.selectedPageIndex ==1,
                ), 

                MyDrawerMenu(
                icon: IconsAssets.shop, 
                onTap: (){
                  drawerProvider.seletedMenu(2);
                }, 
                title: "Category",
                isSelected: drawerProvider.selectedPageIndex ==2,
                ), 

                MyDrawerMenu(
                icon: IconsAssets.shop, 
                onTap: (){
                  drawerProvider.seletedMenu(3);
                }, 
                title: "Coupon",
                isSelected: drawerProvider.selectedPageIndex ==3,
                ), 

                MyDrawerMenu(
                icon: IconsAssets.shop, 
                onTap: (){
                  drawerProvider.seletedMenu(4);
                }, 
                title: "Help",
                isSelected: drawerProvider.selectedPageIndex ==4,
                ), 
                

              ],
            );
          },)
          ),
          Expanded( 
            flex: 6,
            child: Container(
            color: darkSecondryColor,
          )),

          

        ],




      )),
    );
  } 
} 