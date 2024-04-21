import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('首页'),
        leading: Icon(Icons.menu),
        actions: [
          Icon(Icons.settings)
        ],
        elevation: 0.0, 
        centerTitle: true, 
      ),
      body: Center(
        child: Column(
          children: [
            ElevatedButton(
              onPressed: (){
                Navigator.pushNamed(context,'product',arguments:{'title':'这是主页传递过来的参数'});}, 
                child: Text('跳转')
              ),
            ElevatedButton(
              onPressed: () => Navigator.pushNamed(context,'productDetail',arguments: {'id':1}), 
              child: Text('商品1')
              ),
            ElevatedButton(
              onPressed: () => Navigator.pushNamed(context,'productDetail',arguments: {'id':2}), 
              child: Text('商品2')
              ),
            ElevatedButton(
              onPressed: () => Navigator.pushNamed(context,'user'), 
              child: Text('未知路由')
              ),
          ],
        ),
      ),
    );
  }
}

class Product extends StatelessWidget {
  const Product({super.key});

  @override
  Widget build(BuildContext context) {
    final Map? arguments=ModalRoute.of(context)?.settings.arguments as Map?; 
    print('~~~~');
    return Scaffold(
      appBar: AppBar(
        title: Text('商品页'),
        leading: Icon(Icons.menu),
        actions: [
          Icon(Icons.settings)
        ],
        elevation: 0.0, 
        centerTitle: true, 
      ),
      body: Center(
        child: Column(
          children: [
            Text('接收的参数是：'+(arguments??const{})['title']),
            ElevatedButton(
              onPressed: () => Navigator.pop(context), 
              child: Text('返回')
              )
          ],
        ),
      ),
    );
  }
}
class ProductDetail extends StatelessWidget {
  // product/1 字符串
  const ProductDetail({super.key});

  @override
  Widget build(BuildContext context) {
    final Map? arguments=ModalRoute.of(context)?.settings.arguments as Map?; 
    return Scaffold(
      appBar: AppBar(
        title: Text('商品详情页'),
        leading: Icon(Icons.menu),
        actions: [
          Icon(Icons.settings)
        ],
        elevation: 0.0, 
        centerTitle: true, 
      ),
      body: Center(
        child: Column(
          children: [
            Text('当前商品的id:'+(arguments??const{})['id'].toString()), //这里没有toString，报错
            ElevatedButton(
              onPressed: () => Navigator.pop(context), 
              child: Text('返回')
              )
          ],
        ),
      ),
    );
  }
}
class UnknownPage extends StatelessWidget {
  const UnknownPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('404'),
        leading: Icon(Icons.menu),
        actions: [
          Icon(Icons.settings)
        ],
        elevation: 0.0, 
        centerTitle: true, 
      ),
      body: Center(
        child: Column(
          children: [
            ElevatedButton(
              onPressed: () => Navigator.pop(context), 
              child: Text('返回')
              )
          ],
        ),
      ),
    );
  }
}