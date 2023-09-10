import 'package:flutter/material.dart';
import 'package:payment_app/theme.dart';

void main() {
  runApp(PaymentApps());
}

class PaymentApps extends StatefulWidget {
  @override
  State<PaymentApps> createState() => _PaymentAppsState();
}

class _PaymentAppsState extends State<PaymentApps> {
  @override
  Widget build(BuildContext context) {
    Widget option() {
      return GestureDetector(
        child: Container(
          padding: const EdgeInsets.all(20),
          margin: const EdgeInsets.all(20),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(14),
            border: Border.all(
              color: Colors.white,
            ),
          ),
        ),
      );
    }

    Widget header() {
      return Padding(
        padding: const EdgeInsets.only(top: 50, left: 32, right: 32),
        child: Column(
          children: [
            Center(
              child: Image.asset(
                'assets/money.png',
                width: 267,
                height: 200,
              ),
            ),
            const SizedBox(
              height: 25,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Upgrade to',
                  style: titleTextStyle,
                ),
                const SizedBox(width: 6),
                Text(
                  'Pro',
                  style: proTextStyle,
                )
              ],
            ),
            const SizedBox(
              height: 15,
            ),
            Text(
              'Go Unlock all features and \n build your own business bigger',
              style: subTitleTextStyle,
              textAlign: TextAlign.center,
            ),
          ],
        ),
      );
    }

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: const Color(0xff04112F),
        body: Column(
          children: [
            header(),
            option(),
            option(),
            option(),
          ],
        ),
      ),
    );
  }
}
