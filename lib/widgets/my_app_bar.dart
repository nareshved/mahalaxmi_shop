
import 'package:flutter/material.dart';
import 'responsive_layout.dart';

class MyAppBar extends StatelessWidget {
  const MyAppBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {

    final isDesktop = Responsive.isDesktop(context);
    
    return Container(
      height: 70,
      decoration: BoxDecoration(
        color: Theme.of(context).colorScheme.primaryContainer,
      ),

      child: Row(
        children: [
          const SizedBox(width: 10),

          if (!isDesktop)
            IconButton(
                onPressed: () {
                  Scaffold.of(context).openDrawer();
                },

                icon: const Icon(Icons.menu)),

          const SizedBox(width: 20),

          if (isDesktop) const Spacer(),

          Expanded(
            child: TextFormField(
              decoration: InputDecoration(
                hintText: "Search here...",
                fillColor: Theme.of(context).colorScheme.surface,
                filled: true,
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                  borderSide: BorderSide.none,
                ),
                suffixIcon: Container(
                            decoration: BoxDecoration(
                              color: Theme.of(context).colorScheme.primary,
                              borderRadius: BorderRadius.circular(10)
                            ),

                            child: const Icon(Icons.search),
                          ),

                        ),
                      )),
          const SizedBox(width: 20),
          IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.dark_mode,
            ),
          ),
          const SizedBox(width: 20),
          InkWell(
            onTap: () {},
            child: Container(
              padding: const EdgeInsets.all(7),
              decoration: BoxDecoration(
                color: Theme.of(context).colorScheme.primary.withOpacity(0.2),
                borderRadius: BorderRadius.circular(10),
              ),
              child: Row(
                children: [
                  CircleAvatar(
                    backgroundColor: Theme.of(context).colorScheme.primary,
                    child: Text(
                      "N",
                      style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                            color: Theme.of(context).colorScheme.onSurface,
                          ),
                    ),
                  ),
                  const SizedBox(width: 10),
                  Text(
                    "Naresh Kumar",
                    style: Theme.of(context).textTheme.bodySmall?.copyWith(
                        color: Theme.of(context).colorScheme.primary),
                  ),
                  Icon(
                    Icons.keyboard_arrow_down_rounded,
                    size: 20,
                    color: Theme.of(context).colorScheme.primary,
                  )
                ],
              ),
            ),
          ),
          const SizedBox(width: 20),
        ],
      ),
    );
  }
}


















// import 'package:flutter/material.dart';

// import 'responsive_layout.dart';


// class MyAppBar extends StatelessWidget {
//   const MyAppBar({
//     super.key,
//   });

//   @override
//   Widget build(BuildContext context) {
//     final isDesktop = Responsive.isDesktop(context);
//     return Container(
//       height: 70,
//       decoration: BoxDecoration(
//         color: Theme.of(context).colorScheme.primaryContainer,
//       ),
//       child: Row(
//         children: [

//           const SizedBox(width: 10,),

//           if(!isDesktop) IconButton(onPressed: () {
            
//           }, icon: const Icon(Icons.menu)),


//            const Spacer(),
//           Expanded(
//             child: TextFormField(
//               decoration: InputDecoration(
//                 hintText: "Search here...",
//                 fillColor: Theme.of(context).colorScheme.background,
//                 filled: true,
//                 border: OutlineInputBorder(
//                   borderRadius: BorderRadius.circular(10),
//                   borderSide: BorderSide.none,
//                 ),
//                 prefixIcon: Icon(
//                   Icons.search,
//                   color: Theme.of(context).colorScheme.onPrimaryContainer,
//                 ),
//               ),
//             ),
//           ),
//           const SizedBox(width: 20),
//           IconButton(
//             onPressed: () {},
//             icon: const Icon(
//               Icons.dark_mode,
//             ),
//           ),
//           const SizedBox(width: 20),
//           InkWell(
//             onTap: () {},
//             child: Container(
//               padding: const EdgeInsets.all(7),
//               decoration: BoxDecoration(
//                 color: Theme.of(context).colorScheme.primary.withOpacity(0.2),
//                 borderRadius: BorderRadius.circular(10),
//               ),
//               child: Row(
//                 children: [
//                   CircleAvatar(
//                     backgroundColor: Theme.of(context).colorScheme.primary,
//                     child: Text(
//                       "N",
//                       style: Theme.of(context).textTheme.bodyMedium?.copyWith(
//                             color: Theme.of(context).colorScheme.onBackground,
//                           ),
//                     ),
//                   ),
//                   const SizedBox(width: 10),
//                   Text(
//                     "Nitish Kumar",
//                     style: Theme.of(context).textTheme.bodySmall?.copyWith(
//                         color: Theme.of(context).colorScheme.primary),
//                   ),
//                   Icon(
//                     Icons.keyboard_arrow_down_rounded,
//                     size: 20,
//                     color: Theme.of(context).colorScheme.primary,
//                   )
//                 ],
//               ),
//             ),
//           ),
//           const SizedBox(width: 20),
//         ],
//       ),
//     );
//   }
// }