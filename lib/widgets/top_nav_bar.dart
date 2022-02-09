// import 'package:flutter/material.dart';
// import 'package:k_events_admin/constants/color.dart';
// import 'package:k_events_admin/widgets/responsive_layout.dart';

// import 'custom_text.dart';

// AppBar topNavigationBar(BuildContext context, GlobalKey<ScaffoldState> key) =>
//     AppBar(
//       leading: getLeadingIcon(context, key),
//       elevation: 0,
//       title: Row(
//         children: [
//           const Visibility(
//             child: CustomText(
//               text: "Dash",
//               color: AppColors.lightGrey1,
//               size: 20,
//               fontWeight: FontWeight.bold,
//             ),
//           ),
//           Expanded(child: Container(color: Colors.red)),
//           IconButton(
//             icon: Icon(Icons.settings, color: AppColors.dark1.withOpacity(.7)),
//             onPressed: () {},
//           ),
//           Stack(
//             children: [
//               IconButton(
//                   icon: Icon(Icons.notifications,
//                       color: AppColors.dark1.withOpacity(.7)),
//                   onPressed: () {}),
//               Positioned(
//                 top: 7,
//                 right: 7,
//                 child: Container(
//                   width: 12,
//                   height: 12,
//                   padding: const EdgeInsets.all(4),
//                   decoration: BoxDecoration(
//                     color: Colors.red,
//                     borderRadius: BorderRadius.circular(30),
//                     border: Border.all(color: AppColors.light, width: 2),
//                   ),
//                 ),
//               ),
//             ],
//           ),
//           Container(width: 1, height: 22, color: AppColors.lightGrey1),
//           const SizedBox(width: 24),
//           const CustomText(text: "Dercio Derone", color: AppColors.lightGrey1),
//           const SizedBox(width: 16),
//           Container(
//             decoration: BoxDecoration(
//               color: Colors.white,
//               borderRadius: BorderRadius.circular(30),
//             ),
//             child: Container(
//               padding: const EdgeInsets.all(2),
//               margin: const EdgeInsets.all(2),
//               child: const CircleAvatar(
//                 backgroundColor: AppColors.light,
//                 child: Icon(Icons.person_outline, color: AppColors.dark1),
//               ),
//             ),
//           )
//         ],
//       ),
//       iconTheme: const IconThemeData(color: AppColors.dark1),
//       backgroundColor: AppColors.light,
//     );

// Widget getLeadingIcon(BuildContext context, GlobalKey<ScaffoldState> key) {
//   return !ResponsiveLayout.isSmallScreen(context)
//       ? Row(
//           children: [
//             Container(
//               padding: const EdgeInsets.only(left: 14),
//               child: const Text("KIARIEVENTOS"),
//             )
//           ],
//         )
//       : IconButton(
//           onPressed: () {
//             key.currentState?.openDrawer();
//           },
//           icon: const Icon(Icons.menu),
//         );
// }
