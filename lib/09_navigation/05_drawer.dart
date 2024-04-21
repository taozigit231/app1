import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('drawer'),
        leading: Icon(Icons.menu),
        actions: [
          Icon(Icons.settings)
        ],
        elevation: 0.0, 
        centerTitle: true, 
      ),
      body: HomePage(),
      drawer: DrawerList(),
      endDrawer: DrawerList(),
    );
  }
}
class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: Text('Home'),
      ),
    );
  }
}
class DrawerList extends StatelessWidget {
  const DrawerList({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.all(0), //边矩声明为0
        children: [
          // Text('Drawer')
          UserAccountsDrawerHeader(
            accountName: Text('初六'), 
            accountEmail: Text('whoicliu@163.com'),
            decoration: BoxDecoration(  //背景装饰
              image: DecorationImage(
                image: NetworkImage('https://p5.itc.cn/images01/20220709/64586d6c97b74cafad5c0005e2c2827e.jpeg'),
                fit: BoxFit.cover,
                )
            ),
            currentAccountPicture: CircleAvatar(
              backgroundImage: NetworkImage('https://img2.baidu.com/it/u=1043791200,2762907004&fm=253&fmt=auto&app=138&f=JPEG?w=500&h=500'),
            ),
            ),
          ListTile(
            leading: Icon(Icons.settings),
            title: Text('设置'),
            trailing: Icon(Icons.arrow_forward_ios),
          ),
          Divider(thickness: 1.5,),
          ListTile(
            leading: Icon(Icons.account_balance),
            title: Text('余额'),
            trailing: Icon(Icons.arrow_forward_ios),
          ),
          Divider(thickness: 1.5,),
          ListTile(
            leading: Icon(Icons.person),
            title: Text('我的'),
            trailing: Icon(Icons.arrow_forward_ios),
          ),
          Divider(thickness: 1.5,),
          ListTile(
            leading: Icon(Icons.person),
            title: Text('回退'),
            onTap: () => Navigator.pop(context),
            trailing: Icon(Icons.arrow_forward_ios),
          ),
        AboutListTile(
          child: Text('关于'),
          applicationName: '你的应用名称',
          applicationVersion: '1.0.0',
          icon: CircleAvatar(
            child: Text('初六'),
          ),
          applicationLegalese: '应用法律条例',
          aboutBoxChildren: [
            Text('条例一:适用xxx'),
            Text('条例二:适用xxxx'),
          ],
          applicationIcon: Image.network('https://file03.sg560.com/upimg01/2016/07/909905/Title/1536321522448584909905.jpg',
            width: 50,
            height: 50,
          ),
        )
        ],
      ),
    );
  }
}