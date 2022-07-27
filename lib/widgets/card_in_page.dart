import 'package:flutter/material.dart';
import '../themes/theme_styles.dart';

class CardInPage extends StatefulWidget {
  final String? title;
  final String? subTitle;
  final String? price;
  final String? letter;
  final Color? color;

  const CardInPage(
      {this.title, this.subTitle, this.price, this.letter, this.color});

  @override
  State<CardInPage> createState() => _CardInPageState();
}

class _CardInPageState extends State<CardInPage> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 16.0, right: 16.0),
      child: Container(
        height: 65,
        width: 345,
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    Container(
                      height: 44.0,
                      width: 44.0,
                      decoration: BoxDecoration(
                        color: widget.color,
                        borderRadius: BorderRadius.circular(22),
                      ),
                      child: Center(
                        child: Text(
                          widget.letter!,
                          style: TextStyle(
                              fontSize: 30.0,
                              fontWeight: FontWeight.w700,
                              color: Colors.white),
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 15,
                    ),

                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          widget.title!,
                          style: ThemeStyles.otherDetailsPrimary,
                        ),
                        Text(
                          widget.subTitle!,
                          style: ThemeStyles.otherDetailsSecondary,
                        ),
                      ],
                    ),
                  ],
                ),
                Row(
                  children: [
                    Text(widget.price!,
                     style: TextStyle(color: Colors.red),),
                    SizedBox(width: 4),
                    Icon(Icons.keyboard_arrow_right),

                  ],
                ),
              ],
            ),
            Divider(
              color: Colors.grey.withOpacity(0.5),
              thickness: 0.5,
              endIndent: 10.0,
              indent: 3.0,
            ),
          ],
        ),
      ),
    );
  }


}
