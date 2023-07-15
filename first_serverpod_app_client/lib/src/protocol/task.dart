/* AUTOMATICALLY GENERATED CODE DO NOT MODIFY */
/*   To generate run: "serverpod generate"    */

// ignore_for_file: library_private_types_in_public_api
// ignore_for_file: public_member_api_docs
// ignore_for_file: implementation_imports

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:serverpod_client/serverpod_client.dart' as _i1;

class Task extends _i1.SerializableEntity {
  Task({
    this.id,
    required this.taskTitle,
    required this.taskDateTime,
    required this.isTaskDone,
  });

  factory Task.fromJson(
    Map<String, dynamic> jsonSerialization,
    _i1.SerializationManager serializationManager,
  ) {
    return Task(
      id: serializationManager.deserialize<int?>(jsonSerialization['id']),
      taskTitle: serializationManager
          .deserialize<String>(jsonSerialization['taskTitle']),
      taskDateTime: serializationManager
          .deserialize<String>(jsonSerialization['taskDateTime']),
      isTaskDone: serializationManager
          .deserialize<bool>(jsonSerialization['isTaskDone']),
    );
  }

  /// The database id, set if the object has been inserted into the
  /// database or if it has been fetched from the database. Otherwise,
  /// the id will be null.
  int? id;

  String taskTitle;

  String taskDateTime;

  bool isTaskDone;

  @override
  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'taskTitle': taskTitle,
      'taskDateTime': taskDateTime,
      'isTaskDone': isTaskDone,
    };
  }
}
