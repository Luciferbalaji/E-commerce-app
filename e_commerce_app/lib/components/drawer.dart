import 'package:flutter/material.dart';

class drawer extends StatefulWidget {
  const drawer({super.key});

  @override
  State<drawer> createState() => _drawerState();
}

class _drawerState extends State<drawer> {
  @override
  Widget build(BuildContext context) {
    return Container(
        color: Colors.white,
        width: 250,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          
          children: [
          SizedBox(height: 40,),
            Icon(Icons.shopify_outlined,size: 106,),
            SizedBox(height: 20,),
           
            ListTile(
              leading:  Icon(Icons.shop_2_sharp),
              title:  Text('shop'), // The main title text.

              onTap:() => Navigator.pop(context),
            ),

            ListTile(
              leading:  Icon(Icons.shopping_cart_sharp),
              title:  Text('Cart'), // The main title text.

              onTap: () {
                Navigator.pushNamed(context, '/Cartpage');
              },
            ),

             Padding(
              padding: const EdgeInsets.only(bottom:10.0),
              child: ListTile(
                leading:  Icon(Icons.light_mode),
                title:  Text('Theme'), // The main title text.
            
                onTap: () {
                  Navigator.pushNamed(context, '/mode');
                  
                },
              ),
            ),

      

            Padding(
              padding: const EdgeInsets.only(bottom:10.0),
              child: ListTile(
                leading:  Icon(Icons.exit_to_app),
                title:  Text('exit'), // The main title text.
            
                onTap: () {
                  
                },
              ),
            ),

            

            
          ],
        ));
  }
}
