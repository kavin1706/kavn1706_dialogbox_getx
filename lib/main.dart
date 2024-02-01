import 'package:flutter/material.dart';
import 'package:get/get.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(

        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: Scaffold(
        appBar: AppBar(title: Text('Dialog Box'),
        backgroundColor: Colors.indigoAccent,),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              TextButton(style:TextButton.styleFrom(
          foregroundColor: Colors.indigoAccent,
            backgroundColor: Colors.grey,
            padding: const EdgeInsets.all(16.0),
            textStyle: const TextStyle(fontSize: 20),
          ),child: Text('Show dialog'),onPressed: (){
                    Get.defaultDialog(
                      title: 'default dialog',
                      titleStyle: TextStyle(
                        fontSize: 25,
                 ),
                    middleText: 'how are you?',
                    middleTextStyle: TextStyle(fontSize: 20),
                    backgroundColor: Colors.indigoAccent,
                    radius: 80,
                    content: Row(
                      children: [
                        CircularProgressIndicator(),
                        SizedBox(width: 16,),
                        Expanded(child: Text('Data loading'))
                      ],
                    ),
                    textCancel: 'cancel',
                    textConfirm: 'confirm');
              }, )
            ],
          ),
        ),
      ),
    );
  }
}

