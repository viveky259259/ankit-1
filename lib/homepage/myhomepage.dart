import 'package:flutter/material.dart';
import 'package:murgas/cart/mycart.dart';
import 'package:murgas/product/products.dart';
class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(appBar: AppBar(
      backgroundColor: Colors.purple,
      title:Text('Murgas'),
      actions: <Widget>[
        IconButton(icon: Icon(Icons.shopping_cart,color: Colors.white),
        onPressed: (){Navigator.push(context,MaterialPageRoute(builder: (context)=>My_Cart())
        );},),
        
      ]
    ),
        
       drawer: Drawer( 
          child: ListView(
            children: <Widget>[
              UserAccountsDrawerHeader(
                accountName: Text('ankit gupta'),
                accountEmail:Text('ankitgg66@gmail.com'),
                currentAccountPicture:GestureDetector(
                  child:CircleAvatar(
                    backgroundColor:Colors.grey,
                    child:Icon(Icons.person,color: Colors.white),

                  ),
                ),
                decoration: BoxDecoration(
              color: Colors.purple
              )),
//body               
              InkWell(
            onTap: (){},
            child: ListTile(
              title: Text('Home Page'),
              leading: Icon(Icons.home),
            ),
          ),

              InkWell(
            onTap: (){},
            child: ListTile(
              title: Text('cart'),
              leading: Icon(Icons.shopping_cart),
            ),
          ),

             InkWell(
            onTap: (){},
            child: ListTile(
              title: Text('Chicken in KG (min 1/2 kg)'),
              leading: Icon(Icons.arrow_forward),
            ),
          ),

           InkWell(
            onTap: (){},
            child: ListTile(
              title: Text('Mutton in KG (min 1/2 kg)'),
              leading: Icon(Icons.arrow_forward),
            ),
          ),
            
             Divider(),

             InkWell(
            onTap: (){},
            child: ListTile(
              title: Text('About'),
              leading: Icon(Icons.help),
            ),
          ),

            ]
          )
        ),
         body: ListView(
           children: <Widget>[
             Padding(padding: EdgeInsets.all(0.0),),
             Container(
               height: 500.0,
               child:Product(),
             )
           ],
         ),
    
           
         );
  }
                    
  }