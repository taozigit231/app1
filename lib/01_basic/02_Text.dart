import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Text'),
        leading: Icon(Icons.menu),
        actions: [
          Icon(Icons.settings)
        ],
        elevation: 0.0, 
        centerTitle: true, 
      ),
      body: TextFlutter(),
    );
  }
}

class TextFlutter extends StatelessWidget {
  const TextFlutter({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(  //多子元素
      children: [
        Text(
         'Flutter是Google开源的构建用户界面（UI）工具包，帮助开发者通过一套代码库高效构建多平台精美应用，支持移动、Web、桌面和嵌入式平台。',
          textDirection:TextDirection.ltr,
          style: TextStyle(
            fontSize: 30,
            color: Colors.red,
            fontWeight: FontWeight.w500,
            fontStyle: FontStyle.italic,  //斜体
            decoration: TextDecoration.lineThrough,
            decorationColor: Colors.blue,
          ),
          textAlign: TextAlign.left,
          maxLines: 3,
          overflow: TextOverflow.ellipsis, //省略号
          textScaleFactor: 1.5,  //在文本的基础上放大1.5倍
        ),
        RichText(text: TextSpan(
          text: 'Hello',
          style: TextStyle(
            fontSize: 40,
            color: Color.fromARGB(255, 0, 255, 0)
          ),children: [
            TextSpan(
              text: 'Flutter',
              style: TextStyle(
                fontSize: 30,
                color: Color.fromRGBO(255, 0, 0, 1.0)
              )
            ),
            TextSpan(
              text: '你好世界',
              style: TextStyle(
                fontSize: 18,
                // color: Colors.pink[300]
                color: Color.fromARGB(0xFF, 0x00, 0xFF, 0x00)
              )
            )
          ]
        ),
        
        ),
      ],
    );
  }
}

