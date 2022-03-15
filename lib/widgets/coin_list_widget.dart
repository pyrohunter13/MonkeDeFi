// ignore_for_file: prefer_const_constructors

import 'package:wykmonke/models/chart_data_model.dart';
import 'package:wykmonke/models/fetch_coins_models.dart';
import 'package:wykmonke/screens/coin_detail_screen.dart';

import 'package:wykmonke/widgets/coin_logo_widget.dart';
import 'package:wykmonke/widgets/widgets.dart';

import 'package:flutter/material.dart';

class CoinListWidget extends StatelessWidget {
  final List<DataModel> coins;

  const CoinListWidget({
    Key? key,
    required this.coins,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding:
                const EdgeInsets.symmetric(horizontal: 24.0, vertical: 16.0),
            child: Text(
              "Monke Market",
              style: Theme.of(context).textTheme.headline5,
            ),
          ),
          const SizedBox(
            height: 8.0,
          ),
          Expanded(
            child: ListView.builder(
              itemExtent: 160,
              itemCount: coins.length,
              itemBuilder: (context, index) {
                var coin = coins[index];
                var coinPrice = coin.quoteModel.usdModel;
                var data = [
                  ChartData(coinPrice.percentChange_90d, 2160),
                  ChartData(coinPrice.percentChange_60d, 1440),
                  ChartData(coinPrice.percentChange_30d, 720),
                  ChartData(coinPrice.percentChange_24h, 24),
                  ChartData(coinPrice.percentChange_1h, 1),
                ];
                return GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => CoinDetailScreen(coin: coin)),
                    );
                  },
                  child: Container(
                    height: 160.0,
                    width: double.infinity,
                    padding: const EdgeInsets.symmetric(vertical: 4.0),
                    margin: const EdgeInsets.symmetric(
                        vertical: 8.0, horizontal: 16.0),
                    decoration: BoxDecoration(
                      color: Color.fromRGBO(0, 0, 0, 0.6),
                      borderRadius: BorderRadius.circular(16.0),
                    ),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        CoinLogoWidget(coin: coin),
                        CoinChartWidget(
                          data: data,
                          coinPrice: coinPrice,
                          color: Colors.white,
                        ),
                      ],
                    ),
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
