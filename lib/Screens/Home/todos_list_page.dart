import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:provider/provider.dart';
import 'package:velocity_x/velocity_x.dart';
import 'package:lottie/lottie.dart';

class ToDoList extends StatelessWidget {
  const ToDoList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => TaskProvider(),
      builder: (context, child) => MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Flutter Demo',
        theme: ThemeData(
          primarySwatch: Colors.teal,
        ),
        home: const TodosPage(),
        // initialRoute: TodosPage.id,
        // routes: {
        //   DataInputPage.id: (context) => const DataInputPage(),
        //   TodosPage.id: (context) => const TodosPage(),
        // },
      ),
    );
  }
}

class TodosPage extends StatelessWidget {
  static const String id = '/todos-page';
  const TodosPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: BackButton(
          onPressed: () {
            Get.back();
          },
        ),
        elevation: 0,
        title: const Text('My Tasks'),
        centerTitle: true,
      ),
      body: Consumer<TaskProvider>(
        builder: (context, taskProvider, child) => Column(
          children: [
            Expanded(
              child: (taskProvider.tasks.isEmpty)
                  ? Center(
                      child: LottieBuilder.asset('assets/anims/sad.json'),
                    )
                  : ListView.builder(
                      itemCount: taskProvider.tasks.length,
                      itemBuilder: (context, index) => Card(
                        child: ListTile(
                          title: Text(
                            taskProvider.tasks[index].title,
                          ),
                          subtitle: taskProvider.tasks[index].isCompleted
                              ? 'Compteled'.text.make()
                              : const Text('Incomplete'),
                          trailing: IconButton(
                            icon: const Icon(Icons.delete),
                            onPressed: () {},
                          ),
                        ),
                      ),
                    ),
            ),
            CupertinoButton(
              color: Colors.teal,
              child: 'Add a New Task'.text.make(),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => DataInputPage(),
                  ),
                );
              },
            ),
          ],
        ).p(24),
      ),
    );
  }
}

class DataInputPage extends StatelessWidget {
  // creating id for this screen to use it in routes def
  static const String id = '/data-input';
  DataInputPage({Key? key}) : super(key: key);

  addTask(BuildContext context) {
    Task newTask = Task(title: _titleController.text, isCompleted: false);
    Provider.of<TaskProvider>(context, listen: false).addTask(newTask);

//to go back to todos page
    Navigator.of(context).pop();
  }

  final TextEditingController _titleController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        centerTitle: true,
        title: const Text('Creating a new Task'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(24.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // with velocityX
            'Adding a new task?'.text.size(20).black.semiBold.makeCentered(),

            24.heightBox,
            TextField(
              controller: _titleController,
              decoration: const InputDecoration(
                  contentPadding: EdgeInsets.symmetric(horizontal: 12),
                  border: OutlineInputBorder()),
            ),
            24.heightBox,
            CupertinoButton(
              child: 'Add Task'.text.make(),
              onPressed: () {
                addTask(context);
              },
              color: Theme.of(context).primaryColor,
            )
          ],
        ),
      ),
    );
  }
}

class TaskProvider extends ChangeNotifier {
  List<Task> tasks = [];
  get getTasks {
    return tasks;
  }

  addTask(Task newTask) {
    tasks.add(newTask);

    notifyListeners();
  }
}

class Task {
  String title;
  bool isCompleted;

  Task({required this.title, required this.isCompleted});
}
