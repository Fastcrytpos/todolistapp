import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main() {
  runApp(const MaterialApp(
    home: HomePage(),
  ));
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('My Todo List'),
        centerTitle: true,
      ),
      body: TodoList(),
    );
  }
}

class TodoList extends StatefulWidget {
  const TodoList({super.key});

  @override
  State<TodoList> createState() => _TodoListState();
}

class _TodoListState extends State<TodoList> {
  List<String> todo = ['push code', 'commit code', 'pull code'];

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        for (var item in todo) Row(children: [Text(item), Icon(Icons.delete)]),
        Text('data2'),
        Column(
          children: [
            TextField(
              decoration: InputDecoration(labelText: "enter descrption"),
            ),
            FloatingActionButton(
              onPressed: () {
                setState(() {
                  todo;
                });
              },
              child: Icon(Icons.add),
            ),
          ],
        )
      ],
    );
  }
}
