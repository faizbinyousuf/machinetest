import 'package:flutter/material.dart';

class OrderCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blueGrey[900],
        title: Text(
          'My Cart',
          style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
        ),
      ),
      body: Card(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 40),
          child: ListView(
            children: [
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    height: 70,
                    width: 70,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        fit: BoxFit.cover,
                        image: AssetImage('assets/shoe.jpg'),
                      ),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey,
                          blurRadius: 5.0,
                          offset: Offset(0.0, 5.0),
                        ),
                      ],
                      borderRadius: BorderRadius.circular(8),
                    ),
                  ),
                  SizedBox(width: 20.0),
                  Padding(
                    padding: const EdgeInsets.only(top: 18.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('Sneaker',
                            style: TextStyle(fontWeight: FontWeight.bold)),
                        // SizedBox(height: 7.0),
                        Text('\u20b9 2500.00',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Colors.grey[700],
                            )),
                      ],
                    ),
                  ),
                  SizedBox(width: 30.0),
                  Container(
                    margin: EdgeInsets.only(top: 18.0),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        border: Border.all(width: 2.0, color: Colors.grey)),
                    height: 35,
                    width: 85,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        InkWell(
                          onTap: () {},
                          child: Icon(
                            Icons.remove_circle,
                            color: Colors.grey,
                          ),
                        ),
                        Text(
                          '0',
                          style: TextStyle(
                              fontSize: 18.0,
                              color: Colors.black,
                              fontWeight: FontWeight.bold),
                        ),
                        InkWell(
                          onTap: () {},
                          child: Icon(
                            Icons.add_circle,
                            color: Colors.grey,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Spacer(),
                  Padding(
                    padding: const EdgeInsets.only(top: 20.0),
                    child: InkWell(
                      onTap: () {
                        print('Clicked');
                      },
                      child: Icon(
                        Icons.remove_circle_outline,
                        color: Colors.red,
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 30.0,
              ),
              _buildTotal(),
            ],
          ),
        ),
      ),
    );
  }
}

Widget _buildTotal() {
  return Container(
    height: 240,
    margin: const EdgeInsets.symmetric(horizontal: 30.0, vertical: 20.0),
    child: Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text('Cart Total',
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 15,
                    color: Colors.grey)),
            Text(
              '\u20b9 2500.0',
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 15,
                  color: Colors.black),
            ),
          ],
        ),
        SizedBox(height: 10.0),
        Row(
          // mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text('Discount',
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 15,
                    color: Colors.grey)),
            Text(
              '\u20b9 100',
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 15,
                  color: Colors.black),
            ),
          ],
        ),
        SizedBox(height: 10.0),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text('Tax',
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 15,
                    color: Colors.grey)),
            Text(
              '\u20b9 50.0',
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 15,
                  color: Colors.black),
            ),
          ],
        ),
        SizedBox(
          height: 10.0,
        ),
        Divider(color: Colors.grey, height: 20),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text('Subtotal',
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 15,
                    color: Colors.grey)),
            Text(
              '\u20b9 2450',
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 15,
                  color: Colors.black),
            ),
          ],
        ),
        SizedBox(height: 20.0),
        Container(
          width: 200.0,
          height: 50,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: Colors.blueGrey[600],
          ),
          child: Center(
            child: GestureDetector(
              onTap: () {},
              child: Text(
                'Proceed to Checkout',
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 18,
                    fontWeight: FontWeight.bold),
              ),
            ),
          ),
        ),
      ],
    ),
  );
}
