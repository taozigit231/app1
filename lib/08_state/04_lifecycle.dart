import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Life Cycle'),
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
  late int _num;
  @override
  void initState() {
    super.initState();
    print('init state');
    _num = 1;
  }

@override
  void didChangeDependencies() {
    super.didChangeDependencies();
    print('didChangeDependencies');
  }

  @override
  void didUpdateWidget(covariant MyState oldWidget) {
    // TODO: implement didUpdateWidget
    super.didUpdateWidget(oldWidget);
    print('didUpdateWidget');
  }
  @override
  void deactivate() {
    super.deactivate();
    print('deactivate');
  }
  @override
  void dispose() {
    super.dispose();
    print('dispose');
  }

  void _increment(){
    setState(() {
      print('setState');
      _num++;
    });
  }
  void _decrement(){
    setState(() {
      print('setState');
      _num--;
    });
  }
  @override
  Widget build(BuildContext context) {
    print('build');
    return Center(
      child: Column(
        children: [
          ElevatedButton(
            onPressed:_decrement, 
            child: Text('-')
            ),
          Padding(
            padding: EdgeInsets.all(20),
            child: Text('$_num'),
            ),
          ElevatedButton(
            onPressed:_increment, 
            child: Icon(Icons.add)
            )
          
        ],
      ),
    );
  }
}