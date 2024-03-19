import 'package:flutter/material.dart';
import 'package:flutter_tutorial/Sqflite-ToDo/add.dart';
import 'package:flutter_tutorial/Sqflite-ToDo/model.dart';
import 'package:flutter_tutorial/Sqflite-ToDo/userdb_helper.dart';

class ListScreen extends StatefulWidget {
  const ListScreen({super.key});

  @override
  State<ListScreen> createState() => _ListScreenState();
}

class _ListScreenState extends State<ListScreen> {
  // We had to late UserDBHelper to assign a variable(users) in the list screen
  //  we did the same for the List<UserModel> by assigning it to todo
  late UserDBHelper users;
  late Future<List<UserModel>> todo;

  @override
  void initState() {
    users = UserDBHelper();
    todo =
        users.getUsers(); // todo is now used to get our data from our database
    super.initState();
  }

// this is for refreshing your screen
  Future<void> onRefresh() async {
    setState(() {
      todo = users.getUsers();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('SQFLite ToDo'),
      ),
      body: FutureBuilder(
        future: todo,
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return const Center(
              child: CircularProgressIndicator(),
            );
          } else if (snapshot.hasError) {
            return Center(
              child: Text('ERROR: ${snapshot.error}'),
            );
          } else if (!snapshot.hasData) {
            return const Center(
              child: Text('NO DATA'),
            );
          } else {
            //  items are the data coming from databse.
            // the items is aslo used in out itemCount.
            final items = snapshot.data;
            return RefreshIndicator(
              onRefresh: onRefresh, // specified above
              child: ListView.builder(
                itemCount: items!.length,
                itemBuilder: (context, index) {
                  final Ab = items[index];
                  return Dismissible(
                    // Dismissible is used for deleting
                    // id is used for deleting
                    key: ValueKey<int?>(Ab.id),
                    direction: DismissDirection.startToEnd,
                    background: Container(
                      color: Colors.red,
                      alignment: Alignment.centerRight,
                      padding: const EdgeInsets.symmetric(horizontal: 10.0),
                      child: const Icon(Icons.delete_forever),
                    ),
                    onDismissed: (direction) async {
                      await users.deleteUser((Ab.id)!);
                      setState(() {});
                    },
                    child: Card(
                      child: ListTile(
                        contentPadding: const EdgeInsets.all(8.0),
                        title: Text(
                          (Ab.username)!,
                        ),
                        subtitle: Text(
                          (Ab.username)!,
                        ),
                      ),
                    ),
                  );
                },
              ),
            );
          }
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          var route =
              MaterialPageRoute(builder: (context) => const AddScreen());
          Navigator.push(context, route);
        },
        backgroundColor: Colors.deepOrange,
        child: const Icon(Icons.add),
      ),
    );
  }
}
