import 'package:flutter/material.dart';
import 'package:mahalaxmi_shop/providers/drawer_provider.dart';
import 'package:mahalaxmi_shop/widgets/my_app_bar.dart';

import 'package:mahalaxmi_shop/widgets/responsive_layout.dart';
import 'package:provider/provider.dart';

import '../../widgets/my_drawer.dart';


class HomePage extends StatelessWidget {
  const HomePage({super.key});


  @override
  Widget build(BuildContext context) {

   // final drawerProvider = Provider.of<DrawerProvider>(context, listen: false);

    final isDesktop = Responsive.isDesktop(context);

    return Scaffold(

      drawer: isDesktop ? null : const MyDrawer(),

      body: SafeArea(child: Row(
        children: [

          if(isDesktop)

          const Expanded(child: 
          MyDrawer(),
          ),


           Expanded( 
            flex: 6,
            child: Column(
              children: [
                const MyAppBar(),
                 const SizedBox(height: 20,),

                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Consumer<DrawerProvider>(builder: (context, value, child) => value.pages[value.selectedPageIndex]),
                ),


              ],
            ),
            
            
            ),

          
        ],




      )),
    );
  } 
} 