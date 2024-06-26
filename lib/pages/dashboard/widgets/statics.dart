import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:mahalaxmi_shop/const/animated_container_duration.dart';
import 'package:mahalaxmi_shop/widgets/hover_effect.dart';

class HomeStatics extends StatelessWidget {
  const HomeStatics({super.key, required this.lable, required this.value, required this.icon});

  final String lable;
   final String value;
   final String icon;

  @override
  Widget build(BuildContext context) {
    return HoverEffect(
      builder: (isHover) => AnimatedContainer(
        
        duration: DefaultValue.animationDuration,
      
        margin: const EdgeInsets.only(right: 10),
                padding: const EdgeInsetsDirectional.all(15),
                color: isHover ? Theme.of(context).colorScheme.primary.withOpacity(0.1) 
                : Theme.of(context).colorScheme.primaryContainer,
               // height: 100,
                child: Row(
                  children: [
                    Container(
                      width: 50, height: 50,
                      decoration: BoxDecoration(
                        color: Theme.of(context).colorScheme.primary.withOpacity(0.2),
                       borderRadius: BorderRadius.circular(100),
                      ),
                      padding: const EdgeInsets.all(15),
                      child: SvgPicture.asset(icon, 
                      width: 25, color: Theme.of(context).colorScheme.primary),
                    ),
                  const SizedBox(width: 10),
      
                     Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(lable, style: Theme.of(context).textTheme.labelMedium,),
                        Text(value, style: Theme.of(context).textTheme.headlineMedium,),
                      ],
                    )
                  ],
                ),
              ),
    );
  }
}