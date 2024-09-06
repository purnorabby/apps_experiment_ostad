import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: ShoppingCart(),
    );
  }
}

class ShoppingCart extends StatefulWidget {
  @override
  _ShoppingCartState createState() => _ShoppingCartState();
}

class _ShoppingCartState extends State<ShoppingCart> {

  int pulloverQuantity = 1;
  int tshirtQuantity = 1;
  int sportDressQuantity = 1;


  final double pulloverPrice = 51.0;
  final double tshirtPrice = 30.0;
  final double sportDressPrice = 43.0;


  double get totalAmount {
    return (pulloverQuantity * pulloverPrice) +
        (tshirtQuantity * tshirtPrice) +
        (sportDressQuantity * sportDressPrice);
  }


  void _showCheckoutMessage() {
    ScaffoldMessenger.of(context).showSnackBar(
      const SnackBar(content: Text('Congratulations! You have checked out successfully.')),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('My Bag'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: _build_product_sample(),
      ),
    );
  }

  Widget _build_product_sample() {
    return Column(
        children: [
          buildCartItem(
              'Pullover',
              'Black',
              'L',
              pulloverPrice,
              pulloverQuantity,
              'assets/images/pullover.png', // Add image asset path here
                  (newValue) {
                setState(() {
                  pulloverQuantity = newValue;
                });
              }
          ),
          buildCartItem(
              'T-Shirt',
              'Gray',
              'L',
              tshirtPrice,
              tshirtQuantity,
              'assets/images/tshirt.png', // Add image asset path here
                  (newValue) {
                setState(() {
                  tshirtQuantity = newValue;
                });
              }
          ),
          buildCartItem(
              'Sport Dress',
              'Black',
              'M',
              sportDressPrice,
              sportDressQuantity,
              'assets/images/flutter_logo.png', // Add image asset path here
                  (newValue) {
                setState(() {
                  sportDressQuantity = newValue;
                });
              }
          ),
          const SizedBox(height: 20),
          Text('Total amount: \$${totalAmount.toStringAsFixed(2)}'),
          const SizedBox(height: 20),
          SizedBox(
            width: 400,
            height: 50,
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(backgroundColor: Colors.red),
              onPressed: _showCheckoutMessage,
              child: const Text('CHECK OUT',style: TextStyle(color: Colors.white,)),
            ),
          )
        ],
      );
  }


  Widget buildCartItem(String name, String color, String size, double price, int quantity, String imagePath, Function(int) onChanged) {
    return ListTile(
      contentPadding: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 16.0),
      leading: Image.asset(
        'assets/images/T-shirt.png',
        width: 50,
        height: 50,
        fit: BoxFit.cover,
      ),
      title: Text(name),
      subtitle: Text('Color: $color, Size: $size'),
      trailing: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          IconButton(
            onPressed: () {
              if (quantity > 1) {
                onChanged(quantity - 1);
              }
            },
            icon: const Icon(Icons.remove),
          ),
          Text(quantity.toString()),
          IconButton(
            onPressed: () {
              onChanged(quantity + 1);
            },
            icon: const Icon(Icons.add),
          ),
          const SizedBox(width: 10),
          Text('\$${price.toStringAsFixed(2)}'),
        ],
      ),
    );
  }
}
