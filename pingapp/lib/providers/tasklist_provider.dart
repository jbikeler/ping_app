import 'package:pingapp/models/task_model.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'tasklist_provider.g.dart'; //for riverpod_builder


@riverpod
class Tasks extends _$Tasks {
  @override
    List<Task> build() {
      return [
        Task('Card 1'),
        Task('Card 2'),
        Task('Card 3'),
      ] ;
    }

    void deleteTask(int index) {
      List<Task> newstate = [...state];
      newstate.removeAt(index);
      state = newstate;
    }

    void addNewTask(String title) {
      List<Task> newstate = [...state];
      newstate.add(Task(title));
      state = newstate;
    }
}