import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('shared_preferences'),
        leading: Icon(Icons.menu),
        actions: [
          Icon(Icons.settings)
        ],
        elevation: 0.0, 
        centerTitle: true, 
      ),
      body: SharedPreferencesDemo(),
    );
  }
}
class SharedPreferencesDemo extends StatelessWidget {
  const SharedPreferencesDemo({super.key});
  Future<void> _incrementCounter() async{
  //获取保存实例
  SharedPreferences prefs = await SharedPreferences.getInstance();
  int count = (prefs.getInt('counter')??0)+1;
  print('Pressed $count times.');
  await prefs.setInt('counter', count);
  }
  
  Future<void> _decrementCounter() async{
  SharedPreferences prefs = await SharedPreferences.getInstance();
  int count = prefs.getInt('counter')??0;
  if(count > 0){
    count --;
  }
  print('Pressed $count times.');
  await prefs.setInt('counter', count);
  }

  Future<void> _removeCounter() async{
  SharedPreferences prefs = await SharedPreferences.getInstance();
  await prefs.remove('counter');
  int count = prefs.getInt('counter')??0;
  print('Pressed $count times.');
  }
  
  Future<void> _setMyCounter() async{
  SharedPreferences prefs = await SharedPreferences.getInstance();
  await prefs.setString('hi', 'Hello World');
  String content = prefs.getString('hi') ?? '';
  print('设置字符串的内容是： $content');
  }
  
  Future<void> _getMyCounter() async{
  SharedPreferences prefs = await SharedPreferences.getInstance();
  String content = prefs.getString('hi') ?? '';
  print('获取字符串的内容是： $content');
  }

  Future<void> _clearContent() async{
  SharedPreferences prefs = await SharedPreferences.getInstance();
  await prefs.clear();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: Column(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        ElevatedButton(
          onPressed: _incrementCounter,
          child:Text('递增') 
          ),
        ElevatedButton(
          onPressed: _decrementCounter,
          child:Text('递减') 
          ),
        ElevatedButton(
          onPressed: _removeCounter,
          child:Text('删除') 
          ),
        ElevatedButton(
          onPressed: _setMyCounter,
          child:Text('设置字符串') 
          ),
        ElevatedButton(
          onPressed: _getMyCounter,
          child:Text('获取字符串') 
          ),
        ElevatedButton(
          onPressed: _clearContent,
          child:Text('清空内容') 
          ),
      ],
    ),
    ); 
  }

}
