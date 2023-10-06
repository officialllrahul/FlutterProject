import 'package:flutter/material.dart';

class MyMediaQuery extends StatelessWidget {
  const MyMediaQuery({super.key});

  @override
  Widget build(BuildContext context) {
  // We using MediaQuery in row and column wise
    //   var _mediaQuery = MediaQuery.of(context);
    // return Scaffold(
    //   body: Column(
    //       children: [
    //   Container(
    //   width: mediaQuery.size.width * 0.5,
    //       height: mediaQuery.size.height * 0.5,
    //       decoration:const BoxDecoration(
    //         color: Colors.purple,
    //       )
    //   ),
    //   Container(
    //     width: mediaQuery.size.width * 0.5,
    //     height: mediaQuery.size.height * 0.5,
    //     decoration:const BoxDecoration(
    //       color: Colors.yellow,
    //     )
    //   ),
    //       ],
    //   ),
    // );


    // We using MediaQuery in orientation wise
    var mediaQuery = MediaQuery.of(context);
    return Scaffold(
      appBar: AppBar(
        title: const Text('Media Query'),
      ),
      body: Builder(
        builder: (context){
          if(mediaQuery.orientation == Orientation.portrait){
            return portraitWidget(mediaQuery.size);
          }
          else{
            return landscapeWidget(mediaQuery.size);
          }
        }
      ),
    );
  }

  Widget portraitWidget(Size size) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
                child: Padding(
                  padding: const EdgeInsets.fromLTRB(0,20,0,0),
                  child: Text('SignUp Page',
                    style: TextStyle(color: Colors.black, fontSize: 33,fontWeight: FontWeight.w900),),
                ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(30,30,30,0),
              child: Container(
                child: const TextField(
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'User name',
                    prefixIcon: Icon(Icons.person),
                  ),),),),
            Padding(
              padding: const EdgeInsets.fromLTRB(30,15,30,0),
              child: Container(
                child: const TextField(
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'Email',
                    prefixIcon: Icon(Icons.email),
                  ),),),),
            Padding(
              padding: const EdgeInsets.fromLTRB(30,15,30,0),
              child: Container(
                child: const TextField(
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'Password',
                    prefixIcon: Icon(Icons.password),
                  ),),),),
            Container(
              child: Padding(
                padding: const EdgeInsets.fromLTRB(0,20,0,20),
                child: TextButton(onPressed: (){},
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
          ],
        ),
      ),
    );
  // return Center(
  //   child: Container(
  //     width: size.width * 0.8,
  //     height: size.height * 0.8,
  //     decoration: const BoxDecoration(
  //       color: Colors.redAccent
  //     ),
  //     child: const Center(child: Text("Portrait", style: TextStyle(color: Colors.white,fontSize: 20,fontWeight: FontWeight.bold),)),
  //   ),
  // );
  }

  Widget landscapeWidget(Size size) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Center(
              child: Container(
                width: size.width * 0.5,
                child: Padding(
                  padding: const EdgeInsets.fromLTRB(0,20,0,0),
                  child: Text('SignUp Page',
                    style: TextStyle(color: Colors.black, fontSize: 33,fontWeight: FontWeight.w900),),
                ),
              ),
            ),
            // Row(
            //   mainAxisAlignment: MainAxisAlignment.center,
            //   children: <Widget>[
            //     Container(
            //
            //     )
            //   ],
            // ),
            Padding(
              padding: const EdgeInsets.fromLTRB(30,30,30,0),
              child: Container(
                width: size.width * 0.5,
                child: const TextField(
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'User name',
                    prefixIcon: Icon(Icons.person),
                  ),),),),
            Padding(
              padding: const EdgeInsets.fromLTRB(30,15,30,0),
              child: Container(
                width: size.width * 0.5,
                child: const TextField(
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'Email',
                    prefixIcon: Icon(Icons.email),
                  ),),),),
            Padding(
              padding: const EdgeInsets.fromLTRB(30,15,30,0),
              child: Container(
                width: size.width * 0.5,
                child: const TextField(
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'Password',
                    prefixIcon: Icon(Icons.lock),
                  ),),),),
            Container(
              child: Padding(
                padding: const EdgeInsets.fromLTRB(0,20,0,20),
                child: TextButton(onPressed: (){},
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
          ],
        ),
      ),
    );
  }
}
