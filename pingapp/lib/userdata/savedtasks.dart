import 'package:isar/isar.dart';

part 'savedtasks.g.dart';

@collection
class SavedTasks {
  Id id = Isar.autoIncrement; // you can also use id = null to auto increment

  String? name;

}