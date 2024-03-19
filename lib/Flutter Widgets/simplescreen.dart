import 'package:flutter/material.dart';

class SimpleDesgin extends StatelessWidget {
  const SimpleDesgin({super.key});

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        leading: const Icon(Icons.image),
        title: const Column(
          children: [
            Text("Onyeka's Notion"),
            Text(
              "Onyeka's Notion",
              style: TextStyle(fontSize: 20),
            ),
          ],
        ),
        actions: const [
          Icon(Icons.menu_rounded),
        ],
      ),
      body: Container(
        padding: const EdgeInsets.all(20),
        height: size.height,
        width: size.width,
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Row(
                children: [
                  Text(
                    "jump back in",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                    ),
                  ),
                  SizedBox(
                    width: 3.5,
                  ),
                  Icon(Icons.arrow_drop_down),
                  Expanded(
                      child: const Align(
                    alignment: Alignment.centerRight,
                    child: Icon(Icons.add),
                  ))
                ],
              ),
              const SizedBox(
                height: 10,
              ),
              SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      Container(
                        height: 100,
                        width: 100,
                        decoration: BoxDecoration(
                            color: Colors.blue,
                            borderRadius: BorderRadius.circular(30)),
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      Container(
                        height: 100,
                        width: 100,
                        decoration: BoxDecoration(
                            color: Colors.black,
                            borderRadius: BorderRadius.circular(30)),
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      Container(
                        height: 100,
                        width: 100,
                        decoration: BoxDecoration(
                            color: Colors.blue,
                            borderRadius: BorderRadius.circular(30)),
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      Container(
                        height: 100,
                        width: 100,
                        decoration: BoxDecoration(
                            color: Colors.black,
                            borderRadius: BorderRadius.circular(30)),
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      Container(
                        height: 100,
                        width: 100,
                        decoration: BoxDecoration(
                            color: Colors.blue,
                            borderRadius: BorderRadius.circular(30)),
                      ),
                    ],
                  )),
              const SizedBox(
                height: 50,
              ),
              const Row(
                children: [
                  Text(
                    "Private",
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  SizedBox(
                    width: 3.5,
                  ),
                  Icon(Icons.arrow_drop_down),
                  Expanded(
                      child: Align(
                    alignment: Alignment.centerRight,
                    child: Icon(Icons.add),
                  ))
                ],
              ),
              const Divider(
                color: Colors.black,
                thickness: 0.5,
              ),
              const Row(
                children: [
                  Icon(Icons.arrow_right),
                  Icon(Icons.blender_outlined),
                  Text("How To Start A Startup &...."),
                  Expanded(
                      child: Align(
                    alignment: Alignment.centerRight,
                    child: Icon(Icons.add),
                  ))
                ],
              ),
              const Divider(
                color: Colors.black,
                thickness: 0.5,
              ),
              const Row(
                children: [
                  Icon(Icons.arrow_right),
                  Icon(Icons.receipt),
                  Text("Getting started on mobile"),
                  Expanded(
                      child: Align(
                    alignment: Alignment.centerRight,
                    child: Icon(Icons.add),
                  ))
                ],
              ),
              const Divider(
                color: Colors.black,
                thickness: 0.5,
              ),
              const Row(
                children: [
                  Icon(Icons.arrow_right),
                  Icon(Icons.pin),
                  Text("Quick Note"),
                  Expanded(
                      child: Align(
                    alignment: Alignment.centerRight,
                    child: Icon(Icons.add),
                  ))
                ],
              ),
              const Divider(
                color: Colors.black,
                thickness: 0.5,
              ),
              const Row(
                children: [
                  Icon(Icons.arrow_right),
                  Icon(Icons.image),
                  Text("som Tee"),
                  Expanded(
                      child: Align(
                    alignment: Alignment.centerRight,
                    child: Icon(Icons.add),
                  ))
                ],
              ),
              const Divider(
                color: Colors.black,
                thickness: 0.5,
              ),
              const Row(
                children: [
                  Icon(Icons.arrow_right),
                  Icon(Icons.tiktok),
                  Text("Task List"),
                  Expanded(
                      child: Align(
                    alignment: Alignment.centerRight,
                    child: Icon(Icons.add),
                  ))
                ],
              ),
              const Divider(
                color: Colors.black,
                thickness: 0.5,
              ),
              const Row(
                children: [
                  Icon(Icons.arrow_right),
                  Icon(Icons.book),
                  Text("journal"),
                  Expanded(
                      child: Align(
                    alignment: Alignment.centerRight,
                    child: Icon(Icons.add),
                  ))
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
