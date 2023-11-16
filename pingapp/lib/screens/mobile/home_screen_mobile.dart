import 'package:flutter/material.dart';
import 'package:pingapp/widgets/mobile/taskcard_widget_mobile.dart';

class HomePageMobile extends StatelessWidget {
  const HomePageMobile({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 25, 23, 43),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.fromLTRB(10.0, 0.0, 10.0, 0.0),
          child: Column(
            children: [
              const SizedBox(
                height: 200.0,
                child: Center(
                  child: Text(
                    'Reminders:',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 27.0
                    ),
                  ),
                ),
              ),
              TaskCardMobile("Task Mobile"),
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
      floatingActionButton: FloatingActionButton(
        onPressed: () => {
                print('action button')
              },
        backgroundColor: const Color.fromARGB(255, 33, 106, 240),
        elevation: 0,
        child: const Icon(Icons.add),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.endDocked,
    );
  }
}