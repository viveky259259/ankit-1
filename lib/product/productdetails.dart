import 'package:flutter/material.dart';             

class Product_details extends StatefulWidget {
  final product_details_name;
  final product_details_picture;

  Product_details({
    this.product_details_name,
    this.product_details_picture,
  })
  ;

  @override
  _Product_detailsState createState() => _Product_detailsState();
}

class _Product_detailsState extends State<Product_details> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(backgroundColor: Colors.purple,
      title: Text('Murgas')),
      body:ListView(
        children: <Widget>[
          Container(
            height: 300.0,
            child: GridTile(
              child: Container(
                color: Colors.white,
                child: Image.asset(widget.product_details_picture,fit: BoxFit.cover),
              ),
            ),
          ),
        
//         footer: Container(
//        color: Colors.white70
//        child:ListTile(
//          leading:Text(widget.product_details_name,style: TextStyle(fontweight:FontWeight.bold,
//          fontsize: 16.0),)
//        ),
//        title: Row(
//          children:<Widget>[
//            Expanded(
//              child: Text("")
//              style:TextStyle(color: Colors.grey,decoration: TextDecoration),
//
//
//
//            )
//
//          ]
//        )
//
//      )
//      Row(
//        children: <Widget>[
//          Expanded(
//            child:MaterialButton(onPressed(){}
//            color:Colors.white,
//            )
//          )
//        ]
//      )
        ],
      ));
      
  }
}