import 'package:flutter/material.dart';
import 'package:flutter_tutorial/Flutter%20Widgets/user_prefrence.dart';

class UserPreference extends StatefulWidget {
  const UserPreference({super.key});

  @override
  State<UserPreference> createState() => _UserPreferenceState();
}
//Shared preferences are use to store little data.

class _UserPreferenceState extends State<UserPreference> {
  String name = "";
  int counter = 0;

  @override
  void initState() {
    name = SimplePreferences.getname();
    counter = SimplePreferences.getscore();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          TextFormField(
            initialValue: name,
            decoration: const InputDecoration(
              border: OutlineInputBorder(),
              hintText: 'Your Name',
            ),

            // any change in the value will be equal to the name
            onChanged: (value) {
              setState(() {
                name = value;
              });
            },
          ),
          const SizedBox(
            height: 20,
          ),
          TextButton(
            onPressed: () {
              setState(() {
                counter++;
              });
            },
            child: Text('$counter'),
          ),
          const SizedBox(
            height: 20,
          ),
          MaterialButton(
            onPressed: () async {
              await SimplePreferences.setName(name);
              await SimplePreferences.setScore(counter);
            },
            color: Colors.blue,
            child: const Text('Save'),
          )
        ],
      ),
    );
  }
}
