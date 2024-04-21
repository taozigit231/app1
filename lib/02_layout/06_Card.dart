import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('卡片'),
        leading: Icon(Icons.menu),
        actions: [
          Icon(Icons.settings)
        ],
        elevation: 0.0, 
        centerTitle: true, 
      ),
      body: CardDemo(),
    );
  }
}

class CardDemo extends StatelessWidget {
  const CardDemo({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Card(
          margin: EdgeInsets.all(30),
          color: Colors.purple[300],
          shadowColor: Colors.yellow,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(40),
            side: BorderSide(
              color: Colors.yellow,
              width: 3
            )
          ),
          elevation: 10,
          child:Column(
              children: [
                    ListTile(
                      leading: Icon(Icons.supervised_user_circle_rounded,size: 50),
                      title: Text('张三',style: TextStyle(
                            fontSize: 25
                           ),),
                       subtitle: Text('董事长',style: TextStyle(fontSize: 16),),
          ),
                      Divider(),
                      ListTile(
                        title: Text('电话',style: TextStyle(
                          fontSize: 25
                        ),),
                        subtitle: Text('133XXXXXXXX',style: TextStyle(fontSize: 15),),
                      ),
                      ListTile(
                        title: Text('地址',style: TextStyle(
                          fontSize: 25
                        ),),
                        subtitle: Text('XXXXXXX',style: TextStyle(fontSize: 15),),
                      ),
              ],
          ) 
        ),
        Card(
          margin: EdgeInsets.all(30),
          child:Column(
              children: [
                    ListTile(
                      leading: Icon(Icons.supervised_user_circle_rounded,size: 50),
                      title: Text('李四',style: TextStyle(
                            fontSize: 25
                           ),),
                       subtitle: Text('总经理',style: TextStyle(fontSize: 16),),
                       ),
                      Divider(),
                      ListTile(
                        title: Text('电话',style: TextStyle(
                          fontSize: 25
                        ),),
                        subtitle: Text('133XXXXXXXX',style: TextStyle(fontSize: 15),),
                      ),
                      ListTile(
                        title: Text('地址',style: TextStyle(
                          fontSize: 25
                        ),),
                        subtitle: Text('XXXXXXX',style: TextStyle(fontSize: 15),),
                      ),
              ],
          ) 
        ),
      ],
    );
  }
}