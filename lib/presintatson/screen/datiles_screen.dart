import 'package:flutter/material.dart';
import 'package:product_displaying/app/constant.dart';
import 'package:product_displaying/model/entity.dart';
import 'package:product_displaying/presintatson/widget/details_body.dart';

class DatilesScreen extends StatelessWidget {
  const DatilesScreen({required this.product, super.key});

  final Product product;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.purple[300],
      appBar: detailsAppBar(context),
      body: DetailsBody(product: product,),
    );
  }
}

AppBar detailsAppBar(BuildContext context) {
  return AppBar(
    backgroundColor: kBackgroundColor,
    elevation: 0,
    leading: IconButton(
      padding: EdgeInsets.only(right: kDefaultPadding),
      icon: Icon(
        Icons.arrow_back,
        color: kPrimaryColor,
      ),
      onPressed: () {
        Navigator.pop(context);
      },
    ),
    centerTitle: false,
    title: Text(
      'رجوع',
      style: Theme.of(context).textTheme.bodyText2,
    ),
  );
}
