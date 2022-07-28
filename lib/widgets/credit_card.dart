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
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
               Padding(
                 padding: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 20.0),
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
            Padding(
              padding: const EdgeInsets.only(left: 20.0, bottom: 30.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('John Doe', style: ThemeStyles.cardDetails),
                  Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(right: 5.0),
                        child: Text('5339', style: ThemeStyles.cardDetails,),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 5.0),
                        child: SvgPicture.asset('assets/ellipsis-svgrepo-com.svg',
                        color: Colors.grey,
                        height: 20,
                        width: 20,),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 5.0),
                        child: SvgPicture.asset('assets/ellipsis-svgrepo-com.svg',
                          color: Colors.grey,
                          height: 20,
                          width: 20,),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 5.0),
                        child: Text('2241', style: ThemeStyles.cardDetails,),
                      ),
                    ],
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
