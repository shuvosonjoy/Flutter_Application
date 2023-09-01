import 'package:flutter/material.dart';

class ToDoTile extends StatelessWidget {

  final String TaskName;
  final bool taskCompleted;
  Function(bool?)? onChanged;

  ToDoTile({
    super.key,
    required this.TaskName,
    required this.taskCompleted,
    required this.onChanged,});

  @override
  Widget build(BuildContext context) {
    return  Padding(
      padding:  EdgeInsets.only(left:25.0,right:25.0,top:25.0),
      child: Container(
        padding: EdgeInsets.all(24),
        child: Row(
          children: [
            Checkbox(
                value: taskCompleted,
                onChanged: onChanged,
            activeColor:Colors.black,
            ),
            Text(TaskName,
            style:TextStyle(decoration:taskCompleted?TextDecoration.lineThrough:TextDecoration.none,),


            ),

          ],
        ),
        decoration: BoxDecoration( color: taskCompleted? Colors.green:Colors.red,
          borderRadius: BorderRadius.circular(12),),


      ),
    );
  }
}
