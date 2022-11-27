import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // 플러터에 sdk에서 제공하는 모든 위젯 사용가능해짐
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
          // leading: IconButton(
          //   icon: Icon(Icons.menu),
          //   onPressed: () {
          //     print("menu button is clicked");
          //   },
          // ),
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
        drawer: Drawer(
          child: ListView(
            padding: EdgeInsets.zero,
            children: [
              UserAccountsDrawerHeader(
                accountName: Text('hi1234'),
                accountEmail: Text('hi@naver.com'),
                currentAccountPicture: CircleAvatar(
                  backgroundColor: Colors.white,
                  backgroundImage: AssetImage('assets/images/cat.jpeg'),
                ),
                otherAccountsPictures: [
                  CircleAvatar(
                    backgroundImage: AssetImage('assets/images/hill.jpeg'),
                  ),
                ],
                onDetailsPressed: () {
                  //이메일 우측에 화살표
                  print("arrow is clicked");
                },
                decoration: BoxDecoration(
                    color: Colors.red[400],
                    borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(40.0),
                        bottomRight: Radius.circular(40.0))),
              ),
              ListTile(
                leading: Icon(
                  Icons.home,
                  color: Colors.grey[850],
                ),
                title: Text('Home'),
                onTap: (() {
                  print('HOme is clicked');
                }),
                trailing: Icon(Icons.add),
              ),
              ListTile(
                leading: Icon(
                  Icons.settings,
                  color: Colors.grey[850],
                ),
                title: Text('Setting'),
                onTap: (() {
                  print('Setting is clicked');
                }),
                trailing: Icon(Icons.add),
              ),
              ListTile(
                leading: Icon(
                  Icons.question_answer,
                  color: Colors.grey[850],
                ),
                title: Text('Q&A'),
                onTap: (() {
                  print('Q&A is clicked');
                }),
                trailing: Icon(Icons.add),
              )
            ],
          ),
        ),
        body: MySnackBar());
  }
}

class MySnackBar extends StatelessWidget {
  const MySnackBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: TextButton(
        onPressed: () {
          var snackBar = SnackBar(
            content: Text(
              'Hello World',
              textAlign: TextAlign.center,
              style:TextStyle(color: Colors.white, )
            ),
            backgroundColor: Colors.teal
            duration: Duration(milliseconds: 1000),//1000은 1초임
          );
          ScaffoldMessenger.of(context).showSnackBar(snackBar);
        },
        style: ButtonStyle(
          textStyle: MaterialStateProperty.all(TextStyle(fontSize: 14)),
          foregroundColor: MaterialStateProperty.all(Colors.blue),
        ),
        child: Text("TextButton"),
      ),
    );
  }
}

Center testing() {
  //이거는 함수다 !
  return Center(
    child: TextButton(
      onPressed: () {},
      style: ButtonStyle(
        textStyle: MaterialStateProperty.all(TextStyle(fontSize: 14)),
        foregroundColor: MaterialStateProperty.all(Colors.black),
      ),
      child: Text("TextButton"),
    ),
  );
}
