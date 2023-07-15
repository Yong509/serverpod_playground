/* AUTOMATICALLY GENERATED CODE DO NOT MODIFY */
/*   To generate run: "serverpod generate"    */

// ignore_for_file: library_private_types_in_public_api
// ignore_for_file: public_member_api_docs
// ignore_for_file: implementation_imports

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:serverpod/serverpod.dart' as _i1;

class Task extends _i1.TableRow {
  Task({
    int? id,
    required this.taskTitle,
    required this.taskDateTime,
    required this.isTaskDone,
  }) : super(id);

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

  static final t = TaskTable();

  String taskTitle;

  String taskDateTime;

  bool isTaskDone;

  @override
  String get tableName => 'task';
  @override
  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'taskTitle': taskTitle,
      'taskDateTime': taskDateTime,
      'isTaskDone': isTaskDone,
    };
  }

  @override
  Map<String, dynamic> toJsonForDatabase() {
    return {
      'id': id,
      'taskTitle': taskTitle,
      'taskDateTime': taskDateTime,
      'isTaskDone': isTaskDone,
    };
  }

  @override
  Map<String, dynamic> allToJson() {
    return {
      'id': id,
      'taskTitle': taskTitle,
      'taskDateTime': taskDateTime,
      'isTaskDone': isTaskDone,
    };
  }

  @override
  void setColumn(
    String columnName,
    value,
  ) {
    switch (columnName) {
      case 'id':
        id = value;
        return;
      case 'taskTitle':
        taskTitle = value;
        return;
      case 'taskDateTime':
        taskDateTime = value;
        return;
      case 'isTaskDone':
        isTaskDone = value;
        return;
      default:
        throw UnimplementedError();
    }
  }

  static Future<List<Task>> find(
    _i1.Session session, {
    TaskExpressionBuilder? where,
    int? limit,
    int? offset,
    _i1.Column? orderBy,
    List<_i1.Order>? orderByList,
    bool orderDescending = false,
    bool useCache = true,
    _i1.Transaction? transaction,
  }) async {
    return session.db.find<Task>(
      where: where != null ? where(Task.t) : null,
      limit: limit,
      offset: offset,
      orderBy: orderBy,
      orderByList: orderByList,
      orderDescending: orderDescending,
      useCache: useCache,
      transaction: transaction,
    );
  }

  static Future<Task?> findSingleRow(
    _i1.Session session, {
    TaskExpressionBuilder? where,
    int? offset,
    _i1.Column? orderBy,
    bool orderDescending = false,
    bool useCache = true,
    _i1.Transaction? transaction,
  }) async {
    return session.db.findSingleRow<Task>(
      where: where != null ? where(Task.t) : null,
      offset: offset,
      orderBy: orderBy,
      orderDescending: orderDescending,
      useCache: useCache,
      transaction: transaction,
    );
  }

  static Future<Task?> findById(
    _i1.Session session,
    int id,
  ) async {
    return session.db.findById<Task>(id);
  }

  static Future<int> delete(
    _i1.Session session, {
    required TaskExpressionBuilder where,
    _i1.Transaction? transaction,
  }) async {
    return session.db.delete<Task>(
      where: where(Task.t),
      transaction: transaction,
    );
  }

  static Future<bool> deleteRow(
    _i1.Session session,
    Task row, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.deleteRow(
      row,
      transaction: transaction,
    );
  }

  static Future<bool> update(
    _i1.Session session,
    Task row, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.update(
      row,
      transaction: transaction,
    );
  }

  static Future<void> insert(
    _i1.Session session,
    Task row, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.insert(
      row,
      transaction: transaction,
    );
  }

  static Future<int> count(
    _i1.Session session, {
    TaskExpressionBuilder? where,
    int? limit,
    bool useCache = true,
    _i1.Transaction? transaction,
  }) async {
    return session.db.count<Task>(
      where: where != null ? where(Task.t) : null,
      limit: limit,
      useCache: useCache,
      transaction: transaction,
    );
  }
}

typedef TaskExpressionBuilder = _i1.Expression Function(TaskTable);

class TaskTable extends _i1.Table {
  TaskTable() : super(tableName: 'task');

  /// The database id, set if the object has been inserted into the
  /// database or if it has been fetched from the database. Otherwise,
  /// the id will be null.
  final id = _i1.ColumnInt('id');

  final taskTitle = _i1.ColumnString('taskTitle');

  final taskDateTime = _i1.ColumnString('taskDateTime');

  final isTaskDone = _i1.ColumnBool('isTaskDone');

  @override
  List<_i1.Column> get columns => [
        id,
        taskTitle,
        taskDateTime,
        isTaskDone,
      ];
}

@Deprecated('Use TaskTable.t instead.')
TaskTable tTask = TaskTable();
