import 'package:flutter/material.dart';

class Responsive {
  
  static bool isMobile(BuildContext context) =>
      MediaQuery.of(context).size.width < 850;

  static bool isTablet(BuildContext context) =>
      MediaQuery.of(context).size.width < 1100 &&
      MediaQuery.of(context).size.width >= 850;

  static bool isDesktop(BuildContext context) =>
      MediaQuery.of(context).size.width >= 1100;
}










// same as me my way

// import 'package:flutter/material.dart';

// class Responsive {
//   static bool isMobile(BuildContext context) {
//      return MediaQuery.of(context).size.width < 850;
// }

//   static bool isTablet(BuildContext context) {
//     return  MediaQuery.of(context).size.width < 1100 &&
//       MediaQuery.of(context).size.width >= 850;
// } 
//   static bool isDesktop(BuildContext context) {
//     return  MediaQuery.of(context).size.width >= 1100;
// }
// }



























// import 'package:flutter/material.dart';

// class ResponsiveLayoutPage extends StatelessWidget {
//   const ResponsiveLayoutPage({super.key, required this.mobile, required this.desktop});

//   final Widget mobile;
//   final Widget desktop;

//   @override
//   Widget build(BuildContext context) {
//     return LayoutBuilder(builder: (context, constraints) {
      
//       if(constraints.maxWidth > constraints.maxHeight ){
//         return desktop;
//       } 
//       else {
//         return mobile;
//       }
//     },);
//   }
// }


//    // this page called in views/ auth-view page