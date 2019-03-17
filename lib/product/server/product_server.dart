
import 'dart:async';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:murgas/product/model/product_model.dart';

class ProductServer{
  Future getProducts() async {
    Completer complete = Completer();
    Firestore db = await Firestore.instance;
    List<ProductModel> products=new List();
    db.collection("/product").getDocuments().then((result){
      print(result);
      var documents= result.documents;
      for(int i=0;i<documents.length;i++){
        var data=documents[i].data;
        String name=data['name'];
        int price=data['price'];
        String imageUrl=data['image_url'];
        ProductModel productModel=ProductModel(name,imageUrl,price);
        products.add(productModel);
      }
      print(products);
      complete.complete(products);
    }).catchError((error){
    print(error);
    complete.completeError(error);

    });


    return complete.future;
  }
}