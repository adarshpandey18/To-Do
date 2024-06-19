import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:to_do/models/ToDoList.dart';
import 'package:to_do/pages/add_task.dart';
import 'package:to_do/pages/home_pages.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (context) => ToDoList()),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          colorScheme: const ColorScheme.dark(),
        ),
        routes: {
          '/addtask': (context) => const AddTask(),
        },
        home: const HomePages(),
      ),
    );
  }
}
