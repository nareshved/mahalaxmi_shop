import 'package:flutter/material.dart';

class OurPage extends StatelessWidget {
  const OurPage({super.key, required this.child, required this.titlePage});

  final String titlePage;

  final Widget child;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Column(
        children: [
          Row(
            children: [
              Container(
                width: 7, height: 40,
                color: Theme.of(context).colorScheme.primary,
              ),
              const SizedBox(width: 10,),
             Text("Dashboard", style: Theme.of(context).textTheme.bodyMedium,),
            ],
          ),
          const SizedBox(height: 30,),
          child,
        ],
      ),
    );
  }
}