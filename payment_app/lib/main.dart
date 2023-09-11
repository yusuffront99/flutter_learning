import 'package:flutter/material.dart';
import 'package:payment_app/theme.dart';

void main() {
  return runApp(PaymentApps());
}

class PaymentApps extends StatefulWidget {
  @override
  State<PaymentApps> createState() => _PaymentAppsState();
}

class _PaymentAppsState extends State<PaymentApps> {
  int selectedIndex = -1;

  @override
  Widget build(BuildContext context) {
    Widget option(int index, String title, String subTitle, String price) {
      return GestureDetector(
        onTap: () {
          setState(() {
            selectedIndex = index;
          });
        },
        // The custom button
        child: Container(
          padding: EdgeInsets.all(20),
          margin: EdgeInsets.all(20),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(14),
            border: Border.all(
              color: selectedIndex == index
                  ? Color(0xff007DFF)
                  : Color(0xff4D5B7C),
            ),
          ),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  selectedIndex == index
                      ? Image.asset('assets/check_on.png', width: 15)
                      : Image.asset('assets/check_off.png'),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        title,
                        style: planTextStyle,
                      ),
                      Text(
                        subTitle,
                        style: descTextStyle,
                      ),
                    ],
                  ),
                  SizedBox(
                    width: 25,
                  ),
                  Text(
                    price,
                    style: priceTextStyle,
                  ),
                ],
              ),
            ],
          ),
        ),
      );
    }

    Widget header() {
      return Padding(
        padding: const EdgeInsets.all(
          10,
        ),
        child: Column(
          children: [
            const SizedBox(
              height: 25,
            ),
            Center(
              child: Image.asset(
                'assets/money.png',
                width: 160,
                height: 160,
              ),
            ),
            const SizedBox(
              height: 25,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Dev Ccodicee',
                  style: titleTextStyle,
                )
              ],
            ),
            const SizedBox(
              height: 15,
            ),
          ],
        ),
      );
    }

    Widget joinUs() {
      return Column(
        children: [
          Container(
            height: 50,
            width: 340,
            child: TextButton(
              style: TextButton.styleFrom(
                backgroundColor: primaryColor,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(71),
                ),
              ),
              onPressed: () {},
              child: Text('Join Us', style: buttonTitleTextStyle),
            ),
          ),
        ],
      );
    }

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Color(0xff131A46),
        body: SingleChildScrollView(
          child: Column(
            children: [
              header(),
              option(0, 'Ccodicee', 'Mobile Developer', '\$23'),
              option(1, 'Dev', 'Web Developer', '\$23'),
              option(2, 'Dart', 'Fullstack Developer', '\$23'),
              SizedBox(
                height: 50,
              ),
              selectedIndex == -1 ? SizedBox() : joinUs(),
              SizedBox(
                height: 50,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
