
import 'package:e_commerce_app/components/producttile.dart';
import 'package:provider/provider.dart';

import 'package:e_commerce_app/components/drawer.dart';

import 'package:e_commerce_app/model/shop.dart';
import 'package:flutter/material.dart';
//shop page
class firstPage extends StatelessWidget {
  firstPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final products = context.watch<shop>().Shop;

    return Scaffold(
      backgroundColor: Colors.grey.shade300,
      appBar: AppBar(
        elevation: 0,
        centerTitle: true,
        title: Title(
          color: Colors.black,
          child: const Text(
            'Shop',
            style: TextStyle(
              fontFamily: 'DancingScript',
              fontWeight: FontWeight.bold,
              color: Colors.black,
            ),
          ),
        ),
        backgroundColor: Colors.grey.shade300,
      ),
      drawer: drawer(),
      body: ListView(
        children:[
          Center(child: Text('shop the premium products',style: TextStyle(fontWeight: FontWeight.w900,color: Colors.black54),)),
          SizedBox(height: 30,),
          
           SizedBox(
          height: 500,
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: products.length,
            itemBuilder: (context, index) {
              final product = products[index];
              return Producttile( prodt: product,);
            },
          ),
        ),
      ]),
    );
  }
}
