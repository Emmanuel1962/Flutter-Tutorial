import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter_tutorial/Flutter%20Widgets/api_dashboard.dart';
import 'package:flutter_tutorial/Flutter%20Widgets/modelapi.dart';
import 'package:http/http.dart' as http;

class ApiFetch extends StatefulWidget {
  const ApiFetch({super.key});

  @override
  State<ApiFetch> createState() => _ApiFetchState();
}

class _ApiFetchState extends State<ApiFetch> {
// fetchUser is a function to fetch api from the net or server
// Future means you are waiting for a data to come from the net

//Uri.parse means you are getting it from the the net.
  Future<Map<String, dynamic>> fetchUser() async {
    Map<String, dynamic> result = {};
    var url = Uri.parse('https://reqres.in/api/users?pages=1');
    var response =
        await http.get(url); //this is used to get to get data from the link
    if (response.statusCode == 200) {
      Map<String, dynamic> user = jsonDecode(
          response.body); // jsonDecode is used to decode data from the net
      result = user;
    }
    return result;
  }

  @override
  void initState() {
    super.initState();
    fetchUser();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Fetching an API'),
      ),
      body: SizedBox(
        width: double.infinity,
        child: FutureBuilder(
            future: fetchUser(),
            // bulider is where you write what you want to display
            builder: (context, snapshot) {
              if (snapshot.connectionState == ConnectionState.waiting) {
                return const Center(
                  child: CircularProgressIndicator(),
                );
              } else if (snapshot.hasError) {
                return const Center(
                  child: Text('ERROR'),
                );
              } else if (!snapshot.hasData) {
                return const Center(
                  child: Text('NO DATA'),
                );
              } else {
                final data = snapshot.data;
                return ListView.builder(
                    shrinkWrap:
                        true, // this helps to maximize the list in a screen
                    itemCount: data!['data'].length,
                    itemBuilder: (context, index) {
                      return singleUser(
                        User.fromJson(data['data']
                            [index]), // 'data is from the net ( like the body )
                        // The User is  from the model api
                      );
                    });
              }
            }),
      ),
    );
  }

// THe User is also from the api and the other user is a variable used to ascess the model User api
  Widget singleUser(User user) {
    return ListTile(
      onTap: () {
        var route = MaterialPageRoute(
          builder: (context) => ApiDashboard(
              display:
                  user), // this user is the one used to ascess the model api
        );
        Navigator.push(context, route);
      },
      leading: CircleAvatar(
        backgroundImage: NetworkImage(user.avatar),
      ),
      title: Text(user.firstName),
      subtitle: Text(user.email),
    );
  }
}
