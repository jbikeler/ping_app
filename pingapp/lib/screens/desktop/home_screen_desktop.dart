import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:pingapp/providers/tasklist_provider.dart';
import 'package:pingapp/widgets/desktop/taskcard_widget_desktop.dart';

class HomePageDesktop extends StatelessWidget {
  HomePageDesktop({super.key});

  final taskInputCon = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 25, 23, 43),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.fromLTRB(20.0, 0.0, 20.0, 0.0),
          child: Column(
            children: [
              const SizedBox(
                height: 100.0,
                child: Center(
                  child: Text(
                    'Reminders',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 27.0,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
              ),
              const Expanded(
                child: TaskView()
              ),
              const Divider(
                height: 10.0,
              ),
              Container(
                height: 50.0,
                constraints: const BoxConstraints(minWidth: 0, maxWidth: 600),
                decoration: const BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(10)),
                  color: Color.fromARGB(255, 202, 203, 232),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Expanded(
                      flex: 5,
                      child: Container( // Task input area
                        decoration: const BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(10)),
                          color: Color.fromARGB(255, 202, 203, 232),
                        ),
                        child: Consumer(builder: (context, ref, child) {
                          return TextField(
                            controller: taskInputCon,
                            onSubmitted: (String str) {
                              taskInputCon.clear();
                              ref.read(tasksProvider.notifier).addNewTask(str);
                            },
                          );
                        },),
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
      bottomNavigationBar: BottomAppBar(
        color: const Color.fromARGB(255, 25, 23, 43),
        shape: const CircularNotchedRectangle(),
        child: SizedBox(
          height: 60.0,
          child: IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.search_outlined,
              color: Colors.white),
          ),
        ),
      ),
    );
  }

}

class TaskView extends ConsumerWidget {
  const TaskView({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    // use ref to listen to a provider
    return ListView.separated(
      itemCount: ref.watch(tasksProvider).length,
      itemBuilder: (BuildContext context, int index) {
        return TaskCardDesktop(ref.watch(tasksProvider)[index].title, index);
      },
      separatorBuilder: (BuildContext context, int index) => const Divider(
        height: 8.0,
      ),
    );
  }
}