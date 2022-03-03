import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

const kPrimaryColor = Color(0xff312b47);
const kSecondaryColor = Color(0xff653ff4);
const kDefaultColor = Color(0xffffffff);
const kDarkColor = Color(0xff000000);

// cards detail

List<CardModel> card = [
  CardModel(
    cardType: 'Debit card',
    cardNum: '4120 **** **** 9534',
    amount: '15000',
    exprd: '06/25',
  ),
  CardModel(
    cardType: 'Credit card',
    cardNum: '4011 **** **** 4124',
    amount: "1000",
    exprd: '02/23',
  ),
];

class CardModel {
  String cardType;
  String cardNum;
  String exprd;
  String amount;

  CardModel({
    required this.cardType,
    required this.cardNum,
    required this.amount,
    required this.exprd,
  });
}

//////////////////////////////////////////////// page indicator ///////////////////////////
///
///
///
///
///'''''''''''''''''''''''''''''''' imd'''''''''''''''''''''''''''''''''

AnimatedSmoothIndicator smoothPageIndicator(int activeIndex) {
  return AnimatedSmoothIndicator(
    count: card.length,
    activeIndex: activeIndex,
    effect: const JumpingDotEffect(
      dotColor: Colors.grey,
      dotHeight: 10.0,
      dotWidth: 10.0,
      activeDotColor: kDarkColor,
    ),
  );
}
