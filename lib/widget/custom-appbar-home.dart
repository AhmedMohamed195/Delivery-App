// ignore_for_file: prefer_const_constructors

import 'package:deliveryapp/cubit/cubit-search/search_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CustomAppbarHome extends StatefulWidget {
  const CustomAppbarHome({super.key});

  @override
  State<CustomAppbarHome> createState() => _CustomAppbarHomeState();
}

class _CustomAppbarHomeState extends State<CustomAppbarHome> {
  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;
    return AppBar(
      backgroundColor: Colors.white,
      elevation: 0.8,
      // centerTitle: true,
      title: Padding(
        padding: EdgeInsets.only(top: screenHeight * 0.01),
        child: Row(
          children: [
            // TextFormField :-
            Expanded(
              child: Container(
                height: screenHeight * 0.048,
                margin: EdgeInsets.only(top: 0),
                padding: EdgeInsets.symmetric(horizontal: screenWidth * 0.025),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(screenWidth * 0.025),
                  border: Border.all(color: Colors.grey),
                ),
                child: TextField(
                  onChanged: (value) {
                    context.read<SearchCubit>().search(value);
                  },

                  decoration: InputDecoration(
                    hintText: 'Buscar',
                    hintStyle: TextStyle(color: Color(0xffE2EDF2)),
                    border: InputBorder.none,
                    icon: Icon(Icons.search, color: Color(0xff5117AC)),
                  ),
                ),
              ),
            ),

            SizedBox(width: screenWidth * 0.05),
            // title :-
            Text(
              "Inicio",
              style: TextStyle(
                fontSize: screenWidth * 0.08,
                color: Color(0xff5117AC),
              ),
            ),
            SizedBox(width: screenWidth * 0.06),
            // icons :-
            Row(
              children: [
                IconButton(
                  onPressed: () {},
                  icon: Image.asset(
                    'lib/images/noun_notification_2184935.png',
                    height: screenHeight * 0.028,
                    width: screenWidth * 0.05,
                  ),
                  padding: EdgeInsets.zero,
                  constraints: BoxConstraints(),
                ),
                //SizedBox(width: 1),
                IconButton(
                  onPressed: () {},
                  icon: Image.asset(
                    'lib/images/Group 2522.png',
                    height: screenHeight * 0.028,
                    width: screenWidth * 0.055,
                  ),
                  constraints: BoxConstraints(),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
