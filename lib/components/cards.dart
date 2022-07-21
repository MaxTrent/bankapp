import 'package:bankapp_ui/themes/theme_styles.dart';
import 'package:flutter/material.dart';
import 'package:bankapp_ui/themes/theme_styles.dart';

import '../widgets/credit_card.dart';


class CardsList extends StatefulWidget {
  const CardsList({Key? key}) : super(key: key);

  @override
  State<CardsList> createState() => _CardsListState();
}

class _CardsListState extends State<CardsList> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.fromLTRB(15, 25, 20, 10),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text('Your cards', style: ThemeStyles.primaryTitle),
              Text('See All', style: ThemeStyles.seeAll,),
            ],
          ),
        ),
        CreditCard(),
      ],
    );
  }
}
