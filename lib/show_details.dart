import 'package:flutter/material.dart';
import 'offer.dart';

void showDetails(context, Offer offer) {
  showDialog(
      context: context,
      barrierDismissible: true,
      builder: (context) {
        return AlertDialog(
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(20.0)),
          title: const Text(
            "Detalles",
            textAlign: TextAlign.center,
          ),
          content: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              SizedBox(
                width: 300,
                height: 300,
                child: Image(
                  image: AssetImage(offer.image),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(bottom: 8.0),
                child: Text('Precio: \$${offer.price}',
                    style: const TextStyle(fontWeight: FontWeight.bold)),
              ),
              Text(offer.description, textAlign: TextAlign.justify)
            ],
          ),
          actions: [
            TextButton(
                onPressed: () => Navigator.pop(context),
                child: const Text('Ok'))
          ],
        );
      });
}
