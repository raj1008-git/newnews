// import 'package:flutter/material.dart';
// import 'package:news/screens/dummy_constant.dart';
//
// import 'information_model.dart';
//
// class HomePage extends StatelessWidget {
//   List categoryList = [
//     "Sports",
//     "Entertainment",
//     "Weather",
//     "Politics",
//     "Nature",
//     "Animal"
//   ];
//
//   final ImageProvider newsImage = AssetImage('assets/images/leo.jpg');
//   final String news =
//       'Amazon animals will suffer as the rainforest turns into savanna';
//   final String writer = 'Crissy Sexton';
//   final String category = 'Environment';
//   final String profilePic = 'assets/images/crissy_sexton.jpg';
//
//   final DummyData dummyData = DummyData();
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       bottomNavigationBar: BottomNavigationBar(
//         items: const [
//           BottomNavigationBarItem(
//               icon: Icon(
//                 Icons.home,
//                 color: Colors.green,
//               ),
//               label: 'Home'),
//           BottomNavigationBarItem(
//               icon: Icon(
//                 Icons.bookmark_add_outlined,
//                 color: Colors.grey,
//               ),
//               label: 'Bookmarks')
//         ],
//       ),
//       appBar: AppBar(
//         toolbarHeight: 70,
//         automaticallyImplyLeading: false,
//         title: const Row(
//           mainAxisAlignment: MainAxisAlignment.spaceBetween,
//           children: [
//             Text(
//               'AUTUMN',
//               style: TextStyle(
//                   color: Colors.green,
//                   fontSize: 30,
//                   fontWeight: FontWeight.w700),
//             ),
//             Row(
//               children: [
//                 Icon(
//                   Icons.notification_add_outlined,
//                   color: Colors.black,
//                   size: 30,
//                 ),
//                 SizedBox(
//                   width: 20,
//                 ),
//                 Icon(
//                   Icons.search,
//                   size: 30,
//                 ),
//               ],
//             ),
//           ],
//         ),
//       ),
//       body: Container(
//         padding: const EdgeInsets.only(top: 10, left: 10, right: 10),
//         child: Column(
//           crossAxisAlignment: CrossAxisAlignment.stretch,
//           children: [
//             // Container(
//             //   height: 265,
//             //   padding: const EdgeInsets.only(top: 110, left: 15, right: 15),
//             //   decoration: BoxDecoration(
//             //     borderRadius: BorderRadius.circular(20),
//             //     image: const DecorationImage(
//             //       image: AssetImage('assets/images/leo.jpg'),
//             //       fit: BoxFit.cover,
//             //     ),
//             //   ),
//             //   child: Column(
//             //     crossAxisAlignment: CrossAxisAlignment.start,
//             //     children: [
//             //       Container(
//             //         padding: const EdgeInsets.only(
//             //             top: 5, bottom: 5, left: 10, right: 10),
//             //         decoration: BoxDecoration(
//             //           color: Colors.white,
//             //           borderRadius: BorderRadius.circular(20),
//             //         ),
//             //         child: TextButton(
//             //           style: TextButton.styleFrom(
//             //               padding: EdgeInsets.zero,
//             //               minimumSize: Size.zero,
//             //               tapTargetSize: MaterialTapTargetSize.shrinkWrap),
//             //           // padding: const EdgeInsets.only(
//             //           //     top: 0, bottom: 0, left: 0, right: 0),
//             //           onPressed: () {
//             //             Navigator.push(
//             //               context,
//             //               MaterialPageRoute(
//             //                   builder: (context) => const NewsPage(),
//             //                   settings: RouteSettings(
//             //                     arguments: News(
//             //                       writerName: writer,
//             //                       newsImage: newsImage,
//             //                       storyTitle: news,
//             //                       category: category,
//             //                       profilePic: profilePic,
//             //                     ),
//             //                   )),
//             //             );
//             //           },
//             //           child: Text(
//             //             category,
//             //             style: const TextStyle(
//             //               color: Colors.green,
//             //               backgroundColor: Colors.white,
//             //             ),
//             //           ),
//             //         ),
//             //       ),
//             //       const SizedBox(
//             //         height: 10,
//             //       ),
//             //       Text(
//             //         news,
//             //         style: const TextStyle(
//             //             backgroundColor: Colors.black26,
//             //             color: Colors.white,
//             //             fontSize: 20,
//             //             fontWeight: FontWeight.w700),
//             //       ),
//             //       const SizedBox(
//             //         height: 10,
//             //       ),
//             //       Row(
//             //         children: [
//             //           Container(
//             //             // height: 40,
//             //             decoration: BoxDecoration(
//             //               borderRadius: BorderRadius.circular(200),
//             //               // image: const DecorationImage(
//             //               //     image:
//             //               //         AssetImage('assets/images/crissy_sexton.jpg'),
//             //               //     fit: BoxFit.cover),
//             //             ),
//             //             child: Image.asset(
//             //               profilePic,
//             //               fit: BoxFit.cover,
//             //               height: 40,
//             //               width: 40,
//             //             ),
//             //           ),
//             //           const SizedBox(
//             //             width: 10,
//             //           ),
//             //           Text(
//             //             writer,
//             //             style: const TextStyle(
//             //                 color: Colors.white,
//             //                 backgroundColor: Colors.black26,
//             //                 fontWeight: FontWeight.w500),
//             //           ),
//             //         ],
//             //       )
//             //     ],
//             //   ),
//             // ),
//             const SizedBox(
//               height: 20,
//             ),
//             SizedBox(
//               height: 50,
//               child: ListView.separated(
//                 scrollDirection: Axis.horizontal,
//                 itemCount: categoryList.length,
//                 itemBuilder: (BuildContext context, int index) {
//                   return NewsCategoryChip(
//                     category: categoryList[index],
//                     onPress: () {},
//                   );
//                 },
//                 separatorBuilder: (BuildContext context, int index) {
//                   return const SizedBox(
//                     width: 6,
//                   );
//                 },
//               ),
//             ),
//             const SizedBox(
//               width: 9,
//             ),
//             // const SizedBox(
//             //   width: 9,
//             // ),
//             const SizedBox(
//               height: 20,
//             ),
//             ListView.builder(
//               shrinkWrap: true,
//               itemCount: dummyData.informationList.length,
//               itemBuilder: (BuildContext context, int index) {
//                 return GestureDetector(
//                   // onTap: (){
//                   //   Navigator.of(context).push(route)
//                   // },
//                   child: CategoryItemTIle(
//                     informationModel: dummyData.informationList[index],
//                   ),
//                 );
//               },
//             ),
//             // const SizedBox(
//             //   height: 15,
//             // ),
//             // Row(
//             //   children: [
//             //     Container(
//             //       height: 100,
//             //       width: 120,
//             //       decoration: BoxDecoration(
//             //         borderRadius: BorderRadius.circular(20),
//             //         image: const DecorationImage(
//             //             image: AssetImage('assets/images/coco.jpeg'),
//             //             fit: BoxFit.cover),
//             //       ),
//             //
//             //       // child: Image.asset(
//             //       //   'assets/images/earth.jpeg',
//             //       //   fit: BoxFit.cover,
//             //       // ),
//             //     ),
//             //     const SizedBox(
//             //       width: 10,
//             //     ),
//             //     Container(
//             //       width: 210,
//             //       child: Column(
//             //         mainAxisAlignment: MainAxisAlignment.spaceBetween,
//             //         children: [
//             //           Row(
//             //             children: [
//             //               Container(
//             //                 height: 30,
//             //                 width: 30,
//             //                 decoration: BoxDecoration(
//             //                   borderRadius: BorderRadius.circular(50),
//             //                   image: const DecorationImage(
//             //                     image: AssetImage('assets/images/andrei.jpg'),
//             //                     fit: BoxFit.cover,
//             //                   ),
//             //                 ),
//             //               ),
//             //               const SizedBox(
//             //                 width: 5,
//             //               ),
//             //               const Text(
//             //                 'Andrei Ionescu',
//             //                 style: TextStyle(color: Colors.grey),
//             //               )
//             //             ],
//             //           ),
//             //           const Text(
//             //             'Female cuckoo colors provide evolutionary advantages',
//             //             style: TextStyle(fontWeight: FontWeight.bold),
//             //           ),
//             //         ],
//             //       ),
//             //     ),
//             //     const SizedBox(
//             //       width: 25,
//             //     ),
//             //     const Icon(
//             //       Icons.bookmark_add,
//             //       color: Colors.green,
//             //     ),
//             //   ],
//             // ),
//           ],
//         ),
//       ),
//     );
//   }
// }
//
// class CategoryItemTIle extends StatelessWidget {
//   final News informationModel;
//   const CategoryItemTIle({
//     required this.informationModel,
//     super.key,
//   });
//
//   @override
//   Widget build(BuildContext context) {
//     return Row(
//       children: [
//         Container(
//           height: 100,
//           width: 120,
//           decoration: BoxDecoration(
//             borderRadius: BorderRadius.circular(20),
//             image: DecorationImage(
//                 image: AssetImage(informationModel.profilePic),
//                 fit: BoxFit.cover),
//           ),
//
//           // child: Image.asset(
//           //   'assets/images/earth.jpeg',
//           //   fit: BoxFit.cover,
//           // ),
//         ),
//         const SizedBox(
//           width: 10,
//         ),
//         Container(
//           width: 210,
//           child: Column(
//             mainAxisAlignment: MainAxisAlignment.spaceBetween,
//             children: [
//               Row(
//                 children: [
//                   Container(
//                     height: 30,
//                     width: 30,
//                     decoration: BoxDecoration(
//                       borderRadius: BorderRadius.circular(50),
//                       image: DecorationImage(
//                         image: AssetImage(informationModel.profilePic),
//                         fit: BoxFit.cover,
//                       ),
//                     ),
//                   ),
//                   const SizedBox(
//                     width: 5,
//                   ),
//                   Text(
//                     informationModel.writerName,
//                     style: TextStyle(color: Colors.grey),
//                   )
//                 ],
//               ),
//               Text(
//                 informationModel.storyTitle,
//                 style: TextStyle(fontWeight: FontWeight.bold),
//               ),
//             ],
//           ),
//         ),
//         const SizedBox(
//           width: 25,
//         ),
//         const Icon(Icons.bookmark_add_outlined),
//       ],
//     );
//   }
// }
//
// class NewsCategoryChip extends StatelessWidget {
//   final String category;
//   final VoidCallback? onPress;
//   const NewsCategoryChip(
//       {super.key, required this.category, required this.onPress});
//
//   @override
//   Widget build(BuildContext context) {
//     return MaterialButton(
//       shape: RoundedRectangleBorder(
//         borderRadius: BorderRadius.circular(40),
//       ),
//       onPressed: onPress,
//       color: Colors.green,
//       child: Text(
//         category,
//         style: const TextStyle(color: Colors.white, fontSize: 13),
//       ),
//     );
//   }
// }
