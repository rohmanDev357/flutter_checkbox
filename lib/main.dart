import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  //this widget is the root of your application
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Demo Applikasi CheckBox',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Home(),
    );
  }
}

class Home extends StatefulWidget {
  @override
  HomeState createState() => HomeState();
}

class HomeState extends State<Home> {
  final List<String> bahasa = ['Java', 'Python', 'Kotlin', 'Dart'];
  bool selected1 = false;
  bool selected2 = false;
  bool selected3 = false;
  bool selected4 = false;
  bool selected = false;
  List<int> list = [];

  void onChanged1(bool value) {
    setState(() {
      this.selected1 = value;
    });
    if (value)
      list.add(0);
    else
      list.remove(0);
    print(list);
  }

  void onChanged2(bool value) {
    setState(() {
      this.selected2 = value;
    });
    if (value)
      list.add(1);
    else
      list.remove(1);
    print(list);
  }

  void onChanged3(bool value) {
    setState(() {
      this.selected3 = value;
    });
    if (value)
      list.add(2);
    else
      list.remove(2);
    print(list);
  }

  void onChanged4(bool value) {
    setState(() {
      this.selected4 = value;
    });
    if (value)
      list.add(3);
    else
      list.remove(3);
    print(list);
  }

  void onTextFieldChanged(String value) {
    setState(() {
      print(value);
    });
  }

  void onCheckboxChanged(bool value) {
    setState(() {
      this.selected = value;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Demo CheckBox'),
      ),
      body: Container(
        padding: EdgeInsets.all(10.0),
        child: Column(
          children: <Widget>[
            Text('Bahasa Yang Disukai'),
            // TextField(
            //   enabled: !this.selected,
            //   onChanged: (String value) {
            //     onTextFieldChanged(value);
            //   },
            //   decoration: InputDecoration(
            //       hintText: 'Ketikkan tesk disini',
            //       hintStyle: TextStyle(
            //         fontStyle: FontStyle.normal,
            //       )),
            // ),
            CheckboxListTile(
              value: this.selected1,
              onChanged: (bool value) {
                onChanged1(value);
              },
              title: Text(this.bahasa[0]),
              activeColor: Colors.red,
              secondary: Icon(Icons.language),
            ),
            CheckboxListTile(
              value: this.selected2,
              onChanged: (bool value) {
                onChanged2(value);
              },
              title: Text(this.bahasa[1]),
              activeColor: Colors.red,
              secondary: Icon(Icons.language),
            ),
            CheckboxListTile(
              value: this.selected3,
              onChanged: (bool value) {
                onChanged3(value);
              },
              title: Text(this.bahasa[2]),
              activeColor: Colors.red,
              secondary: Icon(Icons.language),
            ),
            CheckboxListTile(
              value: this.selected4,
              onChanged: (bool value) {
                onChanged4(value);
              },
              title: Text(this.bahasa[3]),
              activeColor: Colors.red,
              secondary: Icon(Icons.language),
            )
          ],
        ),
      ),
    );
  }
}
