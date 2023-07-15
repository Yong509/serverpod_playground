import 'package:serverpod/serverpod.dart';

import '../generated/task.dart';

class TaskEndpoint extends Endpoint {
  Future<List<Task>> getAllTask(Session session) async {
    return await Task.find(session);
  }

  Future<void> createTask(Session session, Task task) async {
    await Task.insert(session, task);
  }
}
