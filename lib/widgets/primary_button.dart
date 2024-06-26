import 'package:flutter/material.dart';
import 'package:mahalaxmi_shop/const/animated_container_duration.dart';
import 'package:mahalaxmi_shop/widgets/hover_effect.dart';

class PrimaryButton extends StatelessWidget {
  const PrimaryButton({super.key, required this.name, required this.icon, required this.onTap, required this.color});

  final String name;
  final IconData icon;
  final VoidCallback onTap;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: HoverEffect(
        builder: (isHover) => AnimatedContainer(
          duration: DefaultValue.animationDuration,
          padding: const EdgeInsets.all(10),
          decoration: BoxDecoration(
            color: isHover ? color
            : color.withOpacity(0.2),
          borderRadius: BorderRadius.circular(5),
          ),
          
          child: Row(
            children: [
              Icon(icon,
              color: isHover ? Colors.white : color,
              ),
              Text(name,
              style: TextStyle(
                color: isHover ? Colors.white : color
              ),
              ),

            ],
          ),

          ),
        ),
    );
  }
}