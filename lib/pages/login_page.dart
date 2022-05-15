// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0XFF50B5B0),
      body: SafeArea(
        child: Column(
            children: [
              Expanded(child: Container(
                decoration: BoxDecoration(
                  color: Color(0XFF50B5B0)
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    
                    Text('SKIP', style: TextStyle(
                      color: Colors.white, fontSize: 20
                    ),)
                    
                  ],
                ),
              )),
              Expanded(child: Container(
                decoration: BoxDecoration(
                  color: Color(0XFF111727)
                ),
                child: Stack(
                  children: [
                    Positioned(
                      top: 20,
                      left: 20,
                      right: 20,
                      child: Text('Discover and share the story that matters to you', 
                    style: Theme.of(context).textTheme.headline1
                    )
                    
                    ),
                       Positioned(
                      top: 90,
                      left: 20,
                      right: 20,
                      child: Text('Created with curated content on thousand of topics from world renowned publishers, local outlets and communities', 
                   style: Theme.of(context).textTheme.headline4
                   ),
                    
                    ),
                    Positioned(
                       bottom: 55,
                      left: 20,
                      right: 20,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          ElevatedButton(onPressed: (){}, child: Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 39, vertical: 20),
                            child: Text('Login'),
                          ) ,
                          ),
                           ElevatedButton(onPressed: (){}, child: Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 29, vertical: 20),
                            child: Text('Get started'),
                          ) ,
                          ),
                          
                        ],
                    ))
                  ],
                ),
              ))
            ],
        ),
      )
    );
  }
}
