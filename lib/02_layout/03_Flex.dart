import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Flex'),
        leading: Icon(Icons.menu),
        actions: [
          Icon(Icons.settings)
        ],
        elevation: 0.0, 
        centerTitle: true, 
      ),
      body: FlexDemo(),
    );
  }
}
class FlexDemo extends StatelessWidget {
  const FlexDemo({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
              //验证 Expanded
              Container(
                color: Colors.red,
                height: 50,
                width: 100,  //container盒子，默认宽度为0 需要声明
              ),
              Expanded(child: Container(
                color: Colors.lightBlue[200],
                height: 50,
              ))
          ],  
        ),
        Flex(
          direction: Axis.horizontal,
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          //声明水平方向的排列方式
          textDirection: TextDirection.ltr,
          children: [
             Icon(Icons.access_alarm,size: 50),
             Icon(Icons.accessible_forward_rounded,size: 50),
             Icon(Icons.settings,size:50),
             Icon(Icons.add_box,size: 50),
          ],
          ),
          Flex(
            direction: Axis.horizontal,
            children: [
              Expanded(
                child: Container(
                  color: Colors.tealAccent,
                  width: 50, //width失效，可以去掉
                  height: 50,
                ),
                flex: 3,   //通过flex属性，声明占比。即宽度
                ),
              Expanded(
                child: Container(
                  color: Colors.black,
                  width: 50,
                  height: 50,
                ),
                flex: 2,
                ),
            ],
          ),
          Container(
            height: 100,
            margin: EdgeInsets.all(50), 
            child: Flex(
              direction: Axis.vertical,
              verticalDirection: VerticalDirection.up,
              children: [
                Expanded(
                  child: Container(
                    color: Colors.tealAccent,
                    // width: 50, //width失效，可以去掉
                    height: 50,
                  ),
                  flex: 2,   //通过flex属性，声明占比。即宽度
                  ),
                  Spacer(  //空格占位器
                    flex: 1,
                  ),
                Expanded(
                  child: Container(
                    color: Colors.black,
                    // width: 50,
                    height: 50,
                  ),
                  flex: 1,
                  ),
              ],
          ),
          )
      ],
    );
  }
}