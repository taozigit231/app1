import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(  //创建provider 并注册数据模型
      create: (BuildContext context){
        new LikesModel();
      },
      child: Scaffold(
        appBar: AppBar(
          title: Text('Life Cycle'),
          leading: Icon(Icons.menu),
          actions: [
            Icon(Icons.settings)
          ],
          elevation: 0.0, 
          centerTitle: true, 
        ),
        body: MyHomePage(),
    ),
      );
    
  }
}
//1.创建数据模型
class LikesModel extends ChangeNotifier{
  int _counter = 0;
  int get counter => _counter;
  increment(){
    //累加
    _counter++;

    //通知Ui更新
    notifyListeners();
  }
} 

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Text('${context.watch<LikesModel>().counter}'),
          TextButton(
            onPressed: Provider.of<LikesModel>(context).increment(), 
            child: Icon(Icons.thumb_up)
            )
        ],
      ),
    );
  }
}