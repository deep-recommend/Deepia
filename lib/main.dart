import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'models/bottom.navigation.dart';
import 'routes/search.dart';
import 'routes/profile.dart';
import 'routes/like.dart';
import 'routes/inbox.dart';
import 'routes/drive.dart';
import 'dart:convert';
import 'package:flutter_localizations/flutter_localizations.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      localizationsDelegates: [
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],
      supportedLocales: const [
        Locale('ja', ''),
        Locale('en', ''),
      ],
      title: 'DeepDrive',
      theme: ThemeData(primarySwatch: Colors.blue),
      home: const MyHomePage(title: 'DeepDrive'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: ChangeNotifierProvider<BottomNavigationModel>(
        create: (_) => BottomNavigationModel(),
        child:
            Consumer<BottomNavigationModel>(builder: (context, model, child) {
          return Scaffold(
            body: [
              Search(),
              Like(),
              Drive(),
              Inbox(),
              Profile(),
            ][model.currentIndex],
            bottomNavigationBar: BottomNavigationBar(
              type: BottomNavigationBarType.fixed,
              items: const [
                BottomNavigationBarItem(
                  icon: Icon(Icons.search),
                  label: 'Search',
                ),
                BottomNavigationBarItem(
                  icon: Icon(Icons.favorite),
                  label: 'Like',
                ),
                BottomNavigationBarItem(
                  icon: Icon(Icons.directions_car),
                  label: 'Drive',
                ),
                BottomNavigationBarItem(
                  icon: Icon(Icons.inbox),
                  label: 'Inbox',
                ),
                BottomNavigationBarItem(
                  icon: Icon(Icons.person),
                  label: 'Profile',
                ),
              ],
              currentIndex: model.currentIndex,
              onTap: (index) {
                model.currentIndex = index;
              },
              selectedItemColor: Colors.lightBlue,
              unselectedItemColor: Colors.black45,
            ),
          );
        }),
      ),
    );
  }
}
