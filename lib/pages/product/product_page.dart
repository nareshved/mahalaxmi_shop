import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:mahalaxmi_shop/pages/product/widgets/products_table_data.dart';
import 'package:mahalaxmi_shop/widgets/icon_button.dart';
import 'package:mahalaxmi_shop/widgets/primary_button.dart';

class ProductPage extends StatelessWidget {
  const ProductPage({super.key});

  @override
  Widget build(BuildContext context) {

    final mq = MediaQuery.of(context).size;

    return Column(
      children: [
        Row(
          children: [
            Container(
              width: 7,
              height: 40,
              color: Theme.of(context).colorScheme.primary,
            ),
            const SizedBox(width: 10),
            Text(
              "ProductPage",
              style: Theme.of(context).textTheme.bodyMedium,
            ),
          ],
        ),
        const SizedBox(height: 10),
    
        // start page design
    
        Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
    
            MyIconButton(
              icon: Icons.refresh, onTap: (){}, color: Theme.of(context).colorScheme.primary ),
    
              SizedBox(width: mq.width * 0.010,),
    
             PrimaryButton(
              color: Theme.of(context).colorScheme.primary,
              name: "Export", icon: Icons.screen_share_outlined, onTap: () {
              
            },),
    
            SizedBox(width: mq.width * 0.010,),
    
            PrimaryButton(
              color: Theme.of(context).colorScheme.primary,
              name: "add new", icon: Icons.add, onTap: () {
              context.push("/addProduct");
            },),
        
            SizedBox(width: mq.width * 0.010,),
    
            ],
        ),
        
        SizedBox(height: mq.height * 0.020,),
        const ProductsTableData()
      ],
    );
  }
}