import 'package:e_commerce_app/model/product.dart';
import 'package:flutter/material.dart';

class shop extends ChangeNotifier{
  //list the product
final List<product> _shop=[
product(productname: 'Beauty-1', productdiscription: 'High-quality beauty product with a unique design.', productvalue: 149.99, imagepath: 'assets/images/1.jpg'),

product(productname: 'Beauty', productdiscription: 'Classic beauty product for a timeless look.', productvalue: 79.99, imagepath: 'assets/images/2.jpg'),

product(productname: 'Cigratte', productdiscription: 'Breathe in life, choose a smoky vibe.', productvalue: 5.99, imagepath: 'assets/images/3.jpg'),

product(productname: 'Coco cola', productdiscription: 'Taste the Feeling..', productvalue: 3.99, imagepath: 'assets/images/4.jpg'),

product(productname: 'Gillette', productdiscription: 'Premium razor for a clean and precise shave.', productvalue: 29.99, imagepath: 'assets/images/6.jpg'),

product(productname: 'Glass', productdiscription: 'Elegant glassware for your favorite beverages.', productvalue: 19.99, imagepath: 'assets/images/7.jpg'),

product(productname: 'Good_biscuitss', productdiscription: 'Delicious and wholesome biscuits for a tasty snack.', productvalue: 7.99, imagepath: 'assets/images/8.jpg'),

product(productname: 'kellogs', productdiscription: 'Nutritious Kellogg\'s cereal for a healthy breakfast.', productvalue: 4.99, imagepath: 'assets/images/9.jpg'),

product(productname: 'kit kat biscuit', productdiscription: 'Crunchy and delightful Kit Kat biscuits for a break.', productvalue: 2.99, imagepath: 'assets/images/10.jpg'),

product(productname: 'Lays', productdiscription: 'Flavorful and crispy Lay\'s chips for snacking pleasure.', productvalue: 1.99, imagepath: 'assets/images/11.jpg'),

product(productname: 'Oreo biscuits', productdiscription: 'Classic Oreo biscuits with a creamy filling.', productvalue: 3.49, imagepath: 'assets/images/12.jpg'),

product(productname: 'Pedigeree', productdiscription: 'Luxurious and refined fragrance for an unforgettable scent.', productvalue: 59.99, imagepath: 'assets/images/13.jpg'),



product(productname: 'Pringels', productdiscription: 'Once you pop, you cant stop.', productvalue: 199.99, imagepath: 'assets/images/15.jpg'),

product(productname: 'Tide ', productdiscription: 'Powerful Tide washing powder for pristine laundry.', productvalue: 12.99, imagepath: 'assets/images/17.jpg'),

product(productname: 'Tobelrone', productdiscription: 'Indulgent Toblerone chocolate for a sweet treat.', productvalue: 8.99, imagepath: 'assets/images/18.jpg')

 
];
//cart
List<product>_cart=[];

//get product list
List<product> get Shop =>_shop;
//get user cart
List<product> get cart => _cart;

//add to cart
 void addtocart(product item){
  _cart.add(item);
  notifyListeners();
 }
 //remove cart
 void remove(product item){
  _cart.remove(item);
  notifyListeners();
 }

  addtobuttonO(product prodt) {}


}