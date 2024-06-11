import 'package:flutter/material.dart';

import 'package:flutter_svg/flutter_svg.dart';

import 'package:mahalaxmi_shop/configs/asset_path.dart';
import 'package:mahalaxmi_shop/providers/drawer_provider.dart';
import 'package:mahalaxmi_shop/views/dashboard_view/dashboard_view.dart';
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
            return Drawer(
              child: SingleChildScrollView(
                child: Column(
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
                
                    MyDrawerMenu(
                    icon: IconsAssets.shop, 
                    onTap: (){
                      drawerProvider.seletedMenu(5);
                    }, 
                    title: "Refresh",
                    isSelected: drawerProvider.selectedPageIndex ==5,
                    ), 
                    
                
                  ],
                ),
              ),
            );
          },)
          ),
          Expanded( 
            flex: 6,
            child: Column(
              children: [
                Container(
                  height: 70,
                  decoration: BoxDecoration(
                    color: Theme.of(context).colorScheme.primaryContainer
                  ),
                  child: Row(
                    children: [
                      const Spacer(),
                      Expanded(child: TextFormField(
                        decoration: InputDecoration(
                            fillColor: Theme.of(context).colorScheme.background,
                          hintText: "Enter to search....",

                           filled: true, 
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                            borderSide: BorderSide.none,
                          ),
                          
                          suffixIcon: Container(
                            decoration: BoxDecoration(
                              color: Theme.of(context).colorScheme.primary,
                              borderRadius: BorderRadius.circular(10)
                            ),

                            child: const Icon(Icons.search),
                          ),

                        ),
                      )),
                      const SizedBox(width: 20,),

                      IconButton(onPressed: (){}, icon: const Icon(Icons.dark_mode)),

                           const SizedBox(width: 20,),

                           Container(
                            padding: const EdgeInsets.all(7),
                            decoration: BoxDecoration(
                              color: Theme.of(context).colorScheme.primary.withOpacity(0.2),
                              borderRadius: BorderRadius.circular(10),
                            ),
                            child: Row(
                              children: [
                                CircleAvatar(
                                  backgroundColor: Theme.of(context).colorScheme.primary,
                                  child: Text("N" , 
                                  style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                                    color: Theme.of(context).colorScheme.onBackground
                                  ),
                                  ),
                                ),
                                const SizedBox(width: 10,),

                                const Text("Naresh Kumar")
                              ],
                            ),),
                    ],
                  ),
                ),

                 const SizedBox(height: 20,),

                const Padding(
                  padding: EdgeInsets.all(10.0),
                  child: DashboardView(),
                ),


              ],
            ),
            
            
            ),

          
        ],




      )),
    );
  } 
} 