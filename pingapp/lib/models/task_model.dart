class Task{
  String title = "";
  bool complete = false;
  DateTime dueDate = DateTime.now();
  double repeatInterval = 0;
  String alarmSound = "";

  Task(this.title, this.dueDate, this.repeatInterval, this.alarmSound);
}