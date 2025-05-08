// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:deliveryapp/cubit/cubit-search/search_cubit.dart';
import 'package:deliveryapp/data/dummy_data.dart';
import 'package:deliveryapp/helper/getresponsivefontsize.dart';
import 'package:deliveryapp/widget/custom-appbar-home.dart';
import 'package:deliveryapp/widget/custom-bottom-navigationbar.dart';
import 'package:deliveryapp/widget/custom-categories-one.dart';
import 'package:deliveryapp/widget/custom-categories-three.dart';
import 'package:deliveryapp/widget/custom-categories-two.dart';
import 'package:deliveryapp/widget/custom-title-one.dart';
import 'package:deliveryapp/widget/custom-title-two.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;
    return BlocProvider(
      create: (context) => SearchCubit(),
      child: Builder(
        builder: (context) {
          return Scaffold(
            backgroundColor: Color(0xFFF5F5F5),
            appBar: PreferredSize(
              preferredSize: Size.fromHeight(screenHeight * 0.07),
              child: CustomAppbarHome(),
            ),
            body: BlocBuilder<SearchCubit, SearchState>(
              builder: (context, state) {
                if (state is SearchInitial) {
                  return ListView(
                    physics: NeverScrollableScrollPhysics(),
                    children: [
                      // Custom Title One:-
                      CustomTitleOne(),
                      // Categories One :-
                      SizedBox(
                        height: screenHeight * 0.131,
                        child: ListView.builder(
                          scrollDirection: Axis.horizontal,
                          itemCount: categoriesDataOne.length,
                          itemBuilder: (context, i) {
                            return
                            //Custom Categories One:-
                            CustomCategoriesOne(
                              color: categoriesDataOne[i].color,
                              imagePath: categoriesDataOne[i].imagePath,
                              text: categoriesDataOne[i].text,
                            );
                          },
                        ),
                      ),

                      //  Custom Title Two :-
                      CustomTitleTwo(text: "Productos populares"),
                      SizedBox(height: screenWidth * 0.01),
                      // Categories Two :-
                      SizedBox(
                        height: screenHeight * 0.312,
                        child: ListView.builder(
                          scrollDirection: Axis.horizontal,
                          itemCount: categoriesDataTwo.length,
                          itemBuilder: (context, i) {
                            return
                            //Custom Categories Two:-
                            CustomCategoriesTwo(
                              imagePath: categoriesDataTwo[i].imagePath,
                              text1: categoriesDataTwo[i].textone,
                              text2: categoriesDataTwo[i].texttwo,
                              text3: categoriesDataTwo[i].textthree,
                            );
                          },
                        ),
                      ),
                      // Custom Title Two:-
                      CustomTitleTwo(text: "Recommendados"),
                      SizedBox(height: screenWidth * 0.014),
                      // Categories Three :-
                      SizedBox(
                        height: screenHeight * 0.32,

                        child: ListView.builder(
                          scrollDirection: Axis.horizontal,
                          itemCount: categoriesDataThree.length,
                          itemBuilder: (context, i) {
                            return CustomCategoriesThree(
                              imagePath: categoriesDataThree[i].imagePath,
                              text1: categoriesDataThree[i].textone,
                              text2: categoriesDataThree[i].texttwo,
                              text3: categoriesDataThree[i].textthree,
                              text4: categoriesDataThree[i].textfour,
                            );
                          },
                        ),
                      ),
                    ],
                  );
                } else if (state is SearchResults) {
                  // عرض نتائج البحث
                  final results = state.results;
                  if (results.isEmpty) {
                    return Center(child: Text("No results found"));
                  }
                  return ListView(
                    children: [
                      // Custom Title Two :-
                      CustomTitleTwo(text: " Result of Search :"),
                      SizedBox(height: screenWidth * 0.01),
                      // Categories Two :-
                      SizedBox(
                        height: screenHeight * 0.30,
                        child: ListView.builder(
                          scrollDirection: Axis.horizontal,
                          itemCount: results.length,
                          itemBuilder: (context, i) {
                            return CustomCategoriesTwo(
                              imagePath: categoriesDataTwo[i].imagePath,
                              text1: results[i].textone,
                              text2: results[i].texttwo,
                              text3: categoriesDataTwo[i].textthree,
                            );
                          },
                        ),
                      ),
                    ],
                  );
                } else if (state is SearchNoResults) {
                  // Show no results found
                  return Center(
                    child: Text(
                      "No results found",
                      style: TextStyle(
                        fontSize: getResponsiveFontSize(fontSize: 15),
                      ),
                    ),
                  );
                } else {
                  // Default loading state
                  return Center(child: Container());
                }
              },
            ),
            // botom navigation bar :-
            bottomNavigationBar: CustomBottomNavBar(
              currentIndex: _currentIndex,
              onTap: (index) {
                setState(() {
                  _currentIndex = index;
                });

                if (index == 0) {
                  Navigator.of(
                    context,
                  ).pushNamedAndRemoveUntil("homepage", (route) => false);
                } else if (index == 2) {
                  Navigator.of(
                    context,
                  ).pushNamedAndRemoveUntil("carritoonepage", (route) => false);
                } else if (index == 3) {}
              },
            ),
          );
        },
      ),
    );
  }
}
