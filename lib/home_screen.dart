import 'package:bank_app_ui/transaction_detail_screen.dart';
import 'package:flutter/material.dart';
import 'colors.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.BACK_GROUND_COLOR,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                margin: EdgeInsets.all(20),
                height: 400,
                width: double.infinity,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(25),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    CircleAvatar(
                      radius: 60,
                      backgroundImage: AssetImage("images/2.JPG"),
                    ),
                    SizedBox(height: 15),
                    Text(
                      "IHSAN KHAN",
                      style: TextStyle(
                        fontSize: 20,
                        letterSpacing: 0.5,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(height: 05),
                    Text(
                      "Flutter Developer",
                      style: TextStyle(
                        fontSize: 16,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 40, left: 40, right: 40),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          GeneralInformation(
                            price: "\$90000",
                            label: "Income",
                          ),
                          Container(
                            height: 60,
                            width: 3,
                            color: Color(0xff20256B),
                          ),
                          GeneralInformation(
                            price: "\$400000",
                            label: "Expenses",
                          ),
                          Container(
                            height: 60,
                            width: 3,
                            color: Color(0xff20256B),
                          ),
                          GeneralInformation(
                            price: "\$15000",
                            label: "Loan",
                          ),
                          Container(
                            height: 60,
                            width: 3,
                            color: Color(0xff20256B),
                          )
                        ],
                      ),
                    )
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 20, left: 30, right: 30),
                child: Row(
                  children: [
                    Text(
                      "Overview",
                      style: TextStyle(
                        fontSize: 22,
                        fontWeight: FontWeight.bold,
                        color: Color(0xff20256B),
                      ),
                    ),
                    SizedBox(width: 10),
                    Icon(
                      Icons.notifications_active_outlined,
                      color: Colors.black,
                      size: 20,
                    ),
                    Spacer(),
                    Text(
                      "22 Dec 2020",
                      style: TextStyle(fontSize: 14, color: Color(0xff20256B)),
                    )
                  ],
                ),
              ),
              PaymentDetail(
                icon: Icons.arrow_upward_outlined,
                title: "Sent",
                subTitle: "Sending Payment to Client",
              ),
              PaymentDetail(
                icon: Icons.arrow_downward_outlined,
                title: "Receive",
                subTitle: "Receive Money From Client",
              ),
              PaymentDetail(
                icon: Icons.local_atm,
                title: "Loan",
                subTitle: "Loan Taken From Client",
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: BottomAppBar(
        child: Container(
          height: 77,
          width: double.infinity,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.only(bottomLeft: Radius.circular(45), bottomRight: Radius.circular(45)),
          ),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 30),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Icon(
                  Icons.home,
                  size: 30,
                ),
                Icon(
                  Icons.local_atm,
                  size: 30,
                ),
                InkWell(
                  onTap: () {
                    Navigator.of(context).push(MaterialPageRoute(builder: (context) => TransactionDetailScreen()));
                  },
                  child: Container(
                    height: 40,
                    width: 60,
                    child: Center(
                      child: Icon(Icons.add, color: Colors.white),
                    ),
                    decoration: BoxDecoration(color: Color(0xff20256B), borderRadius: BorderRadius.circular(15)),
                  ),
                ),
                Text(
                  "\$",
                  style: TextStyle(
                    fontSize: 30,
                    color: Colors.black,
                  ),
                ),
                Icon(
                  Icons.person,
                  size: 30,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

// second screen almost done
//lets make last screen in the name of transaction_detail_screen
class GeneralInformation extends StatelessWidget {
  final String price;
  final String label;

  GeneralInformation({this.label, this.price});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          price,
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 15,
            color: Color(0xff20256B),
          ),
        ),
        SizedBox(height: 05),
        Text(
          label,
          style: TextStyle(
            fontWeight: FontWeight.w400,
            fontSize: 15,
            color: Colors.black,
          ),
        ),
      ],
    );
  }
}

class PaymentDetail extends StatelessWidget {
  final IconData icon;
  final String title;
  final String subTitle;
  PaymentDetail({this.icon, this.title, this.subTitle});
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 20, left: 30, right: 30),
      height: 87,
      width: double.infinity,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(25),
        color: Colors.white,
      ),

      // lets arrange it
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Row(
          children: [
            Container(
              height: 55,
              width: 55,
              decoration: BoxDecoration(
                color: Color(0xffD5D8F2),
                borderRadius: BorderRadius.circular(12),
              ),
              child: Icon(icon),
            ),
            SizedBox(
              width: 20,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: 15),
                Text(
                  title,
                  style: TextStyle(
                    fontSize: 20,
                    color: Color(0xff20256B),
                    fontWeight: FontWeight.w500,
                  ),
                ),
                SizedBox(height: 05),
                Text(
                  subTitle,
                  style: TextStyle(
                    fontSize: 15,
                    color: Color(0xffA7A7A7),
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
