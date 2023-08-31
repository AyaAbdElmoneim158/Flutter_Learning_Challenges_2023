// import 'package:app/Posts/core/util/snackbar_message.dart';
// import 'package:app/Posts/core/widgets/loading_widget.dart';
// import 'package:app/Posts/features/posts/presentation/controller/add_delete_update_post_bloc/add_delete_update_post_bloc.dart';
// import 'package:app/Posts/features/posts/presentation/screens/posts_page.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter_bloc/flutter_bloc.dart';
// import 'delete_dialog_widget.dart';

// class DeletePostBtnWidget extends StatelessWidget {
//   final int postId;
//   const DeletePostBtnWidget({
//     Key? key,
//     required this.postId,
//   }) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return ElevatedButton.icon(
//       style: ButtonStyle(
//         backgroundColor: MaterialStateProperty.all(
//           Colors.redAccent,
//         ),
//       ),
//       onPressed: () => deleteDialog(context, postId),
//       icon:const Icon(Icons.delete_outline),
//       label:const Text("Delete"),
//     );
//   }

//   void deleteDialog(BuildContext context, int postId) {
//     showDialog(
//         context: context,
//         builder: (context) {
//           return BlocConsumer<AddDeleteUpdatePostBloc,
//               AddDeleteUpdatePostState>(
//             listener: (context, state) {
//               if (state is LoadedAddDeleteUpdatePostState) {
//                 SnackBarMessage().showSuccessSnackBar(
//                     message: state.message, context: context);

//                 Navigator.of(context).pushAndRemoveUntil(
//                     MaterialPageRoute(
//                       builder: (_) =>const PostsPage(),
//                     ),
//                     (route) => false);
//               } else if (state is ErrorAddDeleteUpdatePostState) {
//                 Navigator.of(context).pop();
//                 SnackBarMessage().showErrorSnackBar(
//                     message: state.message, context: context);
//               }
//             },
//             builder: (context, state) {
//               if (state is LoadingAddDeleteUpdatePostState) {
//                 return const AlertDialog(
//                   title: LoadingWidget(),
//                 );
//               }
//               return DeleteDialogWidget(postId: postId);
//             },
//           );
//         });
//   }
// }