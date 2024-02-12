import 'package:flutter/material.dart';
import 'package:flutter_tutorial/Flutter%20Widgets/forms.dart';
import 'package:flutter_tutorial/Flutter%20Widgets/listview_builder.dart';
import 'package:flutter_tutorial/Flutter%20Widgets/simple_desgin.dart';

class TabbedViewClass extends StatelessWidget {
  const TabbedViewClass({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          automaticallyImplyLeading: false,
          backgroundColor: Colors.blue,
          elevation: 0,
          title: const Text('WHATSAPP'),
          bottom: const TabBar(
            indicatorColor: Colors.red,
            indicatorWeight: 4,
            labelStyle: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 20,
            ),
            tabs: [
              Tab(
                text: 'CHATS',
              ),
              Tab(
                text: 'STATUS',
              ),
              Tab(
                text: 'CALLS',
              ),
            ],
          ),
        ),
        body: const TabBarView(
          children: [
            SimpleDesign(),
            ListViewBuilder(),
            Forms(),
          ],
        ),
      ),
    );
  }
}
