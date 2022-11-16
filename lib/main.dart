import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    AppBar appBar = AppBar();
    return Scaffold(
      body: Container(
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(height: 30),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text('English (United Kingdom)'),
                  Icon(Icons.expand_more)
                ],
              ),
              SizedBox(height: 100),
              Text('Instagram', style: TextStyle(fontSize: 40, fontFamily: 'InstagramSans')),
              SizedBox(height: 30),
              Padding(
                padding: const EdgeInsets.only(left: 25.0, right: 25.0),
                child: Column(
                  children: [
                    TextField(
                      decoration: InputDecoration(focusedBorder: OutlineInputBorder(borderSide: BorderSide(color: Colors.grey, width: 1)),
                        labelText: 'Phone number, email address or username',
                        enabledBorder: OutlineInputBorder(
                            borderSide:
                                BorderSide(width: 1, color: Colors.grey),
                            borderRadius: BorderRadius.circular(5)),
                      ),
                      textInputAction: TextInputAction.next,
                    ),
                    SizedBox(height: 18),
                    TextField(
                      obscureText: true,
                      obscuringCharacter: '~',
                      keyboardType: TextInputType.visiblePassword,
                      decoration: InputDecoration(
                        
                        focusedBorder: OutlineInputBorder(borderSide: BorderSide(color: Colors.grey, width: 1,),),
                        labelText: 'Password',
                        enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(width: 1, color: Colors.grey),
                        ),
                      ),
                      textInputAction: TextInputAction.done,
                    ),
                    SizedBox(height: 10),
                    Row(
                      children: [
                        Expanded(
                            child: ElevatedButton(
                                child: Text('Log In'), onPressed: () {})),
                      ],
                    ),
                  ],
                ),
              ),
              TextButton(
                child: Text(
                    'Forgotten your login details? Get help with logging in.'),
                onPressed: () {},
              ),
              Divider(thickness: 1),
              TextButton.icon(
                icon: Icon(Icons.facebook),
                label: Text('Log In With Facebook'),
                onPressed: () {},
              ),
              SizedBox(height: 80),
              Divider(thickness: 1),
              TextButton(
                child: Text('Dont have an account? Sign up.'),
                onPressed: () {},
              ),
            ],
          ),
        ),
      ),
    );
  }
}
