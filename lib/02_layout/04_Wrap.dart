import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('WrapDemo'),
        leading: Icon(Icons.menu),
        actions: [
          Icon(Icons.settings)
        ],
        elevation: 0.0, 
        centerTitle: true, 
      ),
      body: WrapDemo(),
    );
  }
}
class WrapDemo extends StatelessWidget {

  List<String> _list = ['曹操','司马懿','曹仁','曹洪','张辽','许褚'];
  List<Widget> _weiGuo(){
    return _list.map((item) => Chip(
              avatar: CircleAvatar(
                backgroundColor: Colors.pink[200],
                child: Text('魏'),
                ),
              label: Text(item),
                )
          ).toList();
  }
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Wrap(
          children: 
            _weiGuo(),
          spacing: 18.0,  //水平方向的间距
          runSpacing: 20, //垂直方向的间距
          alignment: WrapAlignment.spaceAround,  //主轴方向的对齐方式
          runAlignment: WrapAlignment.spaceAround, //交叉轴方向的对齐方式
        ),
        // Row(    //会有内容溢出警告
        Wrap(  // 解决内容溢出问题
          children: [
            Chip(
              avatar: CircleAvatar(
                backgroundColor: Colors.blue,
                child: Text('蜀'),
                ),
              label: Text('刘备'),
                ),
            Chip(
              avatar: CircleAvatar(
                backgroundColor: Colors.blue,
                child: Text('蜀'),
                ),
              label: Text('关羽'),
                ),
            Chip(
              avatar: CircleAvatar(
                backgroundColor: Colors.blue,
                child: Text('蜀'),
                ),
              label: Text('张飞'),
                ),
            Chip(
              avatar: CircleAvatar(
                backgroundColor: Colors.blue,
                child: Text('蜀'),
                ),
              label: Text('赵云'),
                ),
            Chip(
              avatar: CircleAvatar(
                backgroundColor: Colors.blue,
                child: Text('蜀'),
                ),
              label: Text('诸葛亮'),
                ),
            Chip(
              avatar: CircleAvatar(
                backgroundColor: Colors.blue,
                child: Text('蜀'),
                ),
              label: Text('黄忠'),
                ),
          ],
        )
      ],
    );
  }
}