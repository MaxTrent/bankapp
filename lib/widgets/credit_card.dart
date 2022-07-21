import 'package:bankapp_ui/themes/theme_colors.dart';
import 'package:bankapp_ui/themes/theme_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class CreditCard extends StatefulWidget {
  const CreditCard({Key? key}) : super(key: key);

  @override
  State<CreditCard> createState() => _CreditCardState();
}

class _CreditCardState extends State<CreditCard> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 220,
      width: 380,
      decoration: BoxDecoration(
        color: ThemeColors.black,
        borderRadius: BorderRadius.circular(25),
      ),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
               Padding(
                 padding: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 8.0),
                 child: Row(
                   mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text('NGN 5,250,000', style: ThemeStyles.cardMoney,),
                    SvgPicture.asset('assets/hide-svgrepo-com.svg',
                    height: 20,
                    width: 20,)
                  ],
              ),
               ),
            Column(
              children: [
                Text('John Doe', style: ThemeStyles.cardDetails),
                Row(
                  children: [
                    Text('5339', style: ThemeStyles.cardDetails,),
                    SvgPicture.asset('')
                  ],
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
