import 'package:curved_labeled_navigation_bar/curved_navigation_bar.dart';
import 'package:curved_labeled_navigation_bar/curved_navigation_bar_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/chat_page.dart';
import 'package:flutter_application_1/home_page.dart';
import 'package:flutter_application_1/login/login.dart';
import 'package:flutter_application_1/profile_page.dart';
import 'package:flutter_application_1/search_page.dart';
void main(){
runApp(MyApp());
}

class MyApp extends StatelessWidget {
const MyApp({super.key});

@override
Widget build(BuildContext context) {
  return MaterialApp(
    title: "TP2",
    theme: ThemeData(
      colorScheme: ColorScheme.fromSeed(seedColor: Colors.pink),
      useMaterial3: true,
    ),
    
    home: LoginPage(),
  );
}

}
class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int _page = 0;
    List<Widget> pages = [
    HomePage(),
    SearchPage(),
    ChatPage(),
    ProfilePage(),
  ];

  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
      body: pages[_page],
      appBar: AppBar(
        title: Text("TP2 - Navigation Bar"),backgroundColor: const Color.fromARGB(255, 176, 134, 148),
      ),
bottomNavigationBar: CurvedNavigationBar(
  backgroundColor: Colors.blueAccent,
  items: [
    CurvedNavigationBarItem(
      child: Icon(Icons.home),
      label: "Home",
    ),
    CurvedNavigationBarItem(
      child: Icon(Icons.search),
      label: "Search",
    ),
    CurvedNavigationBarItem(
      child: Icon(Icons.message),
      label: "Chat",
    ),
    CurvedNavigationBarItem(
      child: Icon(Icons.perm_identity),
      label: "Profile",
    ),
  ],
  onTap: (index){setState(() {
    _page = index;
  });
  },
),
    );
  }
}


