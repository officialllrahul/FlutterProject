import 'package:flutter/material.dart';

class MySignUp extends StatefulWidget {
  const MySignUp({super.key});

  @override
  State<MySignUp> createState() => _MySignUpState();
}

class _MySignUpState extends State<MySignUp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: AppBar(
        title: const Text('Signup'),
      ),
      body: Center(
        child: Column(
          children: [
            Center(
              child: Padding(
                padding: const EdgeInsets.fromLTRB(0,20,0,25),
                child: Container(
                  child: const Text('SignUp Page',
                    style: TextStyle(color: Colors.black, fontSize: 33,fontWeight: FontWeight.w900),),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(30,0,30,5),
              child: Container(
                child: const TextField(
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'User name',
                    prefixIcon: Icon(Icons.person),
                  ),),),),
            Padding(
              padding: const EdgeInsets.all(30.0),
              child: Container(
                child: const TextField(
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'Email',
                    prefixIcon: Icon(Icons.email),
                  ),),),),
            Padding(
              padding: const EdgeInsets.fromLTRB(30,0,30,5),
              child: Container(
                child: const TextField(
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'Password',
                    prefixIcon: Icon(Icons.lock),
                  ),),),
            ),
            Container(
              child: Padding(
                padding: const EdgeInsets.fromLTRB(0,20,0,20),
                child: TextButton(onPressed: ()=>Navigator.pushNamed(context, 'login'),
                    style: ElevatedButton.styleFrom(
                      padding:  const EdgeInsets.fromLTRB(15, 15, 15, 15),
                      primary: Colors.blue,),
                    child: const Text(
                        style: TextStyle(
                            color: Color(0xffffffff),
                            fontSize: 18),
                        'Sign Up')
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
                      "Already have an account?",
                      textAlign: TextAlign.left,
                      style: TextStyle(
                          color: Color(0xff4c505b),
                          fontSize: 18),
                    ),
                  ),
                ),
                TextButton(
                    onPressed: () {
                      Navigator.pushNamed(context, 'login');
                    },
                    child: const Text(
                      'Login',
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
