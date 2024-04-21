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
      body: ButtonDemo(),
      floatingActionButton: FloatingActionButton(
        onPressed: (){},
        tooltip: 'Increment',
        child: Icon(Icons.add),
        backgroundColor:Colors.green,
        // elevation: 0.0,
      ),
    );
  }
}

class ButtonDemo extends StatelessWidget {
  const ButtonDemo({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Wrap(
        children: [
          TextButton(onPressed: (){
            print('点击TextButton');
          },
          onLongPress: (){
            print('长按按钮');
          },
          child: Text('TextButton')),
          ElevatedButton(onPressed: (){
            print('点击TextButton');
          },
          onLongPress: (){
            print('长按ElevatedButton按钮');
          },
          child: Text('ElevatedButton')),
          OutlinedButton(onPressed: (){
            print('点击OutlinedButton');
          },
          onLongPress: (){
            print('长按按钮');
          },
          child: Text('OutlinedButton')),
          OutlinedButton(onPressed: (){
            print('点击OutlinedButton');
          },
          onLongPress: (){
            print('长按按钮');
          },
          child: Text('OutlinedButton'),
          style: ButtonStyle(
            textStyle: MaterialStateProperty.all(
              TextStyle(
                fontSize: 30
              )
            ),
            foregroundColor:MaterialStateProperty.resolveWith((states){
              if(states.contains(MaterialState.pressed)){
                return Colors.red;
              }
              //默认状态的颜色 
              return Colors.blue;
            }),
            backgroundColor:MaterialStateProperty.resolveWith((states){
              if(states.contains(MaterialState.pressed)){
                return Colors.yellow;
              }
              //默认状态的颜色 
              return Colors.white;
            }),
            shadowColor: MaterialStateProperty.all(Colors.yellow),
            elevation: MaterialStateProperty.all(20),
            side: MaterialStateProperty.all(
              BorderSide(
                color: Colors.green,
                width: 2
              )
            ),
            shape:MaterialStateProperty.all(
              StadiumBorder(
              // CircleBorder(
                side: BorderSide(
                  color: Colors.green,
                  width: 2
                )
              )
            ) ,
            //设置状态按钮大小
            minimumSize: MaterialStateProperty.all(Size(150, 60)),
            //设置水波纹的颜色
            overlayColor: MaterialStateProperty.all(Colors.purple)
          ),
          
          ),
          OutlinedButtonTheme(
            data: OutlinedButtonThemeData(
              style: ButtonStyle(
                overlayColor: MaterialStateProperty.all(Colors.red)
              )
            ), 
            child:  OutlinedButton(onPressed: (){
            print('点击OutlinedButton');
          },
          onLongPress: (){
            print('长按按钮');
          },
          child: Text('OutlinedButton')),),
          IconButton(
            onPressed: (){
              print('IconButton');
            }, 
            icon: Icon(Icons.add_alarm),
            color: Colors.pink[300],
            splashColor: Colors.lightBlue,
            highlightColor: Colors.purple,
            iconSize: 100,
            tooltip: '怎么了',
            ),
            TextButton.icon(
              icon: Icon(Icons.add_circle),
              label: Text('文本按钮'),
              onPressed: () {
                
              },
              ),
            ElevatedButton.icon(
              icon: Icon(Icons.add_circle),
              label: Text('凸起按钮'),
              onPressed: () {
                
              },
              ),
            OutlinedButton.icon(
              icon: Icon(Icons.add_circle),
              label: Text('轮廓按钮'),
              onPressed: () {
                
              },
              ),
              //按钮组
              Container(
                color: Colors.pink[300],
                width: double.infinity,
                child: ButtonBar(
                  children: [
                    ElevatedButton(onPressed: (){

                    }, child: Text('按钮一')),
                    ElevatedButton(onPressed: (){

                    }, child: Text('按钮二')),
                    ElevatedButton(onPressed: (){

                    }, child: Text('按钮二')),
                    ElevatedButton(onPressed: (){

                    }, child: Text('按钮二')),
                    // ElevatedButton(onPressed: (){

                    // }, child: Text('按钮二')),
                    // ElevatedButton(onPressed: (){

                    // }, child: Text('按钮二')),
                  ],
                ),
              ),
              BackButton(
                color: Colors.red,
                onPressed: (){

                },
              ),
              CloseButton(
                color: Colors.red,
                onPressed: (){

                },
              )

          
        ],
      ),
    );
  }
}