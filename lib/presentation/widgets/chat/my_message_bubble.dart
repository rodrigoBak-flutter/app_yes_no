import 'package:flutter/material.dart';

class MyMessageBubble extends StatelessWidget {
  const MyMessageBubble({super.key});

  @override
  Widget build(context) {
    final colors = Theme.of(context).colorScheme;
    return  Column(
      crossAxisAlignment: CrossAxisAlignment.end,
      children: [
        Padding(
          padding:const EdgeInsets.symmetric(vertical: 10),
          child: DecoratedBox(
            decoration: BoxDecoration(color: colors.primary,borderRadius: BorderRadius.circular(20)),
            child:const Padding(
              padding: EdgeInsets.symmetric(horizontal: 20,vertical: 10),
              child: Text(
                'Prueba de como se ve el texto',
                style: TextStyle(color: Colors.white),
              ),
            ),
          ),
        )
      ],
    );
  }
}
