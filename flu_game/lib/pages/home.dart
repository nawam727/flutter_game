

import 'package:flutter/material.dart';

class MyWidget extends StatelessWidget {
  const MyWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          Container(
            decoration: BoxDecoration(boxShadow: [
              BoxShadow(
                blurRadius: 100,
                offset: const Offset(0, 20),
                color: HexColor('#15BE77').withOpacity(0.1),
              )
            ]),
            child: TextFormField(
              cursorColor: HexColor('#15BE77'),
              keyboardType: TextInputType.emailAddress,
              validator: (value) {
                if (value!.isEmpty) {
                  return 'Request';
                }
                return null;
              },
              controller: _secondName,
              decoration: InputDecoration(
                filled: true,
                fillColor: Colors.white,
                enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                      width: 0.2.w,
                      color: Colors.grey.withOpacity(0.5),
                    ),
                    borderRadius: BorderRadius.circular(15)),
                hintText: 'Last Name',
                labelText: 'Last Name',
                labelStyle: const TextStyle(
                  color: Colors.grey,
                ),
                focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                      color: HexColor('#15BE77'),
                    ),
                    borderRadius: BorderRadius.circular(15)),
                focusedErrorBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                      color: HexColor('#15BE77'),
                    ),
                    borderRadius: BorderRadius.circular(15)),
                errorBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                      width: 0.2.w,
                      color: Colors.red,
                    ),
                    borderRadius: BorderRadius.circular(15)),
              ),
            ),
          ),
          SizedBox(height: 40.h),
        ],
      ),
    );
  }
}