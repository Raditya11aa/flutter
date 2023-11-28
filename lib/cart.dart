import 'package:flutter/material.dart';
import 'package:fresh_food2/main.dart';

void main() {
  runApp(const Cart());
}

class Cart extends StatefulWidget {
  const Cart({Key? key}) : super(key: key);

  @override
  _CartState createState() => _CartState();
}

class _CartState extends State<Cart> {
  int quantity = 1;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          elevation: 0.0,
          leading: GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => MyApp()),
              );
            },
            child: Container(
              margin: EdgeInsets.all(10.0),
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: Colors.grey.withOpacity(0.1),
              ),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Icon(
                  Icons.arrow_back_ios,
                  color: Colors.black,
                ),
              ),
            ),
          ),
          actions: [
            GestureDetector(
              onTap: () {},
              child: Container(
                margin: EdgeInsets.all(10),
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: Colors.grey.withOpacity(0.1),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(8),
                  child: Icon(
                    Icons.account_circle,
                    color: Colors.black,
                  ),
                ),
              ),
            )
          ],
        ),
        body: Padding(
          padding: EdgeInsets.all(20),
          child: Container(
            width: 380,
            height: 140,

            decoration: BoxDecoration(
                color: Colors.grey.withOpacity(0.2),
              borderRadius: BorderRadius.all(
                Radius.circular(20),
              )
            ),
            child: Row(
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.all(
                    Radius.circular(20),
                  ),
                  child: Image(
                    image: AssetImage('assets/front-view-burger-stand.jpg'),
                    width: 140,
                    height: 140,
                    fit: BoxFit.cover,

                  ),
                ),
                SizedBox(width: 20),
                Column(
                  children: [
                    SizedBox(height: 20,),
                    Text(
                      'Burger',
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(height: 20),
                    Text(
                      'Rp 50.000',
                      style: TextStyle(
                        fontSize: 15,
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        IconButton(
                            onPressed: (){
                              if(quantity > 1){
                                setState(() {
                                  quantity--;
                                });
                              }
                            },
                            icon: Icon(Icons.remove),
                        ),
                        SizedBox(width: 5,),
                        Text(
                          '$quantity',
                          style: TextStyle(
                            fontSize: 17,
                          ),
                        ),
                        IconButton(
                          onPressed: (){
                              setState(() {
                                quantity++;
                              });
                          },
                          icon: Icon(Icons.add),
                        ),

                      ],
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
