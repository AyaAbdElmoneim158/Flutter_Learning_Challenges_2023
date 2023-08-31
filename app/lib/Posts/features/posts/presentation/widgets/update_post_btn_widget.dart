// import 'package:app/Posts/features/posts/Domain/entities/post.dart';
// import 'package:app/Posts/features/posts/presentation/screens/post_add_update_page.dart';
// import 'package:flutter/material.dart';

// class UpdatePostBtnWidget extends StatelessWidget {
//   final Post post;
//   const UpdatePostBtnWidget({
//     Key? key,
//     required this.post,
//   }) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return ElevatedButton.icon(
//       onPressed: () {
//         Navigator.push(
//             context,
//             MaterialPageRoute(
//               builder: (_) => PostAddUpdatePage(
//                 isUpdatePost: true,
//                 post: post,
//               ),
//             ));
//       },
//       icon:const Icon(Icons.edit),
//       label:const Text("Edit"),
//     );
//   }
// }