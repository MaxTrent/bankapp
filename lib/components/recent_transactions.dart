import 'package:bankapp_ui/themes/theme_styles.dart';
import 'package:flutter/material.dart';
import '../widgets/transaction_card.dart';



class RecentTransactions extends StatefulWidget {
  const RecentTransactions({Key? key}) : super(key: key);

  @override
  State<RecentTransactions> createState() => _RecentTransactionsState();
}

class _RecentTransactionsState extends State<RecentTransactions> {
  @override
  Widget build(BuildContext context) {
    return Expanded(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.fromLTRB(15, 25, 20, 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('Recent Transactions',
                  style: ThemeStyles.primaryTitle,),
                  Text('See All',
                  style: ThemeStyles.seeAll,),
                ],
              ),
            ),
            Flexible(
                flex: 1,
                child: ListView(
                  shrinkWrap: true,
                  scrollDirection: Axis.vertical,
                  children: [
                    TransactionCard(
                      color: Colors.black,
                      letter: 'M',
                      title: 'Max Ltd.',
                      subTitle: 'Max Kit',
                      price: '- NGN 355,000',
                    ),
                    TransactionCard(
                      color: Colors.teal,
                      letter: 'B',
                      title: 'Bordon.io',
                      subTitle: 'Bordon Page',
                      price: '- NGN 250,000',
                    ),
                    TransactionCard(
                      color: Colors.redAccent,
                      letter: 'F',
                      title: 'Frank Moss',
                      subTitle: 'Hotel Booking',
                      price: '- NGN 125,000',
                    ),
                    TransactionCard(
                      color: Colors.amber,
                      letter: 'C',
                      title: 'Crenshaw Airlines',
                      subTitle: 'Flight Ticket',
                      price: '- NGN 215,000',
                    ),
                    TransactionCard(
                      color: Colors.deepOrange,
                      letter: 'A',
                      title: 'Ante Club',
                      subTitle: 'Drinks',
                      price: '- NGN 45,000',
                    ),

                  ],
                ))
          ],
        ));
  }
}
