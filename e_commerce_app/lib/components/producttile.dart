import 'package:e_commerce_app/model/product.dart';
import 'package:e_commerce_app/model/shop.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class Producttile extends StatelessWidget {
  final product prodt;

  Producttile({Key? key, required this.prodt}) : super(key: key);
   
   void addtobutton(BuildContext context){
     showDialog(context: context, builder:(context) => AlertDialog(
content: const Text("Add this item to your cart?"),
actions: [
  
  MaterialButton(
  onPressed: () {
    Navigator.pop(context);
    context.read<shop>().addtocart(prodt);
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
    return Container(
      decoration: BoxDecoration(
        color: Colors.white60,
        borderRadius: BorderRadius.all(Radius.circular(20)),
      ),
      margin: EdgeInsets.all(10),
      padding: EdgeInsets.all(25),
      width: 300,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start, // Add this line
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: AspectRatio(
              aspectRatio: 1,
              child: Container(
                width: double.infinity,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.all(Radius.circular(20)),
                ),
                child: Image(image: AssetImage(prodt.imagepath))
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left:10.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  prodt.productname,
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30),
                ),
                SizedBox(height: 5,),
                Text(
                  prodt.productdiscription,
                  style: TextStyle(fontWeight: FontWeight.w500, color: Colors.grey),
                ),
          
                SizedBox(height: 40,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      prodt.productvalue.toString(),
                      style: TextStyle(fontWeight: FontWeight.w900, fontSize: 20),
                    ),

                    Container(
                    width: 60,
                    height: 40,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(10)),
                        color: Colors.white
                      ),
                      child: IconButton(onPressed:() =>  addtobutton(context), icon: const Icon(Icons.add)),
                    )
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
