import 'package:equatable/equatable.dart';
import 'package:uuid/uuid.dart';

Uuid uuid = Uuid();

enum Filter { all, active, completed }

class Todo extends Equatable {
  final String id;
  final String desc;
  final bool completed;
  Todo({
    this.completed = false,
    String? id,
    required this.desc,
  }) : this.id = id ?? uuid.v4();

  @override
  // TODO: implement props
  List<Object?> get props => [id, desc, completed];

  @override
  String toString() {
    "Todo(id: $id, desc: $desc, completed: $completed)";
    return super.toString();
  }
}
