import 'package:flutter/material.dart';
import 'package:payment_dash/custom_widget/custom_appbar.dart';

import '../constants/constant.dart';

class Custom_background extends StatelessWidget {
  Widget child;
  Custom_background({Key? key, required this.child}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kPrimaryColor,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Container(
            child: Column(
              children: [
                const Custom_head(),
                Container(
                  width: MediaQuery.of(context).size.width,
                  margin: EdgeInsets.zero,

                  // width: double.infinity,
                  // height: 800.0,
                  height: MediaQuery.of(context).size.height,
                  decoration: const BoxDecoration(
                    color: kDefaultColor,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(40.0),
                      topRight: Radius.circular(40.0),
                    ),
                  ),

                  child: child,
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
