import 'package:flutter/material.dart';

class ToDoListScreen extends StatefulWidget {
  const ToDoListScreen({Key? key}) : super(key: key);

  @override
  State<ToDoListScreen> createState() => _ToDoListScreenState();
}

  Widget myList(String task){
    return Card(
      elevation: 5.0,
      color: Colors.grey[850],
      margin: EdgeInsets.symmetric(
        horizontal: 10.0,
        vertical: 6.0,
      ),
      child: Container(
        padding: EdgeInsets.all(5.0),
        child: ListTile(
          title: Text("$task",
            style: TextStyle(
              fontFamily: 'Poppins',
              fontWeight: FontWeight.w500,
              color: Colors.white,
            ),
          ),
          onLongPress: (){},
        ),
    ),
    );
  }

class _ToDoListScreenState extends State<ToDoListScreen> {

  void showAlertDialog(){
    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        backgroundColor: Color(0xff36454F),
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10.0)
        ),
        title: Text("Add task",
          style: TextStyle(
            color: Colors.white,
            fontFamily: 'Poppins',
            fontWeight: FontWeight.w500,
          ),
        ),
        content: Column(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            TextField(
              autofocus: true,
              style: TextStyle(
                color: Colors.white,
                fontFamily: 'Poppins',
                fontSize: 15.0,
                fontWeight: FontWeight.w300,
              ),
            ),
            SizedBox(
              height: 10.0,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                ElevatedButton(
                  style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all(Color(0xff424952))
                  ),
                  onPressed: (){},
                  child: Text("ADD",
                    style: TextStyle(
                      fontFamily: 'Poppins',
                      fontWeight: FontWeight.bold,
                      fontSize: 20.0,
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: showAlertDialog,
        child: Icon(
          Icons.add,
          color: Colors.white,
        ),
        backgroundColor: Color(0xff36454F),
      ),
      appBar: AppBar(
        title: Text("To-Do List",
        style: TextStyle(
            fontFamily: 'Poppins',
          fontWeight: FontWeight.w500,
          ),
        ),
        backgroundColor: Colors.black45,
        centerTitle: true,
      ),
      backgroundColor: Colors.blueGrey[900],
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            myList("Go to school"),
            myList("Wash dishes"),
            myList("Study for exams:\n\t\t\tC programming\n\t\t\tReact.js\n\t\t\tData Struct"),
          ],
        ),
      ),
    );
  }
}
