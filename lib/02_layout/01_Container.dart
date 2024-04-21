import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('ContainerDemo'),
        leading: Icon(Icons.menu),
        actions: [
          Icon(Icons.settings)
        ],
        elevation: 0.0, 
        centerTitle: true, 
      ),
      body: ContainerDemo(),
    );
  }
}

class ContainerDemo extends StatelessWidget {
  const ContainerDemo({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Text(
        'Flutter是Google开源的构建用户界面（UI）工具包，帮助开发者通过一套代码库高效构建多平台精美应用，支持移动、Web、桌面和嵌入式平台。',
        style: TextStyle(
          fontSize: 20
        ),
      ),
      width: 200,
      height: 200,
      // width: double.infinity,
      // height: double.infinity,
      padding: EdgeInsets.all(10.0),
      margin: EdgeInsets.fromLTRB(10.0, 30.0, 0.0, 5.0),
      decoration: BoxDecoration(
      //   border: Border(
      //     top: BorderSide(
      //       width: 10.0,
      //       color: Colors.red,
      //     ),
      //     right: BorderSide(
      //       width: 10.0,
      //       color: Colors.red,
      //     ),
      //     bottom: BorderSide(
      //       width: 10.0,
      //       color: Colors.red,
      //     ),
      //     left: BorderSide(
      //       width: 10.0,
      //       color: Colors.red,
      //     )
      // ),
      border: Border.all(
        width: 10,
        color: Colors.blue
      ),
      // borderRadius: BorderRadius.all(Radius.circular(30)),
      borderRadius: BorderRadius.only(
        topLeft: Radius.circular(30),
      ),
      color: Colors.lightGreen[100], //背景色
      //设置渐变后，背景色失效
      gradient: LinearGradient(colors: [
        Colors.lightBlue,Colors.white12
      ])
      ),
      alignment: Alignment.center,
      //平移
      // transform: Matrix4.translationValues(100, 0, 0)
      //旋转  -0.1逆时针旋转
      // transform: Matrix4.rotationZ(-0.1),
      //斜切
      // transform: Matrix4.skewX(0.2),
    );
  }
}