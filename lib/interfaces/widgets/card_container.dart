import 'package:flutter/material.dart';

class Card_Container extends StatelessWidget {
  final Widget child;
  const Card_Container({Key? key, required this.child}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: 27,
      ),
      child: Container(
        width: double.infinity,
        child: child,
        // color: Colors.red,

        decoration: CardShape(),
      ),
    );
  }

  BoxDecoration CardShape() {
    return BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(25),
        boxShadow: const [
          BoxShadow(
              color: Colors.black12, blurRadius: 15, offset: Offset(3, 10))
        ]);
  }
}
