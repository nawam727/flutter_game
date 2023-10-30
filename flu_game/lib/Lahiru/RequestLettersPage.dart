import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:npaly_application/Pages/SuccessfullRequest.dart';

import 'package:time_range_picker/time_range_picker.dart';

class RequestLettersPage extends StatefulWidget {
  const RequestLettersPage({super.key, required String inputText});

  @override
  State<RequestLettersPage> createState() => _RequestLettersPageState();
}

class _RequestLettersPageState extends State<RequestLettersPage> {
  //text editing controller for textfeilds
  TextEditingController IdController = TextEditingController();
  TextEditingController nameController = TextEditingController();
  TextEditingController reasonController = TextEditingController();
  TextEditingController eventController = TextEditingController();
  TextEditingController timeController = TextEditingController();

  String idError = '';
  String nameError = '';
  String timeError = '';
  String reasonError = '';
  String eventError = '';

  String id = '';
  String name = '';
  String event = '';
  String reason = '';
  String time = '';

  DateTime? _selectedDate;
  String date = '';
  String dateError = '';

//date picker
  Future<void> _selectDate(BuildContext context) async {
    DateTime? picked = await showDatePicker(
      context: context,
      initialDate: _selectedDate ?? DateTime.now(),
      firstDate: DateTime(2000),
      lastDate: DateTime(2101),
      builder: (BuildContext context, Widget? child) {
        return Theme(
          data: ThemeData.light().copyWith(
            // calendar color
            primaryColor: HexColor('#39B54A'),
            hintColor: HexColor('#39B54A'),
            colorScheme: ColorScheme.light(
              primary: HexColor('#39B54A'),
            ),
            textTheme: const TextTheme(
              bodyText1: TextStyle(fontSize: 16.0),
            ),
          ),
          child: child!,
        );
      },
    );

    if (picked != null) {
      setState(() {
        _selectedDate = picked;
      });
    }
  }

//time picker
  Future<void> _selectTimeRange(BuildContext context) async {
    TimeRange result = await showTimeRangePicker(
      context: context,
      builder: (BuildContext context, Widget? child) {
        return Theme(
          data: ThemeData.light().copyWith(
            primaryColor: HexColor('#39B54A'),
            hintColor: HexColor('#39B54A'),
            colorScheme: ColorScheme.light(
              primary: HexColor('#39B54A'),
            ),
            textTheme: const TextTheme(
              bodyLarge: TextStyle(fontSize: 16.0),
            ),
          ),
          child: child!,
        );
      },
    );
    if (result != null) {
      setState(() {
        String formattedStartTime =
            "${result.startTime.hour}:${result.startTime.minute}";
        String formattedEndTime =
            "${result.endTime.hour}:${result.endTime.minute}";

        timeController.text = '$formattedStartTime - $formattedEndTime';
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Scaffold(
      //background color of the page
      backgroundColor: const Color.fromARGB(255, 255, 255, 255),

      appBar: AppBar(
        title: const Padding(
          padding: EdgeInsets.only(left: 15),
          child: Text(
            "Proof Letter Request",
            style: TextStyle(
              fontSize: 20,
              letterSpacing: 0.3,
            ),
          ),
        ),
        backgroundColor: HexColor('#39B54A'),

        //to chnge app bar size

        bottom: const PreferredSize(
          preferredSize: Size.fromHeight(0.01),
          child: Padding(
            padding: EdgeInsets.only(left: 15),
          ),
        ),
      ),

      body: SingleChildScrollView(
        child: Container(
          child: Column(
            children: [
              //space in the top of the page
              SizedBox(
                height: size.height / 55,
              ),

              const Padding(
                padding: EdgeInsets.all(10.0),
                child: Text(
                  "Proof Letter Request",
                  style: TextStyle(
                      fontSize: 17,
                      fontWeight: FontWeight.w600,
                      letterSpacing: 0.1),
                ),
              ),

              //text
              const Padding(
                padding: EdgeInsets.all(12.0),
                child: Center(
                  child: Text(
                    "Please fill out the following form to request proof letters regarding your participation in sports.",
                    style: TextStyle(
                      fontSize: 16,
                    ),
                  ),
                ),
              ),

              //space in the top of the page
              SizedBox(
                height: size.height / 35,
              ),

              Center(
                child: SingleChildScrollView(
                  child: Container(
                    height: size.height / 0.822,
                    width: size.width / 1.125,
                    decoration: BoxDecoration(
                      color: Color.fromARGB(33, 164, 165, 167),
                      //color: HexColor("#B0B0B0"), // Fill color
                      /////////////////////////////////////////////////////////////////////////

                      border: Border.all(
                        color: Color.fromARGB(157, 121, 99, 98), // Border color
                        width: 0.5, // Border width
                      ),
                      borderRadius: BorderRadius.circular(6), // Border radius
                    ),
                    child: Column(
                      children: [
                        //middle space in container
                        SizedBox(
                          height: size.height / 80,
                        ),

                        const Padding(
                          padding: EdgeInsets.all(14),
                          child: Align(
                            alignment: AlignmentDirectional.topStart,
                            child: Text(
                              'Student ID',
                              style: TextStyle(
                                fontSize: 16,
                                color: Colors.black,
                                //color: Color.fromARGB(235, 158, 157, 154),
                                letterSpacing: 0.3,
                              ),
                            ),
                          ),
                        ),

                        ConstrainedBox(
                          constraints: BoxConstraints(
                            minHeight: size.height / 35,
                            maxWidth: size.width / 1.2,
                          ),

                          //id feild
                          child: TextFormField(
                            controller: IdController,
                            onChanged: (value) {
                              /////////////////////////////
                              setState(() {
                                doValidationID();
                                id = value;
                              });
                            },
                            keyboardType: TextInputType.number,
                            decoration: InputDecoration(
                              //display text
                              labelText: 'Student ID',

                              hintStyle: TextStyle(
                                  //text color
                                  color: HexColor("B0B0B0")),

                              border: OutlineInputBorder(
                                  // borderRadius: BorderRadius.circular(5.0),
                                  borderSide:
                                      BorderSide(color: HexColor("B0B0B0"))),

                              isDense: true,

                              //error message
                              errorText: idError.isNotEmpty ? idError : null,
                              /*
                                          errorText: (cardNum.length < 16 || expDateError.isNotEmpty)
                                               ? cardNumError
                                                 : null,
                                         */
                              errorMaxLines: 1,
                              errorStyle: const TextStyle(
                                color: Colors.red,
                                fontSize: 12.5,
                              ),
                            ),
                            style: const TextStyle(
                              fontSize: 16,
                              color: Colors.black,
                              //color: Color.fromARGB(235, 158, 157, 154),
                              letterSpacing: 0.3,
                            ),
                          ),
                        ),

                        //middle space in container
                        SizedBox(
                          height: size.height / 80,
                        ),

                        const Padding(
                          padding: EdgeInsets.all(14),
                          child: Align(
                            alignment: AlignmentDirectional.topStart,
                            child: Text(
                              'Student Name',
                              style: TextStyle(
                                fontSize: 16,
                                color: Colors.black,
                                //color: Color.fromARGB(235, 158, 157, 154),
                                letterSpacing: 0.3,
                              ),
                            ),
                          ),
                        ),

                        //////student name
                        ConstrainedBox(
                          constraints: BoxConstraints(
                            minHeight: size.height / 35,
                            maxWidth: size.width / 1.2,
                          ),
                          child: TextFormField(
                            controller: nameController,
                            onChanged: (value) {
                              /////////////////////////////
                              setState(() {
                                doValidationName();
                                name = value;
                              });
                            },
                            keyboardType: TextInputType.text,
                            decoration: InputDecoration(
                              //display text
                              labelText: 'Student Name',

                              hintStyle: TextStyle(
                                  //text color
                                  color: HexColor("B0B0B0")),

                              border: OutlineInputBorder(
                                  // borderRadius: BorderRadius.circular(5.0),
                                  borderSide:
                                      BorderSide(color: HexColor("B0B0B0"))),

                              isDense: true,

                              //error message
                              errorText:
                                  nameError.isNotEmpty ? nameError : null,
                              /*
                                          errorText: (cardNum.length < 16 || expDateError.isNotEmpty)
                                               ? cardNumError
                                                 : null,
                                         */
                              errorMaxLines: 1,
                              errorStyle: const TextStyle(
                                color: Colors.red,
                                fontSize: 12.5,
                              ),
                            ),
                            style: const TextStyle(
                              fontSize: 16,
                              color: Colors.black,
                              //color: Color.fromARGB(235, 158, 157, 154),
                              letterSpacing: 0.3,
                            ),
                          ),
                        ),

                        //middle space in container
                        SizedBox(
                          height: size.height / 80,
                        ),

                        const Padding(
                          padding: EdgeInsets.all(14),
                          child: Align(
                            alignment: AlignmentDirectional.topStart,
                            child: Text(
                              'Reason',
                              style: TextStyle(
                                fontSize: 16,
                                color: Colors.black,
                                //color: Color.fromARGB(235, 158, 157, 154),
                                letterSpacing: 0.3,
                              ),
                            ),
                          ),
                        ),

                        ///reason feild
                        ConstrainedBox(
                          constraints: BoxConstraints(
                            minHeight: size.height / 35,
                            maxWidth: size.width / 1.2,
                          ),
                          child: TextFormField(
                            controller: reasonController,
                            onChanged: (value) {
                              /////////////////////////////
                              setState(() {
                                //doValidation();
                                reason = value;
                                doValidationReason();
                              });
                            },
                            maxLines: null,
                            decoration: InputDecoration(
                              //display text
                              labelText: 'Reason',

                              hintStyle: TextStyle(
                                  //text color
                                  color: HexColor("B0B0B0")),

                              border: OutlineInputBorder(
                                  // borderRadius: BorderRadius.circular(5.0),
                                  borderSide:
                                      BorderSide(color: HexColor("B0B0B0"))),

                              isDense: true,

                              //error message
                              errorText:
                                  reasonError.isNotEmpty ? reasonError : null,
                              /*
                                          errorText: (cardNum.length < 16 || expDateError.isNotEmpty)
                                               ? cardNumError
                                                 : null,
                                         */
                              errorMaxLines: 1,
                              errorStyle: const TextStyle(
                                color: Colors.red,
                                fontSize: 12.5,
                              ),
                            ),
                            style: const TextStyle(
                              fontSize: 16,
                              color: Colors.black,
                              //color: Color.fromARGB(235, 158, 157, 154),
                              letterSpacing: 0.3,
                            ),
                          ),
                        ),

                        //middle space in container
                        SizedBox(
                          height: size.height / 80,
                        ),

                        const Padding(
                          padding: EdgeInsets.all(14),
                          child: Align(
                            alignment: AlignmentDirectional.topStart,
                            child: Text(
                              'Event Participated',
                              style: TextStyle(
                                fontSize: 16,
                                color: Colors.black,
                                //color: Color.fromARGB(235, 158, 157, 154),
                                letterSpacing: 0.3,
                              ),
                            ),
                          ),
                        ),

                        //event paticipated
                        ConstrainedBox(
                          constraints: BoxConstraints(
                            minHeight: size.height / 35,
                            maxWidth: size.width / 1.2,
                          ),
                          child: TextFormField(
                            controller: eventController,
                            onChanged: (value) {
                              setState(() {
                                // Update the student ID and trigger validation
                                event = value;
                                doValidationevent();
                              });
                            },
                            keyboardType: TextInputType.datetime,
                            decoration: InputDecoration(
                              //display text
                              labelText: 'Event Participated',

                              hintStyle: TextStyle(
                                  //text color
                                  color: HexColor("B0B0B0")),

                              border: OutlineInputBorder(
                                  // borderRadius: BorderRadius.circular(5.0),
                                  borderSide:
                                      BorderSide(color: HexColor("B0B0B0"))),

                              isDense: true,

                              //error message
                              errorText:
                                  eventError.isNotEmpty ? eventError : null,
                              /*
                                          errorText: (cardNum.length < 16 || expDateError.isNotEmpty)
                                               ? cardNumError
                                                 : null,
                                         */
                              errorMaxLines: 1,
                              errorStyle: const TextStyle(
                                color: Colors.red,
                                fontSize: 12.5,
                              ),
                            ),
                            style: const TextStyle(
                              fontSize: 16,
                              color: Colors.black,
                              //color: Color.fromARGB(235, 158, 157, 154),
                              letterSpacing: 0.3,
                            ),
                          ),
                        ),

                        //middle space in container
                        SizedBox(
                          height: size.height / 80,
                        ),

                        ///////////////////////////////////////

                        //date
                        const Padding(
                          padding: EdgeInsets.all(14),
                          child: Align(
                            alignment: AlignmentDirectional.topStart,
                            child: Text(
                              'Date',
                              style: TextStyle(
                                fontSize: 16,
                                color: Colors.black,
                                //color: Color.fromARGB(235, 158, 157, 154),
                                letterSpacing: 0.3,
                              ),
                            ),
                          ),
                        ),

                        ///date
                        ConstrainedBox(
                          constraints: BoxConstraints(
                            minHeight: size.height / 35,
                            maxWidth: size.width / 1.2,
                          ),
                          child: TextFormField(
                            readOnly: true,
                            controller: TextEditingController(
                              text: _selectedDate != null
                                  ? "${_selectedDate!.day}/${_selectedDate!.month}/${_selectedDate!.year}"
                                  : '',
                            ),

                            /*      
                         onChanged: (value) {
                          setState(() {
                            // Update the student ID and trigger validation
                            date = value;
                            doValidationdate();
                          
                
                          dateError='';
                          });
                        },
                      */

                            decoration: InputDecoration(
                              hintText: 'Select the date',
                              border: OutlineInputBorder(
                                // borderRadius: BorderRadius.circular(5.0),
                                borderSide:
                                    BorderSide(color: HexColor("B0B0B0")),
                              ),
                              isDense: true,

                              //   errorText: dateError.isNotEmpty ? dateError : null,

                              errorMaxLines: 1,
                              errorStyle: const TextStyle(
                                color: Colors.red,
                                fontSize: 12.5,
                              ),

                              //calandar icon
                              suffixIcon: IconButton(
                                icon: const Icon(Icons.calendar_today),
                                iconSize: 20,
                                onPressed: () => _selectDate(context),
                              ),
                            ),
                          ),
                        ),

                        //middle space in container
                        SizedBox(
                          height: size.height / 80,
                        ),

                        //time slot
                        const Padding(
                          padding: EdgeInsets.all(14),
                          child: Align(
                            alignment: AlignmentDirectional.topStart,
                            child: Text(
                              'Time Range',
                              style: TextStyle(
                                fontSize: 16,
                                color: Colors.black,
                                //color: Color.fromARGB(235, 158, 157, 154),
                                letterSpacing: 0.3,
                              ),
                            ),
                          ),
                        ),

                        //time taken
                        ConstrainedBox(
                          constraints: BoxConstraints(
                            minHeight: size.height / 35,
                            maxWidth: size.width / 1.2,
                          ),
                          child: TextFormField(
                            readOnly: true,
                            onTap: () => _selectTimeRange(context),
                            controller: timeController,
                            /*      
                                  
                         onChanged: (value) {
                          setState(() {
                            // Update the student ID and trigger validation
                            time = value;
                            doValidationtime();
                          });
                        },
                */

                            decoration: InputDecoration(
                              hintText: 'Select Time Range',
                              border: OutlineInputBorder(
                                borderSide: BorderSide(
                                  color: HexColor("B0B0B0"),
                                ),
                              ),

                              isDense: true,
                              //errorText: timeError.isNotEmpty ? timeError : null,
                              errorMaxLines: 1,
                              errorStyle: const TextStyle(
                                color: Colors.red,
                                fontSize: 12.5,
                              ),

                              suffixIcon: IconButton(
                                icon: Icon(Icons.access_time),
                                iconSize: 22,
                                onPressed: () => _selectTimeRange(context),
                              ),
                            ),
                            style: const TextStyle(
                              fontSize: 16,
                              color: Colors.black,
                              letterSpacing: 0.3,
                            ),
                          ),
                        ),

                        //middle space in container
                        SizedBox(
                          height: size.height / 20,
                        ),

                        ///buttton for submit

                        SizedBox(
                          height: size.height / 20,
                          width: size.width / 1.2,
                          child: ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              backgroundColor: HexColor("#39B54A"),
                            ),
                            onPressed: () {
                              doValidation();
                              doValidationID();
                              doValidationName();
                              doValidationReason();
                              doValidationdate();
                              doValidationevent();
                              doValidationtime();

                              const TextStyle(
                                color: Colors.red,
                                fontSize: 12.5,
                              );
                            },
                            child: const Text(
                              'Confirm Request',
                              style: TextStyle(
                                fontSize: 17,
                                letterSpacing: 0.3,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),

              //middle space in container
              SizedBox(
                height: size.height / 20,
              ),
            ],
          ),
        ),
      ),
    );
  }

  void doValidation() {
    String id = IdController.text.trim();
    String name = nameController.text.trim();

    //String userAmount = IdController.text.trim();

    if (id.isNotEmpty &&
        name.isNotEmpty &&
        reason.isNotEmpty &&
        event.isNotEmpty) {
      Navigator.push(
        context,

        ///navigation

        MaterialPageRoute(
          builder: (context) => const SuccesfulRequestPage(
            inputText: '',
          ),
        ),
      );
    }
  }

  void doValidationID() {
    String id = IdController.text.trim();

    if (id.isNotEmpty) {
      setState(() {
        idError = '';
      });
    } else if (id.isEmpty) {
      setState(() {
        idError = 'Please enter your ID';
      });
    }
  }

  void doValidationName() {
    String name = nameController.text.trim();

    if (name.isNotEmpty) {
      setState(() {
        nameError = '';
      });
    } else if (name.isEmpty) {
      setState(() {
        nameError = 'Please enter your Name';
      });
    }
  }

  void doValidationReason() {
    String reason = reasonController.text.trim();

    if (reason.isNotEmpty) {
      setState(() {
        reasonError = '';
      });
    } else if (reason.isEmpty) {
      setState(() {
        reasonError = 'Please enter your Reason';
      });
    }
  }

  void doValidationevent() {
    String event = eventController.text.trim();

    if (event.isNotEmpty) {
      setState(() {
        eventError = '';
      });
    } else if (event.isEmpty) {
      setState(() {
        eventError = 'Please select the Event';
      });
    }
  }

  void doValidationdate() {
    if (date.isNotEmpty) {
      setState(() {
        dateError = '';
      });
    } else if (date.isEmpty) {
      setState(() {
        dateError = 'Please select the Date';
      });
    }
  }

  void doValidationtime() {
    if (time.isNotEmpty) {
      setState(() {
        timeError = '';
      });
    } else if (date.isEmpty) {
      setState(() {
        timeError = 'Please select the Time';
      });
    }
  }
}

class DateFormatter extends TextInputFormatter {
  @override
  TextEditingValue formatEditUpdate(
    TextEditingValue oldValue,
    TextEditingValue newValue,
  ) {
    final String newText = newValue.text;
    final String newTextFilterd = newText.replaceAll(
      RegExp(r'[^\d]'),
      '',
    );
    final int selectionIndexFromRight = newText.length - newValue.selection.end;
    int offset = 0;

    final StringBuffer newTextBuffer = StringBuffer();
    for (int i = 0; i < newTextFilterd.length; i++) {
      if (i > 0 && i % 4 == 0) {
        //display 2 spaces in the middle of card number input
        newTextBuffer.write(' // ');
        if (newValue.selection.end >= i + offset) {
          offset++;
        }
      }
      newTextBuffer.write(newTextFilterd[i]);
    }

    return TextEditingValue(
      text: newTextBuffer.toString(),
      selection: TextSelection.collapsed(
        offset: newTextBuffer.length - selectionIndexFromRight,
      ),
    );
  }
}

class TimeRangePickerField extends StatelessWidget {
  final Function(TimeRange)? onTimeRangeSelected;

  const TimeRangePickerField({Key? key, this.onTimeRangeSelected})
      : super(key: key);

  Future<void> _selectTimeRange(BuildContext context) async {
    TimeRange? result = await showTimeRangePicker(
      context: context,
    );
    if (result != null && onTimeRangeSelected != null) {
      onTimeRangeSelected!(result);
    }
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    throw UnimplementedError();
  }
}
