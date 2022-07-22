import 'package:bankapp_ui/themes/theme_colors.dart';
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
  List cardList = [
    CreditCard(),
    CreditCard(),
    CreditCard(),
    CreditCard(),
    CreditCard(),
    CreditCard(),
  ];

  int _currentCard = 0;
  final _pageController = PageController(initialPage: 0);

  @override
  void dispose(){
    _pageController.dispose();
    super.dispose();
  }

  _onPageChanged(int index){
    setState(() {
      _currentCard = index;
    });
  }

  Widget _itemBuilder(BuildContext context, int index) {
    return CreditCard();
  }

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
        Container(
          height: 250,
          width: 380,
          child: PageView.builder(
            scrollDirection: Axis.horizontal,
              controller: _pageController,
              onPageChanged: _onPageChanged,
              itemCount: cardList.length,
              itemBuilder: _itemBuilder),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 8.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              for(int i = 0; i< cardList.length; i++)
                if (_currentCard == i)
                  DotIndicator(true)
              else
                DotIndicator(false)
            ],
          ),
        ),
      ],
    );
  }

}

class DotIndicator extends StatefulWidget {
  final bool isActive;

  DotIndicator(this.isActive);

  @override
  State<DotIndicator> createState() => _DotIndicatorState();
}

class _DotIndicatorState extends State<DotIndicator> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal:3.0),
      child: Container(
        height: 6.0,
        width: 6.0,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(5.0),
          color: widget.isActive ? ThemeColors.black : ThemeColors.lightGrey,
        ),
      ),
    );
  }
}

