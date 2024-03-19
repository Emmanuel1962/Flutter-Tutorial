import 'package:flutter/material.dart';
import 'package:flutter_tutorial/Flutter%20Widgets/alert_dialog.dart';
import 'package:flutter_tutorial/Flutter%20Widgets/api_fetch.dart';
import 'package:flutter_tutorial/Flutter%20Widgets/api_post.dart';
import 'package:flutter_tutorial/Flutter%20Widgets/bottomnavclass.dart';
import 'package:flutter_tutorial/Flutter%20Widgets/carousel_class.dart';
import 'package:flutter_tutorial/Flutter%20Widgets/forms.dart';
import 'package:flutter_tutorial/Flutter%20Widgets/listview_builder.dart';
import 'package:flutter_tutorial/Flutter%20Widgets/listview_builderpratice.dart';
import 'package:flutter_tutorial/Flutter%20Widgets/pratice_on%20listview_bulider_personally.dart';
import 'package:flutter_tutorial/Flutter%20Widgets/shared_preferences.dart';
import 'package:flutter_tutorial/Flutter%20Widgets/splashscreen.dart';
import 'package:flutter_tutorial/Flutter%20Widgets/tabbed_view.dart';
import 'package:flutter_tutorial/Flutter%20Widgets/user_prefrence.dart';
import 'package:flutter_tutorial/Flutter%20Widgets/webview_class.dart';
import 'package:flutter_tutorial/Flutter%20Widgets/webview_pratical.dart';
import 'package:flutter_tutorial/Sqflite-ToDo/db_helper.dart';
import 'package:flutter_tutorial/Sqflite-ToDo/list.dart';
// import 'package:flutter_tutorial/Flutter%20Widgets/roughform.dart';

void main() async {
  // Before you initialized anything you must use the line below
  WidgetsFlutterBinding.ensureInitialized();
  await SimplePreferences.init();
  await DataBaseHelper.instance.database;
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Tutorial App',
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
          useMaterial3: true,
        ),
        home: const ListScreen());
  }
}
