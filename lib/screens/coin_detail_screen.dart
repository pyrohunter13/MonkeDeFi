// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors, duplicate_ignore, unnecessary_new, sized_box_for_whitespace, deprecated_member_use

import 'dart:math';

import 'package:flutter/services.dart';
import 'package:wykmonke/models/models.dart';
import 'package:wykmonke/widgets/widgets.dart';
import 'package:flutter/material.dart';

import 'package:wykmonke/models/fetch_coins_models.dart';
import 'package:intl/intl.dart';

class CoinDetailScreen extends StatelessWidget {
  final DataModel coin;
  const CoinDetailScreen({
    Key? key,
    required this.coin,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Random random = Random();
    int next(int min, int max) => random.nextInt(max - min);
    var coinIconUrl =
        "https://raw.githubusercontent.com/spothq/cryptocurrency-icons/master/128/color/";
    var coinPrice = coin.quoteModel.usdModel;
    DateTime parseDate = new DateFormat("yyyy-MM-dd'T'HH:mm:ss.SSS'Z'")
        .parse(coinPrice.lastUpdated);
    var inputDate = DateTime.parse(parseDate.toString());
    var outputFormat = DateFormat('MM/dd/yyyy hh:mm a');
    var outputDate = outputFormat.format(inputDate);
    var data = [
      ChartData(next(110, 140), 1),
      ChartData(next(9, 41), 2),
      ChartData(next(140, 200), 3),
      ChartData(coinPrice.percentChange_24h, 4),
      ChartData(coinPrice.percentChange_1h, 5),
      ChartData(next(110, 140), 6),
      ChartData(next(9, 41), 7),
      ChartData(next(140, 200), 8),
      ChartData(coinPrice.percentChange_24h, 9),
      ChartData(coinPrice.percentChange_1h, 10),
      ChartData(next(110, 140), 12),
      ChartData(next(9, 41), 13),
      ChartData(coinPrice.percentChange_1h, 14),
      ChartData(next(9, 41), 15),
      ChartData(next(140, 200), 16),
      ChartData(coinPrice.percentChange_24h, 17),
      ChartData(coinPrice.percentChange_1h, 18),
      ChartData(next(110, 140), 19),
      ChartData(next(9, 41), 20),
      ChartData(next(140, 200), 21),
      ChartData(coinPrice.percentChange_24h, 22),
      ChartData(next(110, 140), 23),
    ];

    return Scaffold(
      backgroundColor: Colors.grey,
      body: CustomScrollView(
        slivers: [
          CoinDetailAppBar(coin: coin, coinIconUrl: coinIconUrl),
          CoinRandomedChartWidget(
              coinPrice: coinPrice, outputDate: outputDate, data: data),
          SliverToBoxAdapter(
            child: Container(
              //             decoration: new BoxDecoration(
              //   color: Colors.green
              // ),
              height: 600,
              child: Column(
                
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  // CoinRandomedChartWidget(coinPrice: coinPrice, outputDate: outputDate, data: data),
                  Container(
                    margin: const EdgeInsets.symmetric(horizontal: 16.0),
                    height: 400.0,
                    width: double.infinity,
                    child: Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Text(
                              "Circulating Supply: ",
                              style: Theme.of(context).textTheme.subtitle1,
                            ),
                            Text(
                              coin.circulatingSupply.toString(),
                              style: Theme.of(context).textTheme.headline6,
                            ),
                          ],
                        ),
                        const SizedBox(height: 8.0),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Text(
                              "Max Supply: ",
                              style: Theme.of(context).textTheme.subtitle1,
                            ),
                            Text(
                              coin.maxSupply.toString(),
                              style: Theme.of(context).textTheme.headline6,
                            ),
                          ],
                        ),
                        const SizedBox(height: 8.0),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Text(
                              "Market pairs: ",
                              style: Theme.of(context).textTheme.subtitle1,
                            ),
                            Text(
                              coin.numMarketPairs.toString(),
                              style: Theme.of(context).textTheme.headline6,
                            ),
                          ],
                        ),
                        const SizedBox(height: 8.0),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Text(
                              "Market Cap: ",
                              style: Theme.of(context).textTheme.subtitle1,
                            ),
                            Text(
                              coin.quoteModel.usdModel.marketCap
                                  .toStringAsFixed(2),
                              style: Theme.of(context).textTheme.headline6,
                            ),
                          ],
                        ),
                        const SizedBox(height: 8.0),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
          SliverToBoxAdapter(
            child:Container(
                          margin: const EdgeInsets.fromLTRB(50, 10, 50, 100),
                          padding: const EdgeInsets.all(25),
                          decoration: BoxDecoration(
                            border: Border.all(color: Colors.white)
                          ),

                          child: Column(
                            children: [
                              Align(
                                alignment: Alignment.centerLeft,
                                child: Column(
                                  children: [
                                    Text(coin.name,
                                    textAlign: TextAlign.left,
                                    style: TextStyle(
                                    color: Colors.white),),
                                  ],
                                ),
                              ),

                              Align(
                                alignment: Alignment.centerRight,
                                child: Column(
                                  children: [
                                    Text('Balance',
                                    textAlign: TextAlign.right,
                                    style: TextStyle(
                                    color: Colors.white),),

                                    Text(coin.symbol,
                                    textAlign: TextAlign.right,
                                    style: TextStyle(
                                    color: Colors.white),),

                                    SizedBox(height: 10,)
                                  ],
                                ),
                              ),

                              TextField(
                                decoration: new InputDecoration(labelText: "0.0", fillColor: Colors.white, filled: true),
                                keyboardType: TextInputType.number,
                                inputFormatters: <TextInputFormatter>[
                                    FilteringTextInputFormatter.digitsOnly
                                ], // Only numbers can be entered
                              ),

                              SizedBox(height: 50,),

                              Align(
                                alignment: Alignment.centerLeft,
                                child: Column(
                                  children: [
                                    Text('WAYAK MONKE',
                                    textAlign: TextAlign.left,
                                    style: TextStyle(
                                    color: Colors.white),),
                                  ],
                                ),
                              ),

                              Align(
                                alignment: Alignment.centerRight,
                                child: Column(
                                  children: [
                                    Text('Rate',
                                    textAlign: TextAlign.right,
                                    // ignore: prefer_const_constructors
                                    style: TextStyle(
                                    color: Colors.white),),

                                    Text('1WYK:100'+ coin.symbol,
                                    textAlign: TextAlign.right,
                                    // ignore: prefer_const_constructors
                                    style: TextStyle(
                                    color: Colors.white),),

                                    SizedBox(height: 10,)
                                  ],
                                ),
                              ),

                              TextField(
                              decoration: new InputDecoration(labelText: "0.0", fillColor: Colors.white, filled: true),
                              keyboardType: TextInputType.number,
                              inputFormatters: <TextInputFormatter>[
                                  FilteringTextInputFormatter.digitsOnly
                              ], // Only numbers can be entered
                              ),
                            ],
                          ),
                        ),
          ),
          SliverToBoxAdapter(
                    child: Align(
                        alignment: Alignment.bottomCenter,
                        child: RaisedButton(
                          onPressed: () {
                            // Navigator.push(
                            //   context,
                            //   MaterialPageRoute(builder: (context) => const genre()),
                            // );
                          },
                          shape: StadiumBorder(),
                          color: Colors.white,
                          child: Container(
                            padding: EdgeInsets.symmetric(vertical: 10, horizontal: 70),
                            decoration: ShapeDecoration(
                              shape: StadiumBorder(),
                            ),
                            child: Text(
                              "SWAP",
                              style: TextStyle(
                                fontSize: 50,
                                color: Colors.black,
                                fontWeight: FontWeight.bold,
                                fontStyle: FontStyle.italic,
                                fontFamily: 'Open Sans'),
                            ),
                          ),
                        ),
                      ),
        )
        ],
      ),
    );
  }
}