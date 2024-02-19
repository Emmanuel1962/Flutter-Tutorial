import 'package:flutter/material.dart';
import 'package:flutter_tutorial/Flutter%20Widgets/modelapi.dart';

class ApiDashboard extends StatefulWidget {
  final User display; // the User is from the modelapi
  const ApiDashboard({super.key, required this.display});

  @override
  State<ApiDashboard> createState() => _ApiDashboardState();
}

class _ApiDashboardState extends State<ApiDashboard> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.display.firstName),
        leading: CircleAvatar(
          backgroundImage: NetworkImage(widget.display.avatar),
        ),
      ),
      body: Container(
        child: Column(
          children: [
            Row(
              children: [
                const Text(
                  'Lastname :',
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                Text(widget.display.lastName)
              ],
            ),
            const SizedBox(
              height: 20,
            ),
            Row(
              children: [
                const Text(
                  'Email :',
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                Text(widget.display.email)
              ],
            ),
            const SizedBox(
              height: 15,
            ),
          ],
        ),
      ),
    );
  }
}
