// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, file_names, prefer_const_constructors_in_immutables, prefer_typing_uninitialized_variables, unused_local_variable, avoid_unnecessary_containers

import 'package:flutter/material.dart';
import 'package:wykmonke/models/big_data_model.dart';
import 'package:wykmonke/repository/repository.dart';
import 'package:wykmonke/widgets/widgets.dart';

class MonkeWorldPage extends StatefulWidget {
  MonkeWorldPage({Key? key}) : super(key: key);

  @override
  State<MonkeWorldPage> createState() => _MonkeWorldPageState();
}

class _MonkeWorldPageState extends State<MonkeWorldPage> {
  late Future<BigDataModel> _futureCoins;
  late Repository repository;
  @override
  void initState() {
    repository = Repository();
    _futureCoins = repository.getCoins();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<BigDataModel>(
      future: _futureCoins,
      builder: (context, snapshot) {
        if (snapshot.connectionState == ConnectionState.done) {
          if (snapshot.hasData) {
            var coinsData = snapshot.data!.dataModel;
            return CoinListWidget(coins: coinsData);
          } else if (snapshot.hasError) {
            return Text('${snapshot.error}');
          }
        }

        return Center(
          child: CircularProgressIndicator(),
        );
      },
    );
  }

//   return Scaffold(
//     backgroundColor: Colors.grey[900],
//     body: Container(
//       child: Column(
//       children: [
//         Container(
//             margin: const EdgeInsets.fromLTRB(50, 10, 50, 100),
//             padding: const EdgeInsets.all(25),
//             decoration: BoxDecoration(
//               border: Border.all(color: Colors.white)
//             ),

//             child: Column(
//               children: [
//                 Align(
//                   alignment: Alignment.centerLeft,
//                   child: Column(
//                     children: [
//                       Text('ETHEREUM',
//                       textAlign: TextAlign.left,
//                       style: TextStyle(
//                       color: Colors.white),),
//                     ],
//                   ),
//                 ),

//                 Align(
//                   alignment: Alignment.centerRight,
//                   child: Column(
//                     children: [
//                       Text('Balance',
//                       textAlign: TextAlign.right,
//                       style: TextStyle(
//                       color: Colors.white),),

//                       Text("${myData} ETH",
//                       textAlign: TextAlign.right,
//                       style: TextStyle(
//                       color: Colors.white),),

//                       SizedBox(height: 10,)
//                     ],
//                   ),
//                 ),

//                 TextField(
//                   decoration: new InputDecoration(labelText: "0.0", fillColor: Colors.white, filled: true),
//                   keyboardType: TextInputType.number,
//                   inputFormatters: <TextInputFormatter>[
//                       FilteringTextInputFormatter.digitsOnly
//                   ], // Only numbers can be entered
//                 ),

//                 SizedBox(height: 50,),

//                 Align(
//                   alignment: Alignment.centerLeft,
//                   child: Column(
//                     children: [
//                       Text('WAYAK MONKE',
//                       textAlign: TextAlign.left,
//                       style: TextStyle(
//                       color: Colors.white),),
//                     ],
//                   ),
//                 ),

//                 Align(
//                   alignment: Alignment.centerRight,
//                   child: Column(
//                     children: [
//                       Text('Rate',
//                       textAlign: TextAlign.right,
//                       style: TextStyle(
//                       color: Colors.white),),

//                       Text('1WYK:100ETH',
//                       textAlign: TextAlign.right,
//                       style: TextStyle(
//                       color: Colors.white),),

//                       SizedBox(height: 10,)
//                     ],
//                   ),
//                 ),

//                 TextField(
//                 decoration: new InputDecoration(labelText: "0.0", fillColor: Colors.white, filled: true),
//                 keyboardType: TextInputType.number,
//                 inputFormatters: <TextInputFormatter>[
//                     FilteringTextInputFormatter.digitsOnly
//                 ], // Only numbers can be entered
//                 ),
//               ],
//             ),
//           ),

//         Align(
//             alignment: Alignment.bottomCenter,
//             child: RaisedButton(
//               onPressed: () {
//                 // Navigator.push(
//                 //   context,
//                 //   MaterialPageRoute(builder: (context) => const genre()),
//                 // );
//               },
//               shape: StadiumBorder(),
//               color: Colors.white,
//               child: Container(
//                 padding: EdgeInsets.symmetric(vertical: 10, horizontal: 70),
//                 decoration: ShapeDecoration(
//                   shape: StadiumBorder(),
//                 ),
//                 child: Text(
//                   "SWAP",
//                   style: TextStyle(
//                     fontSize: 50,
//                     color: Colors.black,
//                     fontWeight: FontWeight.bold,
//                     fontStyle: FontStyle.italic,
//                     fontFamily: 'Open Sans'),
//                 ),
//               ),
//             ),
//           ),
//       ],
//       ),
//     ),
//   );
}
