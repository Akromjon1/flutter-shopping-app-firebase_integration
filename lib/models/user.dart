import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:untitled/constants/app_constants.dart';
import 'package:untitled/models/cart_item.dart';

class UserModel {
  static const ID = "id";
  static const NAME = "name";
  static const EMAIL = "email";
  static const CART = "cart";
  static const TEL = "tel";

   String id;
   String name;
   String email;
   List<CartItemModel> cart;
   String tel;


  UserModel({this.id, this.name, this.email, this.cart, this.tel});

  UserModel.fromSnapshot(DocumentSnapshot snapshot) {
    name = snapshot.data()[NAME];
    email = snapshot.data()[EMAIL];
    id = snapshot.data()[ID];
    cart = _convertCartItems(snapshot.data()[CART] ?? []);
    tel = snapshot.data()[TEL];
  }

  List<CartItemModel> _convertCartItems(List cartFromDb){
    List<CartItemModel> _result = [];
    if(cartFromDb.length > 0){
      cartFromDb.forEach((element) {
      _result.add(CartItemModel.fromMap(element));
    });
    }
    return _result;
  }
}
