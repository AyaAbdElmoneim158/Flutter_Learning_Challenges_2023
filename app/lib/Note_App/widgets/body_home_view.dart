import 'package:app/Note_App/widgets/custom_appbar.dart';
import 'package:app/Note_App/widgets/todo_list.dart';
import 'package:flutter/material.dart';

class BodyHomeView extends StatelessWidget {
  const BodyHomeView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 24),
      child: Column(children: [
        CustomAppBar(title: "Notes", icon: Icons.search, onPressed: () {}),
        const SizedBox(height: 8),
        const Expanded(
          child: TodoListview(),
        ),
      ]),
    );
  }
}
