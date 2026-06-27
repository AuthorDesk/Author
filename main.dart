
import 'package:flutter/material.dart';

void main() {
  runApp(const AuthorDeskApp());
}

class AuthorDeskApp extends StatelessWidget {
  const AuthorDeskApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'AuthorDesk',
      theme: ThemeData(
        useMaterial3: true,
        colorSchemeSeed: Colors.blue,
      ),
      home: const HomeScreen(),
    );
  }
}

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("AuthorDesk"),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: const Icon(Icons.add),
      ),
      body: ListView(
        padding: const EdgeInsets.all(16),
        children: [
          const Text(
            "Welcome Back",
            style: TextStyle(
              fontSize: 26,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(height: 20),

          _bookCard(
            title: "My First Book",
            progress: "45% Complete",
          ),

          const SizedBox(height: 12),

          _bookCard(
            title: "Indian Constitution",
            progress: "12% Complete",
          ),
        ],
      ),
    );
  }

  Widget _bookCard({
    required String title,
    required String progress,
  }) {
    return Card(
      child: ListTile(
        leading: const Icon(Icons.menu_book),
        title: Text(title),
        subtitle: Text(progress),
        trailing: const Icon(Icons.arrow_forward_ios),
      ),
    );
  }
}
