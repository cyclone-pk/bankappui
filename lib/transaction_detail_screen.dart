import 'package:bank_app_ui/colors.dart';
import 'package:bank_app_ui/home_screen.dart';
import 'package:bank_app_ui/login_screen.dart';
import 'package:flutter/material.dart';

class TransactionDetailScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.BACK_GROUND_COLOR,
      appBar: AppBar(
        backgroundColor: AppColors.BACK_GROUND_COLOR,
        elevation: 0.0,
        leading: Icon(Icons.arrow_back_ios_outlined, size: 30, color: Colors.black),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 20),
            child: Icon(
              Icons.search,
              size: 30,
              color: Colors.black,
            ),
          )
        ],
      ),
      body: Stack(
        children: [
          SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: EdgeInsets.only(top: 20, left: 30),
                  child: Text(
                    "Recent Transactions",
                    style: TextStyle(fontSize: 20, color: AppColors.MAIN_COLOR, fontWeight: FontWeight.bold),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 20, left: 30, right: 30),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        height: 36,
                        width: 90,
                        child: Center(
                          child: Text(
                            "All",
                            style: TextStyle(color: Colors.white),
                          ),
                        ),
                        decoration: BoxDecoration(color: AppColors.MAIN_COLOR, borderRadius: BorderRadius.circular(12)),
                      ),
                      Container(
                        height: 36,
                        width: 90,
                        child: Center(
                          child: Text(
                            "Expenses",
                            style: TextStyle(color: Colors.black.withOpacity(0.4)),
                          ),
                        ),
                        decoration: BoxDecoration(color: Colors.white, borderRadius: BorderRadius.circular(12)),
                      ),
                      Container(
                        height: 36,
                        width: 90,
                        child: Center(
                          child: Text(
                            "Income",
                            style: TextStyle(color: Colors.black.withOpacity(0.4)),
                          ),
                        ),
                        decoration: BoxDecoration(color: Colors.white, borderRadius: BorderRadius.circular(12)),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(top: 20, left: 30),
                  child: Text(
                    "Today",
                    style: TextStyle(
                      fontSize: 18,
                      color: AppColors.MAIN_COLOR,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                PaymentDetail(
                  icon: Icons.local_atm,
                  title: "Payment",
                  subTitle: "Payment Received from client",
                ),
                SizedBox(
                  height: 60,
                ),
                Center(
                  child: CircleAvatar(
                    radius: 30,
                    backgroundImage: AssetImage("images/2.JPG"),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(top: 20, left: 50, right: 50),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      CircleAvatar(
                        radius: 30,
                        backgroundImage: AssetImage("images/2.JPG"),
                      ),
                      CircleAvatar(
                        radius: 30,
                        backgroundImage: AssetImage("images/2.JPG"),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(top: 70, left: 60, right: 60),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      CircleAvatar(
                        radius: 30,
                        backgroundImage: AssetImage("images/2.JPG"),
                      ),
                      CircleAvatar(
                        radius: 30,
                        backgroundImage: AssetImage("images/2.JPG"),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                CustomButton(
                  onPressed: () {},
                  label: "See Detail",
                )
              ],
            ),
          ),
          Positioned(
            bottom: 100,
            left: 100,
            right: 100,
            child: Container(
              height: 180,
              width: 180,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    height: 100,
                    width: 100,
                    decoration: BoxDecoration(shape: BoxShape.circle, border: Border.all(color: AppColors.MAIN_COLOR, width: 4)),
                    child: Container(
                      margin: EdgeInsets.all(2),
                      child: CircleAvatar(
                        radius: 60,
                        backgroundColor: Colors.black,
                        backgroundImage: AssetImage("images/1.JPG"),
                      ),
                    ),
                  )
                ],
              ),
              decoration: BoxDecoration(shape: BoxShape.circle, border: Border.all(color: Color(0xffC8CBE8), width: 15)),
            ),
          )
        ],
      ),
    );
  }
}

// lets join all the screen
