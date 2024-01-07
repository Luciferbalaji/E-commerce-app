import 'package:e_commerce_app/wigets/button.dart';
import 'package:flutter/material.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade300,
      body:  Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
           const Icon(Icons.shopify_rounded, size: 140),
            
            SizedBox(height: 5,),
             const Text('Shop Zone!',style: TextStyle(
              fontSize: 26
            ),
            
            
            ),
           const SizedBox(height: 15,),
            
            MyButton( color: Colors.grey.shade200,
            icon: Icon(Icons.arrow_forward_ios),
            onTap: () { Navigator.of(context).pushNamed('/firstpage');
            },
            
            )
          ],
        ),
      ),
    );
  }
}
