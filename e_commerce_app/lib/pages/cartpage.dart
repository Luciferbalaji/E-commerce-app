import 'package:e_commerce_app/model/product.dart';
import 'package:e_commerce_app/model/shop.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class Cartpage extends StatelessWidget {
  Cartpage({Key? key}) : super(key: key);




    void removebutton(BuildContext context,product prodt){
     showDialog(context: context, builder:(context) => AlertDialog(
content: Text("Add this item to your cart?"),
actions: [
  
  MaterialButton(
  onPressed: () {
    Navigator.pop(context);
    context.read<shop>().remove(prodt);
  },
  child: Text('yes'),
),

   MaterialButton(onPressed: () => Navigator.pop(context),
  child:Text('Cancel'),
  ),
],

     ),);
    }
  

  @override
  Widget build(BuildContext context) {
    final cart = context.watch<shop>().cart; // Adjust the provider name accordingly

    return Scaffold(
      backgroundColor: Colors.grey.shade300,
      appBar: AppBar(
        elevation: 0,
        centerTitle: true,
        backgroundColor: Colors.grey.shade300,
        title: Title(
          color: Colors.black,
          child: Text(
            'Cart Page',
            style: TextStyle(
              color: Colors.black,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ),
      body: Column(
        children: [
          Expanded(
            child:cart.isEmpty? Center(child: Text('Your cart is empty'),):
             ListView.builder(
              itemCount: cart.length, // Provide the actual length of the cart
              itemBuilder: (context, index) {
                final item = cart[index];
                return Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    
                    
                    color: Colors.blueGrey[50],
                    child: ListTile(
                    leading: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20)
                      ),
                      height: 80,width: 80,
                      child: Image.asset(item.imagepath,scale: 1,)),
                      title: Text(item.productname),
                      subtitle: Text(item.productvalue.toStringAsFixed(2)),
                      trailing: IconButton(onPressed:()=> removebutton(context,item), icon: const Icon(Icons.remove_shopping_cart_outlined)),
                    ),
                  ),
                );
              
              },
            ),
          ),
        ],
      ),
    );
  }
}
