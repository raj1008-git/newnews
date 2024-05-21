// class FormValidator {
//   void formNameValidate(value) {
//     if (value.isEmpty) {}
//   }
// }
//
// class FormValidator {
//   void formNameValidate(BuildContext context, String value) {
//     if (value.isEmpty) {
//       showDialog(
//         context: context,
//         builder: (BuildContext context) {
//           // Create a themed AlertDialog for a more consistent look
//           return Theme(
//             data: ThemeData.dark(), // Or use currentTheme if preferred
//             child: AlertDialog(
//               title: Text('Please Enter a Form Name'),
//               content: Text('The form name cannot be empty.'),
//               actions: [
//                 TextButton(
//                   child: Text('OK'),
//                   onPressed: () => Navigator.pop(context),
//                 ),
//               ],
//             ),
//           );
//         },
//       );
//     }
//   }
// }
