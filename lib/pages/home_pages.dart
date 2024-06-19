import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:to_do/models/ToDoList.dart';
import 'package:to_do/widgets/task_tile.dart';

class HomePages extends StatefulWidget {
  const HomePages({super.key});

  @override
  State<HomePages> createState() => _HomePagesState();
}

class _HomePagesState extends State<HomePages> {
  @override
  Widget build(BuildContext context) {
    return Consumer<ToDoList>(
      builder: (context, taskProvider, child) {
        return Scaffold(
          floatingActionButton: FloatingActionButton(
            onPressed: () {
              Navigator.of(context).pushNamed('/addtask');
            },
            child: const Icon(Icons.add),
          ),
          appBar: AppBar(
            elevation: 0,
            centerTitle: true,
            title: const Text("TO DO"),
          ),
          body: Column(
            children: [
              Expanded(
                child: ListView.builder(
                  itemCount: taskProvider.todolist.length,
                  itemBuilder: (context, index) {
                    final task = taskProvider.todolist[index];
                    return TaskTile(
                      taskName: task.task,
                      isCompleted: task.isCompleted,
                      function: (bool? newValue) {
                        taskProvider.taskCompleted(index);
                      },  deleteFunction: (BuildContext ) { taskProvider.deleteTask(index); },
                    );
                  },
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}
