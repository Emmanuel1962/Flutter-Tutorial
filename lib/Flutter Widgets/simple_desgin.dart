import 'package:flutter/material.dart';

class SimpleDesign extends StatelessWidget {
  const SimpleDesign({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.brown,
        leading:const Icon(Icons.home),//left hand side
        title: const Text(
          'App bar',
          style: TextStyle(
            fontSize: 30,
            color: Colors.black,
          ),
        ),
        elevation: 30,
        shadowColor: Colors.deepOrangeAccent,
        actions: const[
          Icon(Icons.segment),
        ],// right hand size
        centerTitle: true,
      ),
      body:SingleChildScrollView(
        child: Container(
         // container gives you the child property
         //columns and row gives you the children property 
         height: MediaQuery.of(context).size.height,// MediaQuery :this is to take the whole height of your screen
          width: MediaQuery.of(context).size.width,//MediaQuery :this is to take the whole widtth of your screen.
          padding: const EdgeInsets.all(10),// this is to give  spacing away from the screen
          // margin:const EdgeInsets.all(10), this is used to give spacing away from the screen(phone or system).
          color: Colors.white,
          child:Column(
            crossAxisAlignment: CrossAxisAlignment.start,// this arrange's the widgets from the left hand side 
            children: [
              Container(
                height: 50,
                width: 50,
                color: Colors.lightBlue,
                child: Center(
                  child: const Text("1"),
                ),
              ),
              const SizedBox(// this gives spacing between widgets
                // for Column, its height thats used
                //for row, its width that used
                height: 10,
              ),
              Container(
                height: 50,
                width: 50,
                color: Colors.purple,
               child: const Center(
                 child: Text('2'),
               ),
              ),
              
              const SizedBox(
                height: 10,
              ),
              Container(
                height: 50,
                width: 50,
                color: Colors.green,
                child: const Center(
                  child: Text('3'),
                ),
                
                
              )
                
            ],
        
          )
        ),
      ),
    );
  }
}