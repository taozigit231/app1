import 'dart:io';
import 'dart:js';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
// import '01_basic/01_Hello.dart';
// import '01_basic/02_Text.dart';
// import '02_layout/01_Container.dart';
// import '02_layout/02_Column_Row.dart';
// import '02_layout/03_Flex.dart';
// import '02_layout/04_Wrap.dart';
// import '02_layout/05_Stack.dart';
// import '02_layout/06_Card.dart';
// import '03_button/01_Button.dart';
// import '09_navigation/01_anonymous.dart';
// import '09_navigation/02_namedRoute.dart';
// import '09_navigation/03_onGenerateRoute.dart';
// import '09_navigation/04_arguments.dart';
// import '09_navigation/05_drawer.dart';
// import '09_navigation/06_BottomNavigatorBar.dart';
// import '09_navigation/07_Tab.dart';
// import '07_third_party/03_shared_preferences.dart';
// import '08_state/01_StatefulWidget.dart';
import '08_state/04_lifecycle.dart';
// import '08_state/05_provider.dart';

//practice for review
// import 'practice/anonymous.dart';
void main(List<String> args) {
  // print('dictory:$Directory');
  // runApp(new Text('Hello Flutter',
  // textDirection:TextDirection.ltr,
  // ),);
  runApp(
    // ChangeNotifierProvider(
    //   create: (BuildContext context)=> new LikesModel(),
    //   child: MyApp(),
    //   )
    MyApp()
    );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      // home: HelloFlutter(),
      home: Home(),
      //声明路由  k v 后边为具体的函数 (){} or ()=> Home()
      // routes: {
      //   'home':(context)=> Home(),
      //   'product':(context)=> Product(),
      //   'productDetail':(context)=>ProductDetail(),
      // },
      // initialRoute: 'home',
      // onUnknownRoute: (RouteSettings settings)=> MaterialPageRoute(
      //   builder: (context) => UnknownPage()
      // ),
      // onGenerateRoute: (RouteSettings settings){  //动态路由 generateRoute，做自动匹配
      //   //匹配首页  ./    
      //   print('当前路径： ${settings.name}');
      //   if(settings.name == '/'){
      //     return MaterialPageRoute(builder: (context)=> Home());
      //   }
      //   if(settings.name == '/product'){
      //     return MaterialPageRoute(builder: (context) =>Product());
      //   }

      //   //匹配 /product/:id
      //   var uri = Uri.parse(settings.name??'');
      //   print(uri.pathSegments); //pathSegments 数组
      //   if(uri.pathSegments.length == 2 && uri.pathSegments.first == 'product'){
      //     var id = uri.pathSegments[1];
      //     return MaterialPageRoute(builder: (context)=>ProductDetail(id:id));
      //   }
      //   return MaterialPageRoute(builder: (context)=>UnknownPage());
      // },


      debugShowCheckedModeBanner: false,
    );
  }
}

