import 'package:flutter/cupertino.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class MyWidget extends StatefulWidget {
  const MyWidget({super.key});

  @override
  State<MyWidget> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<MyWidget> {
  @override
  Widget build(BuildContext context) {
    return Column(children: [
      Container(
        decoration: BoxDecoration(boxShadow: [
          BoxShadow(
            blurRadius: 100,
            offset: const Offset(0, 20),
            color: Colors.red.withOpacity(0.1),
          )
        ]),
        child: TextFormField(
          cursorColor: Colors.red,
          keyboardType: TextInputType.emailAddress,
          validator: (value) {
            if (value!.isEmpty) {
              return 'Request';
            }
            return null;
          },
          controller: _firstName,
          decoration: InputDecoration(
            filled: true,
            fillColor: Colors.white,
            enabledBorder: OutlineInputBorder(
                borderSide: BorderSide(
                  width: 0.2.w,
                  color: Colors.grey.withOpacity(0.5),
                ),
                borderRadius: BorderRadius.circular(15)),
            hintText: 'First Name',
            labelText: 'First Name',
            labelStyle: const TextStyle(
              color: Colors.grey,
            ),
            focusedBorder: OutlineInputBorder(
                borderSide: BorderSide(
                  color: Colors.red,
                ),
                borderRadius: BorderRadius.circular(15)),
            focusedErrorBorder: OutlineInputBorder(
                borderSide: BorderSide(
                  color: Colors.red,
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
    ],);
  }
}