import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:fresh_food2/Cart.dart';
import 'package:fresh_food2/keranjang.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          elevation: 0.0,
          leading: GestureDetector(
            onTap: (){

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
                  Icons.menu,
                  color: Colors.black,
                ),
              ),
            ),
          ),
          actions: [
            GestureDetector(
              onTap: (){

              },
              child: Container(
                margin: EdgeInsets.all(10),
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: Colors.grey.withOpacity(0.1)
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
        body: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.all(20.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: 20),
                Row(
                  children: [
                    CategoryFood('All', Colors.blue),
                    SizedBox(width: 40),
                    CategoryFood('Makanan', Colors.white),
                    SizedBox(width: 40),
                    CategoryDrink('Minuman', Colors.white),
                  ],
                ),


                SizedBox(height: 40),
                Text("All Food"),
                SizedBox(height: 20),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(width: 10),
                    FoodItemWidget(),
                    SizedBox(width: 10),
                    FoodItemWidget(),
                  ],
                ),

                SizedBox(height: 20,),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(width: 10),
                    FoodItemWidget(),
                    SizedBox(width: 10),
                    DrinkItemWidget(),
                  ],
                ),

                SizedBox(height: 20,),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(width: 10),
                    FoodItemWidget(),
                    SizedBox(width: 10),
                    DrinkItemWidget(),
                  ],
                ),
              ],
            ),
          ),
        ),
        bottomNavigationBar: BottomNavigationBar(
          items: [
            BottomNavigationBarItem(
                icon: Icon(Icons.home),
              label: 'Home',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.shopping_basket),
              label: 'basket',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.shopping_cart_checkout),
              label: 'checkout',
            )

          ],
          onTap: (int index) {
            if (index == 1) {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => keranjang()),
              );
            } else if (index == 2) {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => Cart()),
              );
            }
          },

          
        ),
      ),

    );
  }
}

class CategoryFood extends StatelessWidget {
  final String title;
  final Color color;

  const CategoryFood(this.title, this.color);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          width: 90,
          height: 90,
          decoration: BoxDecoration(
            color: color,
            borderRadius: BorderRadius.circular(20.0),
            boxShadow: [
              BoxShadow(
                color: Colors.grey.withOpacity(0.5),
                spreadRadius: 2,
                blurRadius: 5,
                offset: Offset(0, 6),
              ),

            ],
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ClipRRect(
                borderRadius: BorderRadius.all(
                    Radius.circular(10)
                ),
                child: Image(
                  image: AssetImage('assets/front-view-burger-stand.jpg'),
                  width: 70,
                  height: 70,
                  fit: BoxFit.cover,
                ),
              )

            ],
          ),
        ),
        SizedBox(height: 10),
        Text(title),
      ],
    );
  }
}

class CategoryDrink extends StatelessWidget {
  final String title;
  final Color color;

  const CategoryDrink(this.title, this.color);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          width: 90,
          height: 90,
          decoration: BoxDecoration(
            color: color,
            borderRadius: BorderRadius.circular(20.0),
            boxShadow: [
              BoxShadow(
                color: Colors.grey.withOpacity(0.5),
                spreadRadius: 2,
                blurRadius: 5,
                offset: Offset(0, 6),
              ),

            ],
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ClipRRect(
                borderRadius: BorderRadius.all(
                  Radius.circular(10)
                ),
                child: Image(
                  image: AssetImage('assets/blueMujito.jpg'),
                  width: 70,
                  height: 70,
                  fit: BoxFit.cover,
                ),
              )

            ],
          ),
        ),
        SizedBox(height: 10),
        Text(title),
      ],
    );
  }
}

class FoodItemWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 170,
      height: 180,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(20),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.5),
            spreadRadius: 2,
            blurRadius: 5,
            offset: Offset(0, 6),
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ClipRRect(
            borderRadius: BorderRadius.only(
              topRight: Radius.circular(20),
              topLeft: Radius.circular(20),
            ),
              child: Image(
                image: AssetImage('assets/front-view-burger-stand.jpg'),
                height: 120,
                width: 170,
                fit: BoxFit.cover,
              )
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              'Burger',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 16,
              ),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 8),
                child: Text(
                  'Rp 50.000',
                  style: TextStyle(
                    color: Colors.green,
                    fontSize: 14,
                  ),
                ),
              ),
              SizedBox(
                width: 25,
                height: 25,
                child: ElevatedButton(
                  onPressed: (){
                  },

                 child: Padding(
                   padding: const EdgeInsets.only(right: 10),
                 ),
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}

class DrinkItemWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 170,
      height: 180,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(20),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.5),
            spreadRadius: 2,
            blurRadius: 5,
            offset: Offset(0, 6),
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ClipRRect(
              borderRadius: BorderRadius.only(
                topRight: Radius.circular(20),
                topLeft: Radius.circular(20),
              ),
              child: Image(
                image: AssetImage('assets/blueMujito.jpg'),
                height: 120,
                width: 170,
                fit: BoxFit.cover,
              )
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              'Minuman',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 16,
              ),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 8),
                child: Text(
                  'Rp 20.000',
                  style: TextStyle(
                    color: Colors.green,
                    fontSize: 14,
                  ),
                ),
              ),
              SizedBox(
                width: 25,
                height: 25,
                child: ElevatedButton(
                  onPressed: (){
                  },

                  child: Padding(
                    padding: const EdgeInsets.only(right: 10),
                  ),
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}


