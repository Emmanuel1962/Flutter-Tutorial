import 'package:flutter/material.dart';
import 'package:flutter_tutorial/Flutter%20Widgets/carousel_class.dart';
import 'package:flutter_tutorial/Flutter%20Widgets/listview_builder.dart';
import 'package:flutter_tutorial/Flutter%20Widgets/listview_builderpratice.dart';
import 'package:flutter_tutorial/Flutter%20Widgets/splashscreen.dart';

class PraticeTabbedView extends StatefulWidget {
  const PraticeTabbedView({super.key});

  @override
  State<PraticeTabbedView> createState() => _PraticeTabbedViewState();
}

class _PraticeTabbedViewState extends State<PraticeTabbedView> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        appBar: AppBar(
          automaticallyImplyLeading: true,
          backgroundColor: Colors.blueAccent,
          title: const Text(' Tabbed View'),
          bottom: const TabBar(
            indicatorColor: Colors.redAccent,
            indicatorWeight: 5,
            labelStyle: TextStyle(
              fontSize: 10,
              fontWeight: FontWeight.bold,
            ),
            tabs: [
              Tab(
                text: 'Income',
              ),
              Tab(
                text: 'Savings',
              ),
              Tab(
                text: 'Expenses',
              ),
              Tab(
                text: 'Total',
              ),
            ],
          ),
        ),
        body: const TabBarView(
          children: [
            SplashScreen(),
            CarouselClass(),
            ListViewBuilder(),
            PraticeListViewBuilder(),
          ],
        ),
      ),
    );
  }
}
