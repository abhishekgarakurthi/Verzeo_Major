import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:navigation_drawer_example/page/google_sign_in.dart';
import 'package:navigation_drawer_example/page/startpage.dart';
import 'package:navigation_drawer_example/widget/navigation_drawer_widget.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:provider/provider.dart';

Future main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  static final String title = 'Groceries';

  @override
  Widget build(BuildContext context) => ChangeNotifierProvider(
        create: (context) => GoogleSignInProvider(),
        child: MaterialApp(
          debugShowCheckedModeBanner: false,
          title: title,
          theme: ThemeData(primarySwatch: Colors.blue),
          home: startpage(),
        ),
      );
}

class MainPage extends StatefulWidget {
  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  @override
  Widget build(BuildContext context) => Scaffold(
      drawer: NavigationDrawerWidget(),
      // endDrawer: NavigationDrawerWidget(),
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: Text(MyApp.title),
      ),
      body: SafeArea(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Container(
            child: Center(
                child: Text("Welcome!!",
                    style: TextStyle(
                        fontSize: 40,
                        fontWeight: FontWeight.bold,
                        color: Colors.black))),
          ),
          SizedBox(
            height: 30,
          ),
          Container(
            child: Center(
              child: CircleAvatar(
                radius: 155,
                backgroundImage: NetworkImage(
                    'https://cdn.w600.comps.canstockphoto.com/grocery-bag-with-food-icon-white-vector-clipart_csp49516502.jpg'),
              ),
            ),
          ),
        ],
      )));
}
