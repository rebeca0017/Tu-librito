import 'package:flutter/material.dart';

// ignore: must_be_immutable
class LoginPage extends StatelessWidget {
  
late String correo, password;
  

  

  @override
  Widget build(BuildContext context) {
     return Scaffold(
        appBar: AppBar(
          title: const Text('Login'),
        ),
        body: Container(
            padding: const EdgeInsets.all(20),
            width: double.infinity,
            color: Colors.blue,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text('Formulario de Login',style: TextStyle(fontWeight: FontWeight.bold),
                ),
                Row(
                  // ignore: prefer_const_literals_to_create_immutables
                  children: [
                    const Expanded(child: Text('Correo:')),
                    const Expanded(child: TextField(
                       
                    ))
                  ],
                ),
                 const SizedBox(
                  height: 10,
                ),
                Row(
                  // ignore: prefer_const_literals_to_create_immutables
                  children: [
                    const Expanded(child: Text('Password:')),
                    const Expanded(
                        child: TextField(
                      obscureText: true,
                    
                    ))
                  ],
                ),
                 const SizedBox(
                  height: 10,
                ),
                RaisedButton(child: const Text('Login'), onPressed: () { 
                  //Action 
                })
              ],
            )));
  }
}