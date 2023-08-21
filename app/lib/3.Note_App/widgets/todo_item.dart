import 'package:app/3.Note_App/views/note_view.dart';
import 'package:flutter/material.dart';

class TodoItem extends StatelessWidget {
  const TodoItem({super.key, required this.color});
  final Color? color;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => Navigator.of(context).push(MaterialPageRoute(
        builder: (context) => const NoteView(),
      )),
      child: Container(
        padding: const EdgeInsets.only(top: 16, bottom: 16),
        decoration: BoxDecoration(
          color: color,
          borderRadius: BorderRadius.circular(16),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            ListTile(
                title: Text(
                  "Go to gym",
                  style: Theme.of(context).textTheme.headlineSmall!.copyWith(
                        color: Colors.black,
                        fontWeight: FontWeight.w500,
                      ),
                ),
                subtitle: Padding(
                  padding: const EdgeInsets.symmetric(vertical: 8),
                  child: Text(
                    "I have an app in flutter using different fonts from the same family, declared in pubspec.yaml like this:",
                    style: Theme.of(context).textTheme.titleLarge!.copyWith(
                          color: Colors.black54,
                          fontWeight: FontWeight.w500,
                        ),
                  ),
                ),
                trailing: IconButton(
                  icon: const Icon(
                    Icons.delete,
                    color: Colors.black,
                  ),
                  onPressed: () {},
                )),
            Padding(
              padding: const EdgeInsets.only(right: 24),
              child: Text(
                "22/3/2023",
                style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                      color: Colors.black45,
                      fontWeight: FontWeight.w500,
                    ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
