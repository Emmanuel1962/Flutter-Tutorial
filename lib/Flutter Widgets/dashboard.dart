import 'package:flutter/material.dart';

class DashBoard extends StatefulWidget {
  final Map<String, dynamic> userDetails;
  const DashBoard({super.key, required this.userDetails});

  @override
  State<DashBoard> createState() => _DashBoardState();
}

///This for the persons information to appear in the next screen(from forms)

class _DashBoardState extends State<DashBoard> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.userDetails['username'] + " 's Profile"),
      ),
      body: Container(
        padding: const EdgeInsets.all(15),
        child: Column(
          children: [
            Row(
              children: [
                const Text('Name :'),
                Text(widget.userDetails['username']),
              ],
            ),
            const SizedBox(
              height: 20,
            ),
            Row(
              children: [
                const Text('Password :'),
                Text(widget.userDetails['password']),
              ],
            ),
            const SizedBox(
              height: 20,
            ),
            Row(
              children: [
                const Text('E-mail :'),
                Text(
                  widget.userDetails['email'],
                ),
              ],
            ),
            const SizedBox(
              height: 20,
            ),
            Row(
              children: [
                const Text('Gender :'),
                Text(
                  widget.userDetails['gender'],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
