// ignore_for_file: file_names, prefer_const_constructors, prefer_const_literals_to_create_immutables, deprecated_member_use, unnecessary_new, sized_box_for_whitespace, unused_local_variable
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
  final myAddress = "0x1F5F2dda3cF06C72eF04bC31b29D2f66D4848435";
  int myAmount = 0;

  var myData;

  @override
  void initState() {
    super.initState();
    httpClient = Client();
    ethClient = Web3Client(
        'https://rinkeby.infura.io/v3/e71a048894e046329a51520bc9fd2d25',
        httpClient);
    getBalance(myAddress);
  }

  Future<DeployedContract> loadContract() async {
    String abi = await rootBundle.loadString("assets/abi.json");
    String contractAddress = "0x1053Fd5f4FEd104e2CE09785F63903371271fa2b";

    final contract = DeployedContract(
        ContractAbi.fromJson(abi, "WayakSmartContract"),
        EthereumAddress.fromHex(contractAddress));
    return contract;
  }

  Future<List<dynamic>> query(String functionName, List<dynamic> args) async {
    final contract = await loadContract();
    final ethFunction = contract.function(functionName);
    final result = await ethClient.call(
        contract: contract, function: ethFunction, params: args);
    return result;
  }

  Future<void> getBalance(String targetAddress) async {
    EthereumAddress address = EthereumAddress.fromHex(targetAddress);
    List<dynamic> result = await query("getBalance", []);
    myData = result[0];
    data = true;
    setState(() {});
  }
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey,
      body: ZStack([
        VxBox()
            .gray800
            .size(context.screenWidth, context.percentHeight * 30)
            .make(),
        VStack([
          (context.percentHeight * 10).heightBox,
          "\$ WAYAK MONKE".text.xl4.white.bold.center.makeCentered().py16(),
          (context.percentHeight).heightBox,
          VxBox(
                  child: VStack([
            "Balance".text.gray700.xl2.semiBold.makeCentered(),
            10.heightBox,
            data
                ? "${myData} WYK".text.bold.xl6.makeCentered()
                : CircularProgressIndicator().centered().shimmer()
          ]))
              .white
              .size(context.percentWidth * 1000, context.percentHeight * 18)
              .rounded
              .shadowXl
              .make()
              .p16(),
          10.heightBox,
          HStack(
            [
              FlatButton.icon(
                      onPressed: () {
                        getBalance(myAddress);
                      },
                      color: Colors.blue,
                      shape: Vx.roundedSm,
                      icon: Icon(
                        Icons.refresh,
                        color: Colors.white,
                      ),
                      label: "Refresh".text.white.make())
                  .h(50),
              FlatButton.icon(
                      onPressed: () {},
                      color: Colors.green,
                      shape: Vx.roundedSm,
                      icon: Icon(
                        Icons.call_made_outlined,
                        color: Colors.white,
                      ),
                      label: "Deposit".text.white.make())
                  .h(50),
              FlatButton.icon(
                      onPressed: () {
                        Navigator.pushNamed(context, '/withdraw');
                      },
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
