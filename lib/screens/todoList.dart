import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class Todolist extends StatefulWidget {
  const Todolist({super.key});

  @override
  State<Todolist> createState() => _TodolistState();
}

class _TodolistState extends State<Todolist> {
  List<Map<String, String>> tasks = [
    {
      "task": "Sample Task",
      "time": DateFormat('yyyy-MM-dd – hh:mm a').format(DateTime.now()),
    },
  ];

  TextEditingController taskController = TextEditingController();
  String toSentenceCase(String input) {
    if (input.isEmpty) return input;
    input = input.trim();
    return input[0].toUpperCase() + input.substring(1).toLowerCase();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        shape: const Border(bottom: BorderSide(color: Colors.blue, width: 1)),
        title: const Padding(
          padding: EdgeInsets.all(8.0),
          child: Text(
            "Let's Do This",
            style: TextStyle(color: Colors.blue, fontSize: 32),
          ),
        ),
      ),
      drawer: Drawer(
        backgroundColor: Colors.lime,
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  width: double.infinity,
                  padding: const EdgeInsets.all(16),
                  decoration: BoxDecoration(
                    color: Colors.lime.shade400,
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: const [
                      Text(
                        "Let's Do This ✅",
                        style: TextStyle(
                          fontSize: 26,
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(height: 8),
                      Text(
                        "A small fun project made to learn Flutter basics",
                        style: TextStyle(fontSize: 16, color: Colors.white),
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 20),
                const Spacer(),
                const Center(
                  child: Text(
                    "Made with ❤️ in Flutter",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 16,
                      fontStyle: FontStyle.italic,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
      body: tasks.isEmpty
          ? const Center(
              child: Text(
                "Please Add A Task 😊",
                style: TextStyle(
                  fontSize: 22,
                  color: Colors.grey,
                  fontWeight: FontWeight.w500,
                ),
              ),
            )
          : ListView.builder(
              itemCount: tasks.length,
              itemBuilder: (c, i) {
                return Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: ListTile(
                    tileColor: Colors.lime,
                    title: Text(
                      tasks[i]["task"]!,
                      style: const TextStyle(
                        fontSize: 20,
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    subtitle: Text(
                      tasks[i]["time"]!,
                      style: const TextStyle(color: Colors.white70),
                    ),
                    trailing: Wrap(
                      children: [
                        IconButton(
                          onPressed: () {
                            taskController.text = tasks[i]["task"]!;
                            showDialog(
                              context: context,
                              builder: (context) {
                                return AlertDialog(
                                  title: const Text("Update Task"),
                                  content: TextField(
                                    controller: taskController,
                                  ),
                                  actions: [
                                    ElevatedButton(
                                      onPressed: () {
                                        Navigator.pop(context);
                                      },
                                      child: const Text("Cancel"),
                                    ),
                                    ElevatedButton(
                                      onPressed: () {
                                        setState(() {
                                          tasks[i]["task"] = toSentenceCase(
                                            taskController.text,
                                          );
                                          tasks[i]["time"] = DateFormat(
                                            'yyyy-MM-dd – hh:mm a',
                                          ).format(DateTime.now());
                                        });
                                        taskController.clear();
                                        Navigator.pop(context);
                                      },
                                      child: const Text("Update Task"),
                                    ),
                                  ],
                                );
                              },
                            );
                          },
                          icon: const Icon(
                            Icons.update,
                            color: Colors.white,
                            size: 36,
                          ),
                        ),
                        IconButton(
                          onPressed: () {
                            setState(() {
                              tasks.removeAt(i);
                            });
                          },
                          icon: Icon(
                            Icons.delete,
                            color: Colors.red.shade300,
                            size: 36,
                          ),
                        ),
                      ],
                    ),
                  ),
                );
              },
            ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          showDialog(
            context: context,
            builder: (context) {
              return AlertDialog(
                title: const Text("Add Task"),
                content: TextField(controller: taskController),
                actions: [
                  ElevatedButton(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    child: const Text("Cancel"),
                  ),
                  ElevatedButton(
                    onPressed: () {
                      setState(() {
                        tasks.add({
                          "task": toSentenceCase(taskController.text),
                          "time": DateFormat(
                            'yyyy-MM-dd – hh:mm a',
                          ).format(DateTime.now()),
                        });
                      });
                      taskController.clear();
                      Navigator.pop(context);
                    },
                    child: const Text("Add Task"),
                  ),
                ],
              );
            },
          );
        },
        backgroundColor: Colors.lime,
        child: const Icon(Icons.add, color: Colors.white, size: 40),
      ),
    );
  }
}
