import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../constants/constant.dart';

class Transaction extends StatelessWidget {
  const Transaction({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 20.0),
          child: Text(
            'Transactions',
            style: GoogleFonts.poppins(
              color: kDarkColor,
              fontSize: 20.0,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        const SizedBox(
          height: 10.0,
        ),
        Container(
          height: 200.0,
          child: ListView.builder(
            itemCount: transactions.length,
            itemBuilder: (context, int index) {
              final trans = transactions[index];

              return ListTile(
                leading: Container(
                  width: 60.0,
                  height: 60.0,
                  decoration: BoxDecoration(
                      color: kDarkColor,
                      borderRadius: BorderRadius.circular(5.0),
                      image: DecorationImage(
                        image: AssetImage(
                          trans.imageUrl,
                        ),
                        fit: BoxFit.cover,
                      )),
                ),
                title: Text(
                  trans.title,
                  style: GoogleFonts.poppins(
                    fontWeight: FontWeight.bold,
                  ),
                ),
                subtitle: Text(trans.subTitle),
                trailing: Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Text(
                      trans.amount.toString(),
                      style: GoogleFonts.poppins(
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text(trans.detail),
                  ],
                ),
              );
            },
          ),
        )
      ],
    );
  }
}
