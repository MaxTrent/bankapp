import 'package:bankapp_ui/themes/theme_colors.dart';
import 'package:bankapp_ui/themes/theme_styles.dart';
import 'package:bankapp_ui/widgets/add_note.dart';
import 'package:bankapp_ui/widgets/card_in_page.dart';
import 'package:bankapp_ui/widgets/other_details_divider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class TransactionPage extends StatefulWidget {
  final String? title;
  final String? subTitle;
  final String? price;
  final String? letter;
  final Color? color;

  const TransactionPage(
      {this.title, this.subTitle, this.price, this.letter, this.color});

  @override
  State<TransactionPage> createState() => _TransactionPageState();
}

class _TransactionPageState extends State<TransactionPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('Sent'),
        elevation: 0.0,
        leading: IconButton(
          icon: Icon(Icons.arrow_back_ios_new),
          onPressed: _onPressed,
        ),
      ),
      body: Container(
        child: Stack(
          children: [
            ListView(
              shrinkWrap: true,
              children: [
                Padding(
                  padding:
                      const EdgeInsets.only(top: 20.0, left: 15.0, bottom: 8.0),
                  child: Row(
                    children: [
                      Text(
                        'Outgoing Transaction',
                        style: ThemeStyles.primaryTitle,
                      )
                    ],
                  ),
                ),
                CardInPage(
                  color: widget.color,
                  title: widget.title,
                  subTitle: widget.subTitle,
                  price: widget.price,
                  letter: widget.letter,
                ),
                Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 30.0, bottom: 8.0, left: 16.0),
                      child: Text(
                        'Details',style: ThemeStyles.primaryTitle,
                      ),
                    )
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 16.0, top: 5.0),
                  child: Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(right: 8,),
                        child: SvgPicture.asset('assets/transfer-svgrepo-com.svg',
                        height: 20,
                        width: 20,),
                      ),
                      Text('Bank Transfer', style: ThemeStyles.otherDetailsPrimary,)
                    ],
                  ),
                ),
                OtherDetailsDivider(),
                Padding(
                  padding: const EdgeInsets.only(top: 5.0, left: 16.0),
                  child: Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 5.0, right: 5.0),
                        child: Container(
                          height: 32.0,
                          width: 72.0,
                          decoration: BoxDecoration(
                            color: ThemeColors.lightGrey,
                            borderRadius: BorderRadius.circular(10.0),
                          ),
                          child: Center(child: Text('#finance', style: ThemeStyles.tagText,)),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 5.0, right: 5.0),
                        child: Container(
                          height: 32.0,
                          width: 72.0,
                          decoration: BoxDecoration(
                            color: ThemeColors.lightGrey,
                            borderRadius: BorderRadius.circular(10.0),
                          ),
                          child: Center(child: Text('#fintory', style: ThemeStyles.tagText,)),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 5.0, right: 5.0),
                        child: Container(
                          height: 32.0,
                          width: 72.0,
                          decoration: BoxDecoration(
                            color: ThemeColors.lightGrey,
                            borderRadius: BorderRadius.circular(10.0),
                          ),
                          child: Center(child: Text('#design', style: ThemeStyles.tagText,)),
                        ),
                      ),
                      SvgPicture.asset('assets/edit-svgrepo-com.svg',
                        height: 20,
                        width: 20,),
                    ],
                  ),
                ),
                OtherDetailsDivider(),
                Padding(
                  padding: const EdgeInsets.only(left: 16.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('IBAN', style: ThemeStyles.otherDetailsSecondary,),
                      SizedBox(height: 5.0,),
                      Text('DE56 3982 1283 2339 39', style: ThemeStyles.otherDetailsPrimary,),
                    ],
                  ),
                ),
                OtherDetailsDivider(),
                Padding(
                  padding: const EdgeInsets.only(left: 16.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('BIC', style: ThemeStyles.otherDetailsSecondary,),
                      SizedBox(height: 5.0,),
                      Text('DUISDE33XX', style: ThemeStyles.otherDetailsPrimary,),
                    ],
                  ),
                ),
                OtherDetailsDivider(),
                Padding(
                  padding: const EdgeInsets.only(left: 16.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('Posting Key', style: ThemeStyles.otherDetailsSecondary,),
                      SizedBox(height: 5.0,),
                      Text('247', style: ThemeStyles.otherDetailsPrimary,),
                    ],
                  ),
                ),
                OtherDetailsDivider(),
                Padding(
                  padding: const EdgeInsets.only(left: 16.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('Purpose Code', style: ThemeStyles.otherDetailsSecondary,),
                      SizedBox(height: 5.0,),
                      Text('GLOB', style: ThemeStyles.otherDetailsPrimary,),
                    ],
                  ),
                ),
                OtherDetailsDivider(),
                Padding(
                  padding: const EdgeInsets.only(left: 16.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('SEPA Reference', style: ThemeStyles.otherDetailsSecondary,),
                      SizedBox(height: 5.0,),
                      Text('DE56 3982 1283 2339 39', style: ThemeStyles.otherDetailsPrimary,),
                    ],
                  ),
                ),
                AddNote(),




              ],
            ),
          ],
        ),
      ),
    );
  }

  void _onPressed() {
    Navigator.of(context).pop();
  }
}
