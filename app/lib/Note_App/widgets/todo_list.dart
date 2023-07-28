import 'package:app/Note_App/constants.dart';
import 'package:app/Note_App/widgets/todo_item.dart';
import 'package:flutter/material.dart';

class TodoListview extends StatelessWidget {
  const TodoListview({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      separatorBuilder: (context, index) => const SizedBox(height: 8),
      itemBuilder: (context, index) => TodoItem(color: notesColorList[index]),
      itemCount: 8,
    );
  }
}
