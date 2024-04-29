import 'package:flutter/material.dart';

import 'main.dart';

class TodoListPage extends StatefulWidget {
  const TodoListPage({super.key});

  @override
  State<TodoListPage> createState() => _TodoListPageState();
}

class _TodoListPageState extends State<TodoListPage> {

  final _items = <Todo>[];

  var _todoController = TextEditingController();

  @override
  void dispose() {
    _todoController.dispose();
    super.dispose();
  }

  Widget _buildItemWidget(Todo todo) {
    return ListTile(
      onTap: () => _toggleTodo(todo),
      title: Text(
        todo.title,
        style: todo.isDone
            ? TextStyle(
          decoration: TextDecoration.lineThrough,
          fontStyle: FontStyle.italic,
        ) 
            :null,
      ),
      trailing: IconButton(
        icon: Icon(Icons.delete_forever),
        onPressed: () => _deleteTodo(todo),
      ),
    );
  }

  void _addTodo(Todo todo){
    setState(() {
      _items.add(todo);
      _todoController.text = '';
    });
  }
  
  void _deleteTodo(Todo todo) {
    setState(() {
      _items.remove(todo);
    });
  }
  
  void _toggleTodo(Todo todo){
    setState(() {
      todo.isDone = !todo.isDone;
    });
  }
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("남은 할 일"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            Row(
              children: [
                Expanded(
                    child: TextField(
                      controller: _todoController,
                    ),
                ),
                ElevatedButton(
                    onPressed: () => _addTodo(Todo(_todoController.text)),
                    child: Text('추가'),
                ),
              ],
            ),
            Expanded(
                child: ListView(
                  children: _items.map((todo) => _buildItemWidget(todo)).toList(),
                ),
            ),
          ],
        ),
      ),
    );
  }
}
