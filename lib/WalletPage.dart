// ignore_for_file: file_names, prefer_const_constructors, prefer_const_literals_to_create_immutables, deprecated_member_use, unnecessary_new, sized_box_for_whitespace
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:http/http.dart';
import 'package:velocity_x/velocity_x.dart';
import 'package:web3dart/web3dart.dart';
import 'package:flutter/services.dart';

class WalletPage extends StatefulWidget {
  const WalletPage({Key? key}) : super(key: key);

  @override
  _WalletPageState createState() => _WalletPageState();
}

class _WalletPageState extends State<WalletPage> {
  late Client httpClient;
  late Web3Client ethClient;
  bool data = false;
  final myAddress = "";
  int myAmount = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey,
      body: ZStack([
        VxBox()
            .blue600
            .size(context.screenWidth, context.percentHeight * 30)
            .make(),
        VStack([
          (context.percentHeight * 10).heightBox,
          "\$WYK".text.xl4.white.bold.center.makeCentered().py16(),
          (context.percentHeight).heightBox,
          VxBox(
                  child: VStack([
            "Balance".text.gray700.xl2.semiBold.makeCentered(),
            10.heightBox,
            data
                ? "\$1".text.bold.xl6.makeCentered()
                : CircularProgressIndicator().centered()
          ]))
              .white
              .size(context.percentWidth * 1000, context.percentHeight * 18)
              .rounded
              .shadowXl
              .make()
              .p16(),
          30.heightBox,
          HStack(
            [
              FlatButton.icon(
                      onPressed: () {},
                      color: Colors.blue,
                      shape: Vx.roundedSm,
                      icon: Icon(
                        Icons.refresh,
                        color: Colors.white,
                      ),
                      label: "Refresh".text.white.make())
                  .h(50),
              FlatButton.icon(
                      onPressed: () {
                        
                      },
                      color: Colors.green,
                      shape: Vx.roundedSm,
                      icon: Icon(
                        Icons.call_made_outlined,
                        color: Colors.white,
                      ),
                      label: "Deposit".text.white.make())
                  .h(50),
              FlatButton.icon(
                      onPressed: () {Navigator.pushNamed(context, '/withdraw');},
                      color: Colors.red,
                      shape: Vx.roundedSm,
                      icon: Icon(
                        Icons.call_received_outlined,
                        color: Colors.white,
                      ),
                      label: "Withdraw".text.white.make())
                  .h(50)
            ],
            alignment: MainAxisAlignment.spaceAround,
            axisSize: MainAxisSize.max,
          ).p16()
        ])
      ]),
    );
  }
}

class SliderWidget {}
