import 'package:flutter/material.dart';
import 'package:product_displaying/app/constant.dart';
import 'package:product_displaying/model/entity.dart';
import 'package:product_displaying/presintatson/screen/datiles_screen.dart';
import 'package:product_displaying/presintatson/widget/product_cart.dart';

class HomeBody extends StatelessWidget {
  const HomeBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SizedBox(
          height: 10,
        ),
        Expanded(
          child: Stack(
            children: [
              //container 1//
              Container(
                margin: EdgeInsets.only(top: 50),
                decoration: const BoxDecoration(
                    color: kBackgroundColor,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(40),
                      topRight: Radius.circular(40),
                    )),
              ),
              //container 2//
              ListView.builder(
                  itemCount: products.length,
                  itemBuilder: (context, index) =>
                      //index =>connect itemCount and list
                      ProductCart(
                        product: products[index],
                        press: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => DatilesScreen(product: products[index],)));
                        },
                      )),
            ],
          ),
        )
      ],
    );
  }
}
