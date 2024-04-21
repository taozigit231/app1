import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('StatefulWidget'),
        leading: Icon(Icons.menu),
        actions: [
          Icon(Icons.settings)
        ],
        elevation: 0.0, 
        centerTitle: true, 
      ),
      body: MyState(),
    );
  }
}

class MyState extends StatefulWidget {
  const MyState({super.key});

  @override
  State<MyState> createState() => _MyStateState();
}

class _MyStateState extends State<MyState> {
  int _num = 0;

  void _increment(){
    setState(() {
      _num++;
    });
  }
  void _decrement(){
    setState(() {
      _num--;
    });
  }
  @override
  Widget build(BuildContext context) {
    return Center(
      child:ShareDataWidget(
        num: _num,
        child: Column(
        children: [
          ElevatedButton(
            onPressed:_decrement, 
            child: Text('-')
            ),
          Padding(
            padding: EdgeInsets.all(20),
            // child: Text('$_num'),
            //跨组件访问数据
            child: MyCounter(),
            ),
          ElevatedButton(
            onPressed:_increment, 
            child: Icon(Icons.add)
            ) 
        ],
      ),
        ), 
      
    );
  }
}
class MyCounter extends StatefulWidget {
  const MyCounter({super.key});

  @override
  State<MyCounter> createState() => _MyCounterState();
}

class _MyCounterState extends State<MyCounter> {
  @override
  Widget build(BuildContext context) {
    //(关键代码)  使用inheritedWidget当中的共享数据
    return Text(ShareDataWidget.of(context)?.num.toString()??'');
  }
}

//数据共享组件
class ShareDataWidget extends InheritedWidget {
  final int num;
  final Widget child;

  const ShareDataWidget({super.key, required this.child,required this.num}) : super(child: child); //构造
  
  static ShareDataWidget? of(BuildContext context) {   //静态方法，of  类型：ShareDataWidget  BuildContext:构建上下文，通过此函数取到具体数据
    return context.dependOnInheritedWidgetOfExactType<ShareDataWidget>();
  }

  @override
  bool updateShouldNotify(ShareDataWidget oldWidget) { //通过组件去更新
    return true;
  }
}