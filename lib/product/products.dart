import 'package:flutter/material.dart';
import 'package:murgas/product/model/product_model.dart';
import 'package:murgas/product/productdetails.dart';
import 'package:murgas/product/server/product_server.dart';


class Product extends StatefulWidget {
  @override
  _ProductState createState() => _ProductState();
}

class _ProductState extends State<Product> {

  List<ProductModel> products;

@override
  void initState() {
    // TODO: implement initState
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) {
      getProducts();
    });
  }
  @override
  Widget build(BuildContext context) {
    return
      (products!=null && products.length>0)?GridView.builder(
      itemCount: products.length,
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
      itemBuilder: (BuildContext context,int index){
        ProductModel eachProduct=products[index];
        return Card(
          child: Row(
            children: <Widget>[
              Text("${eachProduct.name}"),
              Column(
                children: <Widget>[
                  Image.network(eachProduct.imageUrl),
                  Text("${eachProduct.price}")
                ],
              ),
            ],
          ),
        );
      },

    ):Center(
        child: CircularProgressIndicator(),
      );
  }

  void getProducts() {
    ProductServer().getProducts().then((products){
      print("loaded");
      setState(() {
        this.products=products;
      });
    }).catchError((error){
      print(error);
    });
  }
}

class Details extends StatelessWidget {
  final products_name;
  final products_picture;
  Details({
    this.products_name,
    this.products_picture,
  });
  @override
  Widget build(BuildContext context) {
    return Card(
      child: Hero(
        tag: products_name,
        child: Material(
          child: InkWell(
            onTap: ()=>Navigator.of(context).push(MaterialPageRoute(builder: (context)=>Product_details(
              product_details_name: products_name,
              product_details_picture: products_picture,
            ))),
            child: GridTile(
              footer: Container(
                color: Colors.white24,
                child: ListTile(
                  leading: Text(products_name
                  ,style: TextStyle(fontWeight: FontWeight.bold),),
                  
              ),
            ),
            child: Image.asset(products_picture,fit: BoxFit.cover),
            
          ),
        
          ),),
      ),
      
    );
    
  }
}
