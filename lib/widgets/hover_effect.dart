import 'dart:developer';

import 'package:flutter/material.dart';

class HoverEffect extends StatefulWidget {
  const HoverEffect({super.key, required this.builder});

  final Widget Function(bool isHover) builder; 

  @override
  State<HoverEffect> createState() => _HoverEffectState();
}

class _HoverEffectState extends State<HoverEffect> {

   bool isHover = false;

  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      onEnter: (event) {
        isHover = true;

        setState(() {
         
        });

         log("you are enter in isHover");
      },


      onExit: (event) {
        isHover = false;

        setState(() {
          
        });

         log("you are exit in isHover");
      },

      child: widget.builder(isHover),
    );
  }
}