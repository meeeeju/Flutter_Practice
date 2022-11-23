import 'package:flutter/material.dart'; //material 에 flutter THEME이라던지 필요한 것들 들어있음

void main() => runApp(MyApp()); //가장 먼저 실행되는 부분

class MyApp extends StatelessWidget {
  //클래스 이름은 항상 PasCal 형식으로
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      //실질적으로 모든 위젯을 감싸고 있음
      title: "BBANTO", //Text() widget 사용하지 않는 이유 : 그냥 앱을 통칭하는 이름이므로
      theme: ThemeData(primarySwatch: Colors.blue), //색상 견본
      home: Grade(), //가장 먼저 화면에 보여지는 경로
    );
  }
}

//stateless stateful 모양이 변하는 요소가 한개라도 있다면 stateful widget 선택하기

class Grade extends StatelessWidget {
  const Grade({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 226, 171, 8),
      appBar: AppBar(
        centerTitle: true,
        title: Text('BBANTO'),
        backgroundColor: Color.fromRGBO(255, 193, 7, 0.888),
        elevation: 0.0,
      ),
      body: Padding(
        padding: EdgeInsets.fromLTRB(30.0, 40.0, 0.0, 0.0),
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          Center(
            child: CircleAvatar(
              backgroundImage: AssetImage('assets/images/hill.jpeg'),
              radius: 60.0,
            ),
          ),
          Divider(
            height: 60.0, //divider 위와 아래의 간격의 합이 60.0
            color: Colors.grey,
            thickness: 0.5, //선의 두께
            endIndent: 30.0,
          ),
          Text(
            "NAME",
            style: TextStyle(
              color: Colors.white,
              letterSpacing: 2.0,
            ),
          ),
          SizedBox(
            height: 10.0,
            // width: 10.0,
          ),
          Text(
            'BBANTO',
            style: TextStyle(
              color: Colors.white,
              letterSpacing: 2.0,
              fontSize: 28.0,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(
            height: 30.0,
          ),
          Text(
            "BRAND POWER LEVEL",
            style: TextStyle(
              color: Colors.white,
              letterSpacing: 2.0,
            ),
          ),
          SizedBox(
            height: 10.0,
            // width: 10.0,
          ),
          Text(
            '14',
            style: TextStyle(
              color: Colors.white,
              letterSpacing: 2.0,
              fontSize: 28.0,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(
            height: 30.0,
          ),
          Row(
            children: [
              Icon(Icons.check_circle_outline),
              SizedBox(
                width: 10.0,
              ),
              Text(
                'using lightsabar',
                style: TextStyle(fontSize: 16.0, letterSpacing: 1.0),
              )
            ],
          ),
          Row(
            children: [
              Icon(Icons.check_circle_outline),
              SizedBox(
                width: 10.0,
              ),
              Text(
                'face hero tattoo',
                style: TextStyle(fontSize: 16.0, letterSpacing: 1.0),
              )
            ],
          ),
          Row(
            children: [
              Icon(Icons.check_circle_outline),
              SizedBox(
                width: 10.0,
              ),
              Text(
                'fire flames',
                style: TextStyle(fontSize: 16.0, letterSpacing: 1.0),
              )
            ],
          ),
          Center(
            child: CircleAvatar(
              backgroundImage: AssetImage('assets/images/cat.jpeg'),
              radius: 40.0,
              backgroundColor: Color.fromARGB(255, 226, 171, 8),
            ),
          )
        ]),
      ),
    );
  }
}
