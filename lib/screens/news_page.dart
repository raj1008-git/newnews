// import 'package:flutter/material.dart';
//
// import 'information_model.dart';
//
// class NewsPage extends StatelessWidget {
//   final String article =
//       "A new study from UC Davis reveals that animals in the Brazilian Amazon are threatened by climate change and the gradual transition of the tropical rainforest into savanna, also known as savannization. "
//       "  Climate change will affect species persistence and distribution, particularly in high-diversity ecosystems like the Amazon. Studies predict that as temperature and deforestation increase and precipitation patterns change in the Amazon, areas along its southern and eastern borders will suffer large-scale savannization, the conversion of tropical forest to degraded savannah-like vegetation, wrote the study authors. ";
//   const NewsPage({super.key});
//
//   @override
//   Widget build(BuildContext context) {
//     News newss = ModalRoute.of(context)?.settings.arguments as News;
//     return Scaffold(
//       appBar: AppBar(
//         toolbarHeight: 70,
//         automaticallyImplyLeading: true,
//         title: const Row(
//           mainAxisAlignment: MainAxisAlignment.spaceBetween,
//           children: [Text('Happy Reading'), Icon(Icons.menu)],
//         ),
//       ),
//       body: SingleChildScrollView(
//           child: Container(
//         padding: EdgeInsets.only(left: 5, right: 5),
//         child: Column(
//           crossAxisAlignment: CrossAxisAlignment.stretch,
//           children: [
//             Container(
//               padding: EdgeInsets.only(top: 10, right: 10),
//               height: 250,
//               decoration: BoxDecoration(
//                 borderRadius: BorderRadius.circular(12),
//                 image:
//                     DecorationImage(image: newss.newsImage, fit: BoxFit.cover),
//               ),
//               child: Row(
//                 crossAxisAlignment: CrossAxisAlignment.start,
//                 mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                 children: [
//                   const SizedBox(),
//                   Text(
//                     newss.category,
//                     style: const TextStyle(
//                         backgroundColor: Colors.white, color: Colors.green),
//                   ),
//                 ],
//               ),
//             ),
//             SizedBox(
//               height: 15,
//             ),
//             Container(
//                 padding: EdgeInsets.only(left: 15, right: 15),
//                 child: Column(
//                   children: [
//                     Text(
//                       newss.storyTitle,
//                       style: const TextStyle(
//                           fontWeight: FontWeight.bold, fontSize: 25),
//                     ),
//                     SizedBox(
//                       height: 10,
//                     ),
//                     Row(
//                       children: [
//                         Container(
//                           height: 30,
//                           width: 30,
//                           decoration: BoxDecoration(
//                             borderRadius: BorderRadius.circular(50),
//                             image: DecorationImage(
//                               image: AssetImage(newss.profilePic),
//                             ),
//                           ),
//                         ),
//                         SizedBox(
//                           width: 15,
//                         ),
//                         Text(
//                           newss.writerName,
//                           style: TextStyle(
//                               fontWeight: FontWeight.bold, fontSize: 15),
//                         )
//                       ],
//                     ),
//                     SizedBox(
//                       height: 10,
//                     ),
//                     Text(article),
//                   ],
//                 )),
//           ],
//         ),
//       )),
//     );
//   }
// }
