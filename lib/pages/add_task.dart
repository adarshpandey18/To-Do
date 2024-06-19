import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'package:to_do/models/ToDoList.dart';

class AddTask extends StatefulWidget {
  const AddTask({super.key});

  @override
  State<AddTask> createState() => _AddTaskState();
}

class _AddTaskState extends State<AddTask> {
  final TextEditingController _newTask = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Consumer<ToDoList>(builder: (context, taskProvider, child) {
      return Scaffold(
        appBar: AppBar(
          title: const Text("ADD TASK"),
          centerTitle: true,
          elevation: 0,
        ),
        body: Padding(
          padding: const EdgeInsets.only(right: 20, left: 20, top: 25),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              TextField(
                controller: _newTask,
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(14),
                  ),
                  focusColor: Theme.of(context).primaryColor,
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Column(
                children: [
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      side: BorderSide(color: Theme.of(context).highlightColor),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                      minimumSize: const Size(double.infinity, 50),
                    ),
                    onPressed: () {
                      taskProvider.addTask(_newTask.text);
                      Navigator.of(context).pop();
                    },
                    child: const Text(
                      "SAVE",
                      style: TextStyle(
                        fontSize: 20,
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 25,
                  ),
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      side: BorderSide(color: Theme.of(context).highlightColor),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                      minimumSize: const Size(double.infinity, 50),
                    ),
                    onPressed: () {
                      Navigator.of(context).pop();
                    },
                    child: const Text(
                      "CANCEL",
                      style: TextStyle(
                        fontSize: 20,
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 40,
                  ),
                ],
              )
            ],
          ),
        ),
      );
    });
  }
}
