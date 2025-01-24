import 'package:flutter/material.dart';

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
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: TodoList(),
      ),
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
  String inputted = "";
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        for (var item in todo)
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            // crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Row(
                children: [
                  Text(item),
                  IconButton(
                    icon: Icon(Icons.delete),
                    onPressed: () {
                      setState(() {
                        todo.remove(item); // Remove the item from the list
                      });
                    },
                  ),
                ],
              ),
            ],
          ),
        Text('data2'),
        Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextField(
                decoration: InputDecoration(
                    labelText: "enter descrption",
                    border: OutlineInputBorder()),
                onChanged: (value) => setState(() {
                  inputted = value;
                }),
              ),
            ),
            FloatingActionButton(
              onPressed: () {
                setState(() {
                  todo.add(inputted);
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
