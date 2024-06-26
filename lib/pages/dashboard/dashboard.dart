import 'package:flutter/material.dart';
import 'package:mahalaxmi_shop/configs/asset_path.dart';
import 'package:mahalaxmi_shop/pages/dashboard/widgets/order_history.dart';
import 'package:mahalaxmi_shop/pages/dashboard/widgets/statics.dart';

class DashBoard extends StatelessWidget {
 const  DashBoard({super.key});


  @override
  Widget build(BuildContext context) {

    var statics = [
    {
      "icon" : IconsAssets.cart,
      "lable" : "Total Order",
      "value" : "4521",
    },

     {
      "icon" : IconsAssets.refresh,
      "lable" : "Pending Order",
      "value" : "4522",
    },

     {
      "icon" : IconsAssets.car,
      "lable" : "Processing Order",
      "value" : "45",
    },

     {
      "icon" : IconsAssets.done,
      "lable" : "Completed Order",
      "value" : "963",
    },
  ];

  //  final mq = MediaQuery.of(context).size;

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
              "Dashboard",
              style: Theme.of(context).textTheme.bodyMedium,
            ),
          ],
        ),
        const SizedBox(height: 30),
    
        // start homepage table UI
        Row(
          children: statics.map((e) => 
          Expanded(
            child: HomeStatics(lable: e["lable"]!, value: e["value"]!, icon: e["icon"]!)),
          ).toList()
        ),
         const SizedBox(height: 30),
         const OrderHistory(),
      ],
    );
  }
}