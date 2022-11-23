import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Appbar',
      theme: ThemeData(primarySwatch: Colors.red),
      home: MyPage(),
    );
  }
}

class MyPage extends StatelessWidget {
  const MyPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Appbar Icon Menu",
          // style: TextStyle(color: Colors.black),
        ),
        centerTitle: true,
        elevation: 0.0,
        //무조건 appbar에서만 쓰이는 것은 아니고, 간단한 위젯이나 아이콘 appbar에 타이틀 왼쪽에 위치시키기 가능
        leading: IconButton(
          icon: Icon(Icons.menu),
          onPressed: () {
            print("menu button is clicked");
          },
        ),
        actions: [
          IconButton(
            icon: Icon(Icons.shopping_cart),
            onPressed: () {
              print("shopping_cart is clicked");
            },
          ),
          IconButton(
            icon: Icon(Icons.search),
            onPressed: () {
              print("search is clicked");
            },
          ),
        ],
      ),
      body: Text('hi'),
    );
  }
}
