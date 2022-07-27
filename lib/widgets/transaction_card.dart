import 'package:bankapp_ui/screens/transaction_page.dart';
import 'package:bankapp_ui/themes/theme_styles.dart';
import 'package:flutter/material.dart';

class TransactionCard extends StatefulWidget {
  final String? title;
  final String? subTitle;
  final String? price;
  final String? letter;
  final Color? color;

  const TransactionCard(
      {this.title, this.subTitle, this.price, this.letter, this.color});

  @override
  State<TransactionCard> createState() => _TransactionCardState();
}

class _TransactionCardState extends State<TransactionCard> {

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15.0, vertical: 10.0),
      child: GestureDetector(
        onTap: _onTapped,
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
      ),
    );
  }

  void _onTapped() {
    Navigator.push(context,
        MaterialPageRoute(builder: (context) => TransactionPage(
          color: widget.color,
          title: widget.title,
          subTitle: widget.subTitle,
          price: widget.price,
          letter: widget.letter,
        )));
  }
}
