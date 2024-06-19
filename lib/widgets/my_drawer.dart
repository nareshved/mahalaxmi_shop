import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:provider/provider.dart';

import '../configs/asset_path.dart';
import '../providers/drawer_provider.dart';
import 'my_drawer_menu.dart';

class MyDrawer extends StatelessWidget {
  const MyDrawer({super.key});

  @override
  Widget build(BuildContext context) {

       final drawerProvider = Provider.of<DrawerProvider>(context, listen: false);


    return Consumer<DrawerProvider>(builder: (context, value, child) {
            return Drawer(
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    DrawerHeader(
                      child: SvgPicture.asset(IconsAssets.appIcon,)),
                      
                      // Image.asset(IconsAssets.appIconLogo,)),

                      //SvgPicture.asset(IconsAssets.appIconLogo,)),
                
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
                    title: "Settings",
                    isSelected: drawerProvider.selectedPageIndex ==4,
                    ), 
                
                  
                    
                
                  ],
                ),
              ),
            );
          },);
  }
}