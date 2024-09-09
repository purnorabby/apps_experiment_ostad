import 'package:apps_experiment_ostad/bag_card.dart';
import 'package:flutter/material.dart';
import 'package:apps_experiment_ostad/bag_item.dart';

class MyBagScreen extends StatefulWidget {
  const MyBagScreen({super.key});

  @override
  State<MyBagScreen> createState() => _MyBagScreenState();
}

class _MyBagScreenState extends State<MyBagScreen> {
  List<BagItem> bagItem = [
    BagItem(productImage: 'assets/images/T-shirt.png',
        productTitle: 'Pullover',
        color: 'Black',
        size: 'L',
        price: 1,
        quantity: 1),
    BagItem(
        productImage: 'assets/images/T-shirt.png',
        productTitle: 'T-Shirt',
        color: 'Gray',
        size: 'L',
        price: 30,
        quantity: 1
    ),
    BagItem(productImage: 'assets/images/T-shirt.png',
        productTitle: 'Sport Dress',
        color: 'Black',
        size: 'M',
        price: 43,
        quantity: 1
    ),

  ];

  int calculateTotal() {
    return bagItem.fold(0, (sum, item) {
      return sum + item.price.toInt() * item.quantity;
    });
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: AppBar(
        title: const Text('My Bag', style: TextStyle(
            fontSize: 15,
            fontWeight: FontWeight.bold),),
        backgroundColor: Colors.pink,
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16.0),
        child: Column(
          children: [
            //card view part.................
            Expanded
              (child: ListView.builder(
              itemCount: bagItem.length,

                itemBuilder: (context, index) {
                  return BagCard(item: bagItem[index],
                    onQuantityChange: (newQuantity) {
                    bagItem[index].quantity=newQuantity;
                    setState(() {
                      
                    });
                    
                  },);
                }),
            ),
            Column(
              children: [
                //total amount part................
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Text(
                        'Total amount'),
                    Text(
                      '${calculateTotal()}\$',
                      style: Theme.of(context).textTheme.bodyLarge,
                    ),
                  ],
                ),

                ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.red),
                    child: const Text('CHECK OUT'))


              ],
            )
          ],

        ),
      ),

    );
  }
}
