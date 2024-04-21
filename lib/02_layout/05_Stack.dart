import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('层叠布局'),
        leading: Icon(Icons.menu),
        actions: [
          Icon(Icons.settings)
        ],
        elevation: 0.0, 
        centerTitle: true, 
      ),
      body: StackDemo(),
    );
  }
}

class StackDemo extends StatelessWidget {
  const StackDemo({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Stack(
        textDirection:TextDirection.rtl,  //声明未定位子组件的排列顺序
        alignment: AlignmentDirectional.bottomEnd,  //声明未定位子组件的对齐方式
        children: [
          CircleAvatar(
            backgroundImage: NetworkImage('https://gimg2.baidu.com/image_search/src=http%3A%2F%2Fimg.alicdn.com%2Fbao%2Fuploaded%2Fi3%2F12393358%2FO1CN01UWjnlb1ag0cSZdLe6_%21%2112393358.jpg&refer=http%3A%2F%2Fimg.alicdn.com&app=2002&size=f9999,10000&q=a80&n=0&g=0n&fmt=auto?sec=1714639864&t=ae0781ab97435c3b2b3f0e567a64eacd'),
            radius: 200,
          ),
          Positioned(
            child: Container(
              color: Colors.red,
              padding: EdgeInsets.all(10),
              child: Text('热卖',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 16),
                        ),
                    ),
          top: 105,
          right: 40,
          ), 
          Text('Hello',
              style: TextStyle(
                color: Colors.black,
                fontSize: 35),
                  ),
        ],
      ),
    );
  }
}




