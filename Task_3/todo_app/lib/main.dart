import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

// MAIN APP

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: TodoPage(),
    );
  }
}

// TODO PAGE

class TodoPage extends StatefulWidget {
  const TodoPage({super.key});

  @override
  _TodoPageState createState() => _TodoPageState();
}

// TODO STATE

class _TodoPageState extends State<TodoPage> {
  final List<String> todos = []; // Step 8
  final TextEditingController controller = TextEditingController(); // Step 9

  void addTodo() {
    if (controller.text.isNotEmpty) {
      setState(() {
        todos.add(controller.text);
        controller.clear();
      });
    }
  }

  void deleteTodo(int index) {
    setState(() {
      todos.removeAt(index);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Todo App")),
      body: Padding(
        padding: const EdgeInsets.all(12),
        child: Column(
          children: [
            TextField(
              controller: controller,
              decoration: const InputDecoration(
                labelText: "Enter Todo",
                border: OutlineInputBorder(),
              ),
            ),
            const SizedBox(height: 10),

            ElevatedButton(onPressed: addTodo, child: const Text("Add Todo")),

            const SizedBox(height: 10),

            Expanded(
              child: ListView.builder(
                itemCount: todos.length,
                itemBuilder: (context, index) {
                  return ListTile(
                    title: Text(todos[index]),
                    trailing: const Icon(Icons.delete, color: Colors.red),
                    onTap: () => deleteTodo(index),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
