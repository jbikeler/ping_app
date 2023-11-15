import 'package:flutter/material.dart';
import 'package:pingapp/widgets/taskcard_widget.dart';

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 25, 23, 43),
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.fromLTRB(10.0, 0.0, 10.0, 0.0),
          child: Column(
            children: [
              Container(
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
              TaskCard("Task Mobile"),
            ],
          ),
        ),
      ),
      bottomNavigationBar: BottomAppBar(
        color: Color.fromARGB(255, 25, 23, 43),
        shape: CircularNotchedRectangle(),
        child: Container(
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
        child: Icon(Icons.add),
        onPressed: () => {
                print('action button')
              },
        backgroundColor: Color.fromARGB(255, 33, 106, 240),
        elevation: 0,
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.endDocked,
    );
  }
}