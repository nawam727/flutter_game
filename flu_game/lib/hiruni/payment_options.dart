// ignore_for_file: must_be_immutable

import 'dart:math';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:green_connect/app_color.dart';
import 'package:green_connect/components/app_bar_with_back.dart';
import 'package:green_connect/components/app_text_form_field.dart';
import 'package:green_connect/components/flutter_toast.dart';

class PaymentOptions extends StatefulWidget {
  const PaymentOptions({super.key});

  @override
  State<PaymentOptions> createState() => _PaymentOptionsState();
}

class _PaymentOptionsState extends State<PaymentOptions> {
  final TextEditingController feeController = TextEditingController();
  final TextEditingController amountController = TextEditingController();
  final firestoreInstance = FirebaseFirestore.instance;
  final User? user = FirebaseAuth.instance.currentUser;

  String? selectedItem;

  List<String> items = [
    'Degree fee',
    'Bridging Programme',
    'Hostel Deposite',
    'Registration Fee',
    'Library Fee',
    'Convocation Fee',
    'Late Payment Fines',
    'Pre Payment',
    'Repeat Exam Fee',
    'Late Payment Charges',
    'Lateral Entry Fee',
    'Other Fine',
  ];

  Future<Map<String, dynamic>?> fetchUserData(User user) async {
    try {
      DocumentSnapshot<Map<String, dynamic>> userData = await FirebaseFirestore
          .instance
          .collection('users')
          .doc(user.uid)
          .get();

      if (userData.exists) {
        return userData.data();
      } else {
        AppToastmsg.appToastMeassage('User data not found in Firestore');
        return null;
      }
    } catch (e) {
      AppToastmsg.appToastMeassage('Failed to fetch user data: $e');
      return null;
    }
  }

  String generateRandomReceipt() {
    Random random = Random();
    String characters = '0123456789';
    String receipt = 'RP${characters[random.nextInt(characters.length)]}';

    for (int i = 0; i < 5; i++) {
      receipt += characters[random.nextInt(characters.length)];
    }

    return receipt;
  }

  void addModuleData() async {
    DateTime paymentDate = DateTime.now();
    try {
      final payment = Payments(
        receiptId: generateRandomReceipt(),
        fee_type: selectedItem.toString(),
        amount: double.parse(amountController.text),
        payment_date: paymentDate,
      );

      await firestoreInstance
          .collection("users")
          .doc(user!.uid)
          .collection("payments")
          .add(payment.toJson());

      //AppToastmsg.appToastMeassage('New remind added successfully.');
    } catch (e) {
      AppToastmsg.appToastMeassage('Error adding module data: $e');
    }
  }

  @override
  Widget build(BuildContext context) {
    User? user = FirebaseAuth.instance.currentUser;
    return Scaffold(
      appBar: const AppBarWithBack(title: "Payments"),
      body: FutureBuilder<Map<String, dynamic>?>(
        future: fetchUserData(user!),
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return const Center(child: CircularProgressIndicator());
          } else if (snapshot.hasError) {
            return Center(
              child: Text('Error: ${snapshot.error}'),
            );
          } else {
            final userData = snapshot.data;
            String name = userData!['name'] ?? 'Null';
            String uid = userData['uid'] ?? 'Null';
            String degree = userData['degree'] ?? 'Null';
            String intake = userData['intake'] ?? 'Null';
            String capitalizedName =
                name.split(' ').map((word) => word.capitalize()).join(' ');
            return SingleChildScrollView(
              child: Padding(
                padding: appPagePadding,
                child: Column(
                  children: [
                    const SizedBox(height: 10),
                    const Align(
                      alignment: FractionalOffset(0, 0.2),
                      child: Text(
                        'Details                             ',
                        textAlign: TextAlign.start,
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          color: appPrimary,
                        ),
                      ),
                    ),
                    const SizedBox(height: 15),
                    AppTextformfield(
                      labelText: 'Student Id',
                      hintText: uid,
                      readOnly: true,
                      onTap: () {},
                      //isValidate: false,
                    ),
                    AppTextformfield(
                      labelText: 'Students Name',
                      hintText: capitalizedName,
                      readOnly: true,
                      onTap: () {},
                      //isValidate: false,
                    ),
                    AppTextformfield(
                      labelText: 'Degree',
                      hintText: degree,
                      readOnly: true,
                      onTap: () {},
                      //isValidate: false,
                    ),
                    AppTextformfield(
                      labelText: 'Intake',
                      hintText: intake,
                      readOnly: true,
                      onTap: () {},
                      //isValidate: false,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(bottom: 10),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text(
                            "Fee Type",
                            style: TextStyle(
                              fontSize: 15,
                              color: appBlack,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                          const SizedBox(height: 3),
                          DropdownButtonFormField<String>(
                            value: selectedItem,
                            items: items.map<DropdownMenuItem<String>>(
                              (String value) {
                                return DropdownMenuItem<String>(
                                  value: value,
                                  child: Text(
                                    value,
                                  ),
                                );
                              },
                            ).toList(),
                            onChanged: (val) {
                              setState(() {
                                selectedItem = val;
                              });
                            },
                            decoration: const InputDecoration(
                              border: OutlineInputBorder(),
                              errorBorder: OutlineInputBorder(
                                borderSide: BorderSide(color: Colors.red),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    AppTextformfield(
                      keyboardType: TextInputType.number,
                      field_controller: amountController,
                      labelText: 'Amount',
                      hintText: '',
                      onTap: () {},
                      //isValidate: false,
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
                              // if (_formKey.currentState!.validate()) {
                              //   addModuleData();
                              // }
                              addModuleData();
                            },
                            child: const Text(
                              "Pay Now",
                              style:
                                  TextStyle(color: Colors.white, fontSize: 18),
                            ),
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 25),
                  ],
                ),
              ),
            );
          }
        },
      ),
    );
  }
}

extension StringExtensions on String {
  String capitalize() {
    return "${this[0].toUpperCase()}${substring(1)}";
  }
}

extension ModuleExtension on Payments {
  Map<String, dynamic> toJson() {
    return {
      "receiptId": receiptId,
      "fee_type": fee_type,
      "amount": amount,
      "payment_date": payment_date,
    };
  }
}

class Payments {
  //final String paymentsId;
  final String receiptId;
  final String fee_type;
  final double amount;
  final DateTime payment_date;
  Payments({
    // required this.paymentsId,
    required this.receiptId,
    required this.fee_type,
    required this.amount,
    required this.payment_date,
  });
}
