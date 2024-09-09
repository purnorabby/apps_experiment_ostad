import 'package:apps_experiment_ostad/bag_item.dart';
import 'package:flutter/material.dart';

class BagCard extends StatelessWidget {
  const BagCard({super.key,required this.item,required this.onQuantityChange});

  final BagItem item;
  final ValueChanged<int> onQuantityChange;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: Card(
        color: Colors.grey.shade200,
        child: SizedBox(
          height: 130,
          width: double.infinity,
          child: Row(
            children: [
              Image.asset('assets/images/T-shirt.png'),
              const SizedBox(width: 8,),
              Expanded(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Row(
                    children: [
                      RichText(
                          text: TextSpan(
                            children: [
                              TextSpan(
                                text: '${item.productTitle}\n'
                              ),
                              const TextSpan(
                                text: 'Color'
                              ),
                              TextSpan(
                                text: item.color
                              ),
                              const TextSpan(
                                text: 'Size'
                              ),
                              TextSpan(
                                text: item.size
                              )
                            ],

                      ),
                      )
                    ],

                  ),
                  Row(
                    children: [
                      IconButton(onPressed: (){
                        if(item.quantity>1){
                          onQuantityChange(item.quantity-1);
                        }
                      } , icon: const Icon(Icons.remove)),
                      Text('${item.quantity}'),
                      IconButton(onPressed: (){
                        onQuantityChange(item.quantity+1);
                      } , icon: const Icon(Icons.add)
                      ),
                    ],
                  ),
                ],
              )
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Icon(Icons.more_vert),
                    Text('${item.price}\$'),
                  ],

                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
