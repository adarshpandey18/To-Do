import 'package:flutter/material.dart';
import 'package:flutter_slidable/flutter_slidable.dart';

class TaskTile extends StatelessWidget {
  final String taskName;
  final bool? isCompleted;
  final Function(bool?)? function;
  final Function(BuildContext?) deleteFunction;
  const TaskTile({
    super.key,
    required this.taskName,
    required this.isCompleted,
    required this.function,
    required this.deleteFunction,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      child: Slidable(
        endActionPane: ActionPane(motion: const ScrollMotion(), children: [
          SlidableAction(
            onPressed: deleteFunction,
            backgroundColor: const Color.fromRGBO(255, 82, 82, 1),
            icon: Icons.delete,
          )
        ]),
        child: ListTile(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10),
          ),
          contentPadding:
              const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
          leading: Checkbox(
            value: isCompleted ?? false,
            onChanged: function,
          ),
          title: Text(
            taskName,
            style: TextStyle(
              fontSize: 20.0,
              color: isCompleted! ? Colors.grey[600] : Colors.white,
              decoration: isCompleted!
                  ? TextDecoration.lineThrough
                  : TextDecoration.none,
            ),
          ),
          tileColor: Theme.of(context).hoverColor,
        ),
      ),
    );
  }
}
