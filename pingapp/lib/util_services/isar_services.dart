import 'package:isar/isar.dart';
import 'package:path_provider/path_provider.dart';
import 'package:pingapp/userdata/savedtasks.dart';

class IsarService {
  late Future<Isar> db;

  IsarService() {
    db = openDB();
  }

  //Set up the save functions for each of the databases
  Future<void> saveSavedTasks(SavedTasks newSavedTasks) async {
    final isar = await db;
    isar.writeTxnSync<int>(() => isar.savedTasks.putSync(newSavedTasks));
  }
  //Set up the DB at the beginning of the app start 
  Future<Isar> openDB() async {
    if (Isar.instanceNames.isEmpty){
      final dir = await getApplicationDocumentsDirectory(); //get local application directory to store data
      return await Isar.open(
        [
          SavedTasksSchema,
        ],
        inspector: true,
        directory: dir.path,
      );
    }

    return Future.value(Isar.getInstance());
  }

}