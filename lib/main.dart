import 'package:flutter/material.dart'; //material 에 flutter THEME이라던지 필요한 것들 들어있음

void main() => runApp(MyApp()); //가장 먼저 실행되는 부분

class MyApp extends StatelessWidget {
  //클래스 이름은 항상 PasCal 형식으로
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      //실질적으로 모든 위젯을 감싸고 있음
      title: "Charactor card", //Text() widget 사용하지 않는 이유 : 그냥 앱을 통칭하는 이름이므로
      theme: ThemeData(primarySwatch: Colors.blue), //색상 견본
      home: MyCard(), //가장 먼저 화면에 보여지는 경로
    );
  }
}

//stateless stateful 모양이 변하는 요소가 한개라도 있다면 stateful widget 선택하기

class MyCard extends StatelessWidget {
  const MyCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //무언가를 혼자해낼 수 있도록 발판을 만들어주는 것(빈 도화지 같은 역할)
      appBar: AppBar(
        title: Text("Charactor card"),
        centerTitle: true,
        backgroundColor: Colors.white10,
        elevation: 0.5, //padding 과 margin 의 차이점 : margin이 서로 다른 요소 간의 간격
      ),
      body: Center(
        //항상 화면 정 중앙에 위치하는 것은 아님  //column 자체를 중앙으로
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center, //column 세로 축 중에서 중앙에 위치
          children: [Text("hi"), Text("hello"), Text("hawi")],
        ),
      ),
    );
  }
}
