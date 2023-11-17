import 'package:flutter/material.dart';
import 'package:pingapp/models/task_model.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';



class TaskListProvider extends ChangeNotifier {
	final List<Task> _tasks = [];
	
	List<Task> get tasks => _tasks;
	
	void addToList(String title) {
    Task newTask = Task(title + _tasks.length.toString()); //For testing just pass in a title and concat the total amount of tasks onto it
		_tasks.add(newTask);
		notifyListeners();
	}
}