import 'package:flutter/material.dart'; //material 에 flutter THEME이라던지 필요한 것들 들어있음

void mian() => runApp(MyApp()); //가장 먼저 실행되는 부분

class MyApp extends StatelessWidget {
  //클래스 이름은 항상 PasCal 형식으로
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      //실질적으로 모든 위젯을 감싸고 있음
      title: "MyApp", //Text() widget 사용하지 않는 이유 : 그냥 앱을 통칭하는 이름이므로
      theme: ThemeData(primarySwatch: Colors.blue), //색상 견본
      home: MyHomePage(), //가장 먼저 화면에 보여지는 경로
    );
  }
}

//stateless stateful 모양이 변하는 요소가 한개라도 있다면 stateful widget 선택하기

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //무언가를 혼자해낼 수 있도록 발판을 만들어주는 것(빈 도화지 같은 역할)
      appBar: AppBar(
        title: Text("hello"),
      ),
      body: Center(
          //자식 위젯을 가짐
          child: Column(
        //column이 자식을 가진다면 children(복수)
        children: [Text("hello"), Text("My name is"), Text("meeju")],
      )),
    );
  }
}
