import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../constants/constant.dart';

class Bottom_navi extends StatelessWidget {
  const Bottom_navi({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 80.0,
      // width: 60.0,
      padding: const EdgeInsets.symmetric(vertical: 10.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: const [
              FaIcon(
                FontAwesomeIcons.wallet,
                color: kDefaultColor,
              ),
              SizedBox(width: 60.0),
              FaIcon(
                FontAwesomeIcons.circle,
                color: kDefaultColor,
              ),
              SizedBox(width: 60.0),
              FaIcon(
                FontAwesomeIcons.dashcube,
                color: kDefaultColor,
              ),
              SizedBox(width: 60.0),
              FaIcon(
                FontAwesomeIcons.sun,
                color: kDefaultColor,
              )
            ],
          ),
          Container(
            width: 130.0,
            height: 5.0,
            decoration: BoxDecoration(
              color: kDefaultColor,
              borderRadius: BorderRadius.circular(10.0),
            ),
          )
        ],
      ),
    );
  }
}
