import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  final List<BottomNavigationBarItem> bottomNavItems = [
    BottomNavigationBarItem(
      backgroundColor: Colors.blue,
      icon: Icon(Icons.home),
      label: '首页'
      ),
    BottomNavigationBarItem(
      backgroundColor: Colors.green,
      icon: Icon(Icons.message),
      label: '消息'
      ),
    BottomNavigationBarItem(
      backgroundColor: Colors.amber,
      icon: Icon(Icons.shopping_cart),
      label: '购物'
      ),
    BottomNavigationBarItem(
      backgroundColor: Colors.red,
      icon: Icon(Icons.person),
      label: '我'
      ),
  ];
  final List<Widget> pages = [
    Center(
      child: Text('Home',style: TextStyle(fontSize: 30),),
    ),
    Center(
      child: Text('Message',style: TextStyle(fontSize: 30),),
    ),
    Center(
      child: Text('Cart',style: TextStyle(fontSize: 30),),
    ),
    Center(
      child: Text('Profile',style: TextStyle(fontSize: 30),),
    ),
  ];
  late int currentIndex;
  @override
  void initState() {
    super.initState();
    currentIndex = 0;
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('底部导航'),
        leading: Icon(Icons.menu),
        actions: [
          Icon(Icons.settings)
        ],
        elevation: 0.0, 
        centerTitle: true, 
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: bottomNavItems,
        currentIndex: currentIndex,
        // type: BottomNavigationBarType.fixed,
        type: BottomNavigationBarType.shifting,
        onTap: (index){
          _changeIndex(index);
        },
        ),
      body: pages[currentIndex],
    );
  }
  _changeIndex(int index){
    if(index != currentIndex){
      setState(() {
        currentIndex = index; 
      });
    }
  }
}