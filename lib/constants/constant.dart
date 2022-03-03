import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

const kPrimaryColor = Color(0xff312b47);
const kSecondaryColor = Color(0xff653ff4);
const kDefaultColor = Color(0xffffffff);
const kDarkColor = Color(0xff000000);
const kDarkDefaultColor = Color(0xfff5f5f5);

// cards detail

List<CardModel> card = [
  CardModel(
    cardType: 'Debit card',
    cardNum: '4120 **** **** 9534',
    amount: '15000',
    exprd: '06/25',
    id: 1,
  ),
  CardModel(
    cardType: 'Credit card',
    cardNum: '4011 **** **** 4124',
    amount: "1000",
    exprd: '02/23',
    id: 2,
  ),
];

class CardModel {
  String cardType;
  String cardNum;
  String exprd;
  String amount;
  int id;

  CardModel({
    required this.cardType,
    required this.cardNum,
    required this.amount,
    required this.exprd,
    required this.id,
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

//////////////////////////////////////////////// model des transactions ///////////////////////////
///
///
///
///
///'''''''''''''''''''''''''''''''' youoo'''''''''''''''''''''''''''''''''

class Transactions {
  String imageUrl;
  String title;
  String subTitle;
  String detail;
  int amount;

  Transactions({
    required this.imageUrl,
    required this.title,
    required this.subTitle,
    required this.amount,
    required this.detail,
  });
}

//////////////////////////////////////////////// List of transactions ///////////////////////////
///
///
///
///
///'''''''''''''''''''''''''''''''' imd'''''''''''''''''''''''''''''''''

List<Transactions> transactions = [
  Transactions(
    imageUrl: 'images/netflix.jpg',
    title: 'Netflix',
    subTitle: 'movie, films',
    amount: 40,
    detail: '3 days ago',
  ),
  Transactions(
    imageUrl: 'images/amazon.jpg',
    title: 'Amazon',
    subTitle: 'movie, films',
    amount: 29,
    detail: ' 3 min ago',
  ),
  Transactions(
    imageUrl: 'images/ali.jpg',
    title: 'Alibaba',
    subTitle: 'Shoes, Truck',
    amount: 300,
    detail: '15 days ago',
  ),
  Transactions(
    imageUrl: 'images/netflix.jpg',
    title: 'Netflix',
    subTitle: 'movie, films',
    amount: 40,
    detail: '3 days ago',
  ),
];
