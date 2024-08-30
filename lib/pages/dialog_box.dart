import 'package:flutter/material.dart';
import 'package:todo_app/pages/mybuttons.dart';

class DialogBox extends StatelessWidget {
final controller;
VoidCallback onSave;
VoidCallback onCancle;

DialogBox({super.key,required this.controller,required this.onSave,required this.onCancle});

  @override
  Widget build(BuildContext context) {
    return AlertDialog(

      content: Container(
        height: 150,
        child: Column(children: [
          //get user input
          TextField(
            controller: controller,
            decoration: InputDecoration(border: OutlineInputBorder(),
            hintText: "Add new Task",
            ),
          ),

          // Buttons -> Save + Cancle
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [       
            // save button
            Mybutton(text: "Save", onPressed: onSave),

            SizedBox(width: 8,),
            //cancel button
            Mybutton(text: "Cancle", onPressed: onCancle)
 ],
          )

        ],),
      ),
    );
  }
}