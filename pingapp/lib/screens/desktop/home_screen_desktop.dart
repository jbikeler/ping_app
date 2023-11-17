import 'package:flutter/material.dart';
import 'package:pingapp/widgets/desktop/taskcard_widget_desktop.dart';

class HomePageDesktop extends StatelessWidget {
  const HomePageDesktop({super.key});

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
              Expanded(
                child: ListView.builder(
                  itemCount: 3,
                  itemBuilder: (context, index) {
                    return TaskCardDesktop("New Card");
                  }
                ),
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
                      ),
                    ),
                    Expanded( //Expanded>SizedBox with height:infinity to make button fill the Row height
                      flex: 1,
                      child: SizedBox(
                        height: double.infinity,
                        child: FilledButton(
                          onPressed: () => {
                            print('Add Task - Desktop')
                          },
                          style: FilledButton.styleFrom(
                            backgroundColor: Colors.blue,
                            shape: const RoundedRectangleBorder(
                              borderRadius: BorderRadius.horizontal(
                                left: Radius.zero,
                                right: Radius.circular(10)
                              ),
                            )  
                          ),
                          child: const Icon(
                            Icons.add,
                            color: Colors.white,
                          )
                        ),
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