import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../../providers/add_product_provider.dart';
import 'my_dropdown_button.dart';

class ProductDetails extends StatelessWidget {
  const ProductDetails({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    var category = [
      "Electronic",
      "Clothing",
    ];
    final addProductProvider = Provider.of<AddProductProvider>(context);
    return Container(
      padding: const EdgeInsets.all(20),
      decoration: BoxDecoration(
        color: Theme.of(context).colorScheme.primaryContainer,
      ),
      child: Row(
        children: [ 
          Expanded(
            child: Column(
              children: [
                const Row(
                  children: [
                    Icon(Icons.dashboard),
                    SizedBox(width: 10),
                    Text('Product Details'),
                  ],
                ),
                const SizedBox(height: 10),
                Divider(
                  color: Theme.of(context)
                      .colorScheme
                      .onSurface
                      .withOpacity(0.1),
                ),
                const SizedBox(height: 20),
                Row(
                  children: [
                    Text(
                      'Product name',
                      style: Theme.of(context).textTheme.bodyMedium,
                    ),
                  ],
                ),
                const SizedBox(height: 10),
                TextFormField(
                  controller: addProductProvider.name,
                  decoration: const InputDecoration(
                    hintText: 'Product name',
                  ),
                ),
                const SizedBox(height: 20),
                Row(
                  children: [
                    Text(
                      'Description',
                      style: Theme.of(context).textTheme.bodyMedium,
                    ),
                  ],
                ),
                const SizedBox(height: 10),
                TextFormField(
                  maxLines: 5,
                  controller: addProductProvider.description,
                  decoration: const InputDecoration(
                    hintText: 'Description',
                  ),
                ),
                const SizedBox(height: 20),
                Row(
                  children: [
                    Text(
                      'Category',
                      style: Theme.of(context).textTheme.bodyMedium,
                    ),
                  ],
                ),
                const SizedBox(height: 10),
                SearchDropDownButton(
                  items: category,
                  selectedValue: (value) {
                    if (value != null) {
                      addProductProvider.selectedCategory = value;
                    }
                  },
                  hintText: "Select Category",
                ),
                const SizedBox(height: 20),
                Row(
                  children: [
                    Text(
                      'Sub-Category',
                      style: Theme.of(context).textTheme.bodyMedium,
                    ),
                  ],
                ),
                const SizedBox(height: 10),
                SearchDropDownButton(
                  items: category,
                  selectedValue: (value) {
                    if (value != null) {
                      addProductProvider.selectedSubCategory = value;
                    }
                  },
                  hintText: "Select Sub Category",
                ),
                const SizedBox(height: 20),
                // Row(
                //   children: [
                //     Text(
                //       'Sub-Category',
                //       style: Theme.of(context).textTheme.bodyMedium,
                //     ),
                //   ],
                // ),
                // SizedBox(height: 10),
                // Row(
                //   children: [
                //     Text('Active'),
                //     SizedBox(width: 10),
                //     Transform.scale(
                //       scale: 0.5,
                //       child: Switch(value: true, onChanged: (value) {}),
                //     ),
                //   ],
                // ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}