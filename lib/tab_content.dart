import 'package:flutter/material.dart';
import 'package:tienda_zapatos/show_details.dart';

import 'offer.dart';

class TabContent extends StatelessWidget {
  final List<Offer> items;

  const TabContent({
    super.key,
    required this.items,
  });

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        childAspectRatio: 0.75,
        crossAxisSpacing: 2,
        mainAxisSpacing: 2,
      ),
      itemCount: items.length,
      itemBuilder: (BuildContext context, int index) {
        return InkWell(
          onTap: () {
            showDetails(context, items[index]);
          },
          child: Container(
            margin: const EdgeInsets.all(10),
            padding: const EdgeInsets.all(8),
            decoration: BoxDecoration(
                color: Colors.white, borderRadius: BorderRadius.circular(15)),
            child: Column(children: [
              Image.asset(items[index].image),
              Padding(
                padding: const EdgeInsets.only(top: 5, bottom: 5),
                child: Text(
                  items[index].name,
                  textAlign: TextAlign.center,
                  style: const TextStyle(fontWeight: FontWeight.bold),
                ),
              ),
              Text(
                '\$${items[index].price}',
                style: const TextStyle(fontSize: 17),
              ),
            ]),
          ),
        );
      },
    );
  }
}
