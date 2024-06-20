import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../configs/app_colors.dart';

class MyDrawerMenu extends StatelessWidget {
  const MyDrawerMenu({super.key, required this.icon, required this.onTap, required this.title, this.isSelected = false});

  final VoidCallback onTap;

  final String title;

  final String icon;

  final bool isSelected;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      onTap: onTap,
                leading: SvgPicture.asset(icon,  width: 20,
                color: isSelected ? Theme.of(context).colorScheme.onSurface
                : Theme.of(context).colorScheme.onPrimaryContainer
                ),
                
                
                title: Text(title, style: Theme.of(context).textTheme.bodyMedium?.copyWith(

                  color: isSelected ? Theme.of(context).colorScheme.onSurface
                : Theme.of(context).colorScheme.onPrimaryContainer
                )
               

                ),
                selected: isSelected,
                selectedTileColor: primaryColor,
                selectedColor: Colors.white,
              );
  }
}