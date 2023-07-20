import 'package:first_serverpod_app_client/first_serverpod_app_client.dart';
import 'package:flutter/material.dart';

import '../../services/client_service.dart';

class TodoPage extends StatefulWidget {
  const TodoPage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  TodoPageState createState() => TodoPageState();
}

class TodoPageState extends State<TodoPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(bottom: 16.0),
              child: ElevatedButton(
                onPressed: () {
                  ClientService().client.task.createTask(
                        Task(
                          taskTitle: "test",
                          taskDateTime: "test",
                          isTaskDone: false,
                        ),
                      );
                },
                child: const Text('Send to Server'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
