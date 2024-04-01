import 'package:flutter/material.dart';

class ProductCheckoutCard extends StatefulWidget {
  const ProductCheckoutCard(
      {super.key, required this.name, required this.price, required this.size});
  final String name;
  final double price;
  final String size;

  @override
  State<ProductCheckoutCard> createState() => _ProductCheckoutCardState();
}

class _ProductCheckoutCardState extends State<ProductCheckoutCard> {
  bool expandCard = false;

  @override
  Widget build(BuildContext context) {
    ColorScheme color = Theme.of(context).colorScheme;

    return Container(
      padding: const EdgeInsets.only(bottom: 12),
      decoration: ShapeDecoration(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10),
        ),
        color: color.tertiary,
      ),
      child: Column(children: [
        Row(
          children: [
            IconButton(
              icon: const Icon(Icons.keyboard_arrow_right_outlined),
              onPressed: () {
                setState(() {
                  expandCard = !expandCard;
                });
              },
            ),
            Text(widget.name),
            Text("GHC${widget.price}"),
            IconButton(
              icon: const Icon(Icons.cancel_outlined),
              onPressed: () {},
            )
          ],
        ),
        expandCard
            ? SizedBox(
                width: 250,
                child: TextFormField(
                  decoration: const InputDecoration(
                    label: Text("Quantity"),
                  ),
                ),
              )
            : const SizedBox()
      ]),
    );
  }
}
