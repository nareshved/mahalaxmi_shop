import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:provider/provider.dart';


import '../../providers/add_product_provider.dart';
import '../../widgets/primary_button.dart';
import 'widgets/product_amount.dart';
import 'widgets/product_details.dart';
import 'widgets/product_meta.dart';

class AddProduct extends StatelessWidget {
  const AddProduct({super.key});

  @override
  Widget build(BuildContext context) {
   // final _stringTagController = StringTagController();

    final addProductProvider = Provider.of<AddProductProvider>(context);
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.primaryContainer,
        title: const Text('Add Product'),
        actions: [
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Row(
                children: [
                  Consumer<AddProductProvider>(
                    builder: (context, value, child) {
                      return value.isLoading
                          ? const CircularProgressIndicator()
                          : PrimaryButton(
                              name: "Save",
                              icon: Icons.save,
                              onTap: () {
                                addProductProvider.addProduct();
                              },
                              color: Colors.green);
                    },
                  ),
                  const SizedBox(width: 20),
                  PrimaryButton(
                      name: "Close",
                      icon: Icons.close,
                      onTap: () {
                        context.pop();
                      },
                      color: Colors.red),
                  const SizedBox(width: 20),
                ],
              ),
            ],
          )
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              const Row(
                children: [
                  Expanded(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        ProductDetails(),
                      ],
                    ),
                  ),
                  SizedBox(width: 20),
                  Expanded(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        ProductMeta(),
                      ],
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 20),
              const ProductAmount(),
              const SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  PrimaryButton(
                      name: "Close",
                      icon: Icons.close,
                      onTap: () {
                        context.pop();
                      },
                      color: Colors.red),
                  const SizedBox(width: 20),
                  Consumer<AddProductProvider>(
                    builder: (context, value, child) {
                      return value.isLoading
                          ? const CircularProgressIndicator()
                          : PrimaryButton(
                              name: "Save",
                              icon: Icons.save,
                              onTap: () {
                                addProductProvider.addProduct();
                              },
                              color: Colors.green);
                    },
                  ),
                  const SizedBox(width: 20),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}