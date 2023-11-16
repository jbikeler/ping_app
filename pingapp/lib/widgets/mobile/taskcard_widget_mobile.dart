import 'package:flutter/material.dart';

class TaskCardMobile extends StatelessWidget {

  final String title;

  TaskCardMobile(this.title);

  @override
  Widget build(BuildContext context) {
    return Dismissible(
      key: UniqueKey(),
      child: Container(
        decoration: const BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(10)),
          color: Color.fromARGB(255, 39, 40, 57)
        ),
        height: 60.0,
        child: Row(
          children: [
            Expanded( //Complete task button
              flex: 1,
              child: SizedBox(
                height: double.infinity,
                child: TextButton(
                  onPressed:  () => {
                    print('radio button')
                  },
                  child: const Icon(
                    Icons.radio_button_unchecked,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
            Expanded( //Task Name
              flex: 5,
              child: TextButton(
                onPressed: () => {
                  print('task button')
                },
                child: Row(
                  children: [
                    Text(
                      "$title",
                      textAlign: TextAlign.left,
                      style: const TextStyle(
                        color: Colors.white,
                      ),
                    ),
                    Expanded(child: Container())
                  ],
                )
              ),
            ),
            Expanded( //Delete task button
              flex: 1,
              child: SizedBox(
                height: double.infinity,
                child: TextButton(
                  onPressed:  () => {
                    print('delete button')
                  },
                  child: const Icon(
                    Icons.delete,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}