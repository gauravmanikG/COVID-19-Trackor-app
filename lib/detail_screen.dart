import 'dart:core';

import 'package:covid/world_states.dart';
import 'package:flutter/material.dart';

class DetailScreen extends StatefulWidget {


  String name;
  String image;
  int totalcases ;
     int  totalDeadth ;
  int active , totalRecovered , critical ; // todayRecovered , test;

  DetailScreen({required this.name,
    required this.image,
    required this.totalcases,
  required this.totalDeadth,
  required this.active,
  // required this.todayRecovered,
  required this.critical,
    required this.totalRecovered,
  // required this.test

  });

  @override
  _DetailScreenState createState() => _DetailScreenState();
}

class _DetailScreenState extends State<DetailScreen>{
@override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.name),
        centerTitle: true,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Stack(
            alignment: Alignment.topCenter,
            children: [
              Padding(
                padding:  EdgeInsets.only(top: MediaQuery.of(context).size.height*.067),
                child: Card(
                  child: Column(
                    children: [
                      SizedBox(height:MediaQuery.of(context).size.height*.067 ,),
                      ReusableRow(title: 'Cases', value: widget.totalcases.toString()),
                      ReusableRow(title: ' Recovered', value: widget.totalRecovered.toString()),
                      ReusableRow(title: 'Death', value: widget.totalDeadth.toString()),
                      ReusableRow(title: 'Critical', value: widget.critical.toString()),
                      // ReusableRow(title: 'Today Recovered', value: widget.todayRecovered.toString()),


                    ],
                  )

                ),
              ),

              CircleAvatar(
                radius: 50,
backgroundImage: NetworkImage(widget.image),

              ),

              SizedBox(
                height: 20,
              )
            ],
          )
        ],
      ),
    );
  }

  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    throw UnimplementedError();
  }




}
