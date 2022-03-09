import 'package:flutter/material.dart';

class ReusableCard extends StatelessWidget {
  // Создали конструктор для помещения цвета (Для удобного понимания)
  ReusableCard({required this.colour, this.cardChild, this.onPress});

  final Color colour;
  final Widget? cardChild;

  // (?) для того, чтобы убрать слово required. То есть, показать, что она необязательна или не определённа

  final void Function()? onPress;

  //final Function onPress; не используется нужно обозначить скобки

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPress,
      child: Container(
        child: cardChild,
        margin: EdgeInsets.all(15.0),
        decoration: BoxDecoration(
          // Тут тоже
            color: colour,
            borderRadius: BorderRadius.circular(10.0)),
      ),
    );
  }
}
