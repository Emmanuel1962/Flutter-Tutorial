import 'package:flutter/material.dart';

class ListViewBuilder extends StatefulWidget {
  const ListViewBuilder({super.key});

  @override
  State<ListViewBuilder> createState() => _ListViewBuilderState();
}

class _ListViewBuilderState extends State<ListViewBuilder> {
  List<Map> names = [
    {'name': 'Emma', 'grade': 'Pass'},
    {'name': 'Carl', 'grade': 'Pass'},
    {'name': 'Victor', 'grade': 'Pass'},
  ];

  final GlobalKey<FormState> authkey = GlobalKey<FormState>();
  final TextEditingController nameCtrl = TextEditingController();
  final TextEditingController gradeCtrl = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('ListViewBuilder'),
      ),
      body: Container(
        padding: const EdgeInsets.all(10),
        child: Form(
          key: authkey,
          child: Column(
            children: [
              ListView.builder(
                shrinkWrap: true,
                itemCount: names.length,
                itemBuilder: (context, index) {
                  return Card(
                    elevation: 20,
                    shape: const StadiumBorder(),
                    child: ListTile(
                      leading: CircleAvatar(
                        child: Text(
                          names[index]['name'].substring(
                              0, 1), // this capitlaizes the first letter
                        ),
                      ),
                      title: Text(
                        names[index]['name'],
                      ),
                      subtitle: Text(
                        names[index]['grade'],
                      ),
                      trailing: IconButton(
                        onPressed: () {
                          names.removeAt(index);
                          setState(() {});
                        },
                        icon: const Icon(Icons.cancel),
                      ),
                    ),
                  );
                },
              ),
              const SizedBox(
                height: 20,
              ),
              TextFormField(
                controller: nameCtrl,
                decoration: InputDecoration(
                  label: const Text('Name'),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(15),
                  ),
                  fillColor: Colors.grey.shade300,
                  filled: true,
                ),
                // validator: (value) {
                //   if (value!.isEmpty) {
                //     return 'Please Enter Your Name';
                //   }
                //   return null;
                // },
              ),
              const SizedBox(
                height: 20,
              ),
              TextFormField(
                controller: gradeCtrl,
                decoration: InputDecoration(
                  label: const Text('Grade'),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(15),
                  ),
                  filled: true,
                  fillColor: Colors.grey.shade200,
                ),
                // validator: (value) {
                //   if (value!.isEmpty) {
                //     return 'Please Enter Your Grade';
                //   }
                //   return null;
                // },
              ),
              const SizedBox(
                height: 20,
              ),
              MaterialButton(
                onPressed: () {
                  if (authkey.currentState!.validate()) {
                    authkey.currentState!.save();
                    Map<String, dynamic> users =
                        {}; // creating an empty map using users
                    users['name'] = nameCtrl.text; // created name key and value
                    users['grade'] =
                        gradeCtrl.text; // created grade key and value
                    names.add(users); // added the map (users) to the list above

                    nameCtrl.clear();
                    gradeCtrl.clear();
                    setState(() {});
                  }
                },
                color: Colors.brown.shade200,
                minWidth: 100,
                shape: const StadiumBorder(),
                child: const Text('submit'),
              )
            ],
          ),
        ),
      ),
    );
  }
}
