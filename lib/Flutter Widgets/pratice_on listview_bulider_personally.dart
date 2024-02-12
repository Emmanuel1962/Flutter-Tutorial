import 'package:flutter/material.dart';

class PraticeOnListViewBuilder extends StatefulWidget {
  const PraticeOnListViewBuilder({super.key});

  @override
  State<PraticeOnListViewBuilder> createState() =>
      _PraticeOnListViewBuilderState();
}

class _PraticeOnListViewBuilderState extends State<PraticeOnListViewBuilder> {
  List<Map> student = [
    {'name': 'Emmanuel', 'grade': 'Excellent'},
    {'name': 'Okafor', 'grade': 'Very Good'},
    {'name': 'Lucia', 'grade': 'Good'},
    // {'name': 'Ogechi', 'grade': 'Pass'}
  ];

  final GlobalKey<FormState> authkey = GlobalKey<FormState>();
  final TextEditingController nameCtrl = TextEditingController();
  final TextEditingController gradeCtrl = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Learning listview '),
      ),
      body: Container(
        padding: const EdgeInsets.all(20),
        child: Form(
          key: authkey,
          child: Column(
            children: [
              ListView.builder(
                shrinkWrap: true,
                itemCount: student.length,
                itemBuilder: (context, index) {
                  // return Card(
                  //   elevation: 40,
                  //   // color: Colors.grey.shade100,
                  //   shadowColor: Colors.blue.shade100,
                  //   shape: const StadiumBorder(),
                  //   child: ListTile(
                  //     leading: CircleAvatar(
                  //       child: Text(
                  //         student[index]['name'].substring(0, 1),
                  //       ),
                  //     ),
                  return Card(
                    elevation: 20,
                    shape: const StadiumBorder(),
                    child: ListTile(
                      leading: CircleAvatar(
                        child: Text(
                          student[index]['name'].substring(
                              0, 1), // this capitlaizes the first letter
                        ),
                      ),
                      title: Text(
                        student[index]['name'],
                      ),
                      subtitle: Text(
                        student[index]['grade'],
                      ),
                      trailing: IconButton(
                        onPressed: () {
                          student.removeAt(index);
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
              // TextFormField(
              //   controller: nameCtrl,
              //   decoration: InputDecoration(
              //     label: const Text('Name'),
              //     border: OutlineInputBorder(
              //       borderRadius: BorderRadius.circular(10),
              //     ),
              //     filled: true,
              //     fillColor: Colors.white,
              //   ),
              // ),
              // const SizedBox(
              //   height: 20,
              // ),
              // TextFormField(
              //   controller: gradeCtrl,
              //   decoration: InputDecoration(
              //     label: const Text('Grade'),
              //     border: OutlineInputBorder(
              //       borderRadius: BorderRadius.circular(10),
              //     ),
              //     filled: true,
              //     fillColor: Colors.white,
              //   ),
              // ),

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
              MaterialButton(
                onPressed: () {
                  if (authkey.currentState!.validate()) {
                    authkey.currentState!.save();
                    Map<String, dynamic> users = {};
                    users['name'] = nameCtrl.text;
                    users['grade'] = gradeCtrl.text;
                    student.add(users);

                    nameCtrl.clear();
                    gradeCtrl.clear();
                    setState(() {});
                  }
                },
                color: Colors.blueGrey,
                minWidth: 100,
                shape: const StadiumBorder(),
                child: const Text('sumbit'),
              )
            ],
          ),
        ),
      ),
    );
  }
}
