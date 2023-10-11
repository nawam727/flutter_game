import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:green_connect/app_color.dart';
import 'package:green_connect/components/app_bar_with_back.dart';
import 'package:green_connect/components/app_text_form_field.dart';

class PaymentTopUp extends StatefulWidget {
  const PaymentTopUp({super.key});

  @override
  State<PaymentTopUp> createState() => _PaymentTopUpState();
}

class _PaymentTopUpState extends State<PaymentTopUp> {
  final TextEditingController amountController = TextEditingController();
  String? selectedItem;
  List<String> items = ['LKR', 'USD', 'NR'];
  double topUpValue = 0.00;

  Future<void> updateBalance() async {
    User? user = FirebaseAuth.instance.currentUser;
    final firebase = await FirebaseFirestore.instance;

    firebase
        .collection('users')
        .doc(user!.uid)
        .update({'balance': FieldValue.increment(topUpValue)});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const AppBarWithBack(title: "Payments"),
      body: SingleChildScrollView(
        child: Padding(
          padding: appPagePadding,
          child: Column(
            children: [
              const SizedBox(height: 20),
              const Align(
                alignment: FractionalOffset(0, 1),
                child: Text(
                  'Student ID Top-UP                ',
                  textAlign: TextAlign.start,
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: appPrimary,
                  ),
                ),
              ),
              const SizedBox(height: 20),
              const Align(
                alignment: FractionalOffset(0, 1),
                child: Text(
                  'This allows you to provide the following benefits.',
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    color: appBlack,
                  ),
                ),
              ),
              const SizedBox(height: 5),
              const Align(
                alignment: FractionalOffset(0.2, 0.6),
                child: Text(
                  ' You can pay for the gym',
                  style: TextStyle(
                    fontSize: 15,
                  ),
                ),
              ),
              const SizedBox(height: 5),
              const Align(
                alignment: FractionalOffset(0.2, 0.6),
                child: Text(
                  ' You can pay for the pool',
                  style: TextStyle(
                    fontSize: 15,
                  ),
                ),
              ),
              const SizedBox(height: 5),
              const Align(
                alignment: FractionalOffset(0.2, 0.6),
                child: Text(
                  ' You can buy event ticket',
                  style: TextStyle(
                    fontSize: 15,
                  ),
                ),
              ),
              const SizedBox(height: 5),
              const Align(
                alignment: FractionalOffset(0.2, 0.6),
                child: Text(
                  '  You can pay for library fee',
                  style: TextStyle(
                    fontSize: 15,
                  ),
                ),
              ),
              const SizedBox(height: 20),
              GridView.count(
                crossAxisCount: 3,
                childAspectRatio: 3,
                crossAxisSpacing: 10,
                mainAxisSpacing: 10,
                shrinkWrap: true,
                children: [
                  ElevatedButton(
                    onPressed: () {
                      setState(() {
                        topUpValue = 100.00;
                      });
                    },
                    child: const Text('100'),
                  ),
                  ElevatedButton(
                    onPressed: () {
                      setState(() {
                        topUpValue = 200.00;
                      });
                    },
                    child: const Text('200'),
                  ),
                  ElevatedButton(
                    onPressed: () {
                      setState(() {
                        topUpValue = 500.00;
                      });
                    },
                    child: const Text('500'),
                  ),
                  ElevatedButton(
                    onPressed: () {
                      setState(() {
                        topUpValue = 1000.00;
                      });
                    },
                    child: const Text('1000'),
                  ),
                  ElevatedButton(
                    onPressed: () {
                      setState(() {
                        topUpValue = 2500.00;
                      });
                    },
                    child: const Text('2500'),
                  ),
                  ElevatedButton(
                    onPressed: () {
                      setState(() {
                        topUpValue = 5000.00;
                      });
                    },
                    child: const Text('5000'),
                  ),
                ],
              ),
              const SizedBox(height: 20),
              AppTextformfield(
                field_controller: amountController,
                labelText: 'Amount',
                keyboardType: TextInputType.number,
                hintText: topUpValue.toStringAsFixed(2),
                onTap: () {},
              ),
              const SizedBox(height: 25),
              Row(
                children: [
                  Expanded(
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        fixedSize: const Size(0, 60),
                        backgroundColor: Theme.of(context).primaryColor,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(5),
                        ),
                      ),
                      onPressed: () {
                        updateBalance();
                      },
                      child: const Text(
                        "TopUp Now",
                        style: TextStyle(color: Colors.white, fontSize: 18),
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 25),
            ],
          ),
        ),
      ),
    );
  }
}
