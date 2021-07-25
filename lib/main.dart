import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'Person.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  List<Person> data = [
    new Person("Suhaib", 20),
    new Person("Ala", 19),
    new Person("Rami", 15),
    new Person("Suhaib", 20),
    new Person("Ala", 19),
    new Person("Rami", 15),
    new Person("Suhaib", 20),
    new Person("Ala", 19),
    new Person("Rami", 15),
  ];


  void b(c){
    showModalBottomSheet(
        context:  c
        , builder:(_){
      return  ListView.builder(
          itemCount: data.length,
          itemBuilder: (context,index){
            return Card(
              color: Colors.grey,
              shadowColor: Colors.white,
              elevation: 5,
              child: Row(
                children: [
                  Text("${data[index].name.toString()} , ",style: TextStyle(fontSize: 24,fontWeight: FontWeight.bold),),
                  Text(data[index].age.toString(),style: TextStyle(fontSize: 24,fontWeight: FontWeight.bold),),
                ],
              ),
            );
          }
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("review2"),
      ),
      body: Center(
        child: InkWell(
          onTap:(){
            b(context);
          },
          child: Text("show"),
        ),
      ),
    );
  }
}
