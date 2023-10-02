import 'package:flutter/material.dart';

class MyLogin extends StatefulWidget {
  const MyLogin({super.key});

  @override
  State<MyLogin> createState() => _MyLoginState();
}

class _MyLoginState extends State<MyLogin> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: AppBar(
        title: Text('Login'),
      ),
      body: Center(
        child: Column(
        children: [
          Center(
            child: Padding(
              padding: const EdgeInsets.fromLTRB(0,20,0,0),
              child: Container(
              child: Text('Login Page',
              style: TextStyle(color: Colors.black, fontSize: 33,fontWeight: FontWeight.w900),),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(30.0),
            child: Container(
            child: TextField(
            decoration: InputDecoration(
              border: OutlineInputBorder(),
              labelText: 'Email',
            prefixIcon: Icon(Icons.email),
            ),),),),
          Padding(
            padding: const EdgeInsets.fromLTRB(30,0,30,5),
            child: Container(
            child: TextField(
            decoration: InputDecoration(
            border: OutlineInputBorder(),
            labelText: 'Password',
            prefixIcon: Icon(Icons.lock),
            ),),),
          ),
          Container(
            child: Padding(
              padding: const EdgeInsets.fromLTRB(0,20,0,20),
              child: TextButton(onPressed: ()=>Navigator.pushNamed(context, 'alert'),
                  style: ElevatedButton.styleFrom(
                    padding:  const EdgeInsets.fromLTRB(15, 15, 15, 15),
                    primary: Colors.blue,),
                  child: const Text(
                      style: TextStyle(
                          color: Color(0xffffffff),
                          fontSize: 18),
                      'Login')
              ),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.all(0),
                child: TextButton(
                  onPressed: () {
                  },
                  style: const ButtonStyle(),
                  child: const Text(
                    "Don't have an account?",
                    textAlign: TextAlign.left,
                    style: TextStyle(
                        color: Color(0xff4c505b),
                        fontSize: 18),
                  ),
                ),
              ),
              TextButton(
                  onPressed: () {
                    Navigator.pushNamed(context, 'signup');
                  },
                  child: const Text(
                    'Sign Up',
                    style: TextStyle(
                      decoration: TextDecoration.underline,
                      color: Colors.blue,
                      fontSize: 18,
                    ),
                  )),
            ],
          )
    ],
    ),
    ),
    );
  }
}
