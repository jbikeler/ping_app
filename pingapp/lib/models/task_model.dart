class Task{
  String title = "";
  bool complete = false;
  DateTime dueDate = DateTime.now();
  double repeatInterval = 0;
  String alarmSound = "";

  Task(this.title); // For testing, only title. Add later: this.dueDate, this.repeatInterval, this.alarmSound 
}