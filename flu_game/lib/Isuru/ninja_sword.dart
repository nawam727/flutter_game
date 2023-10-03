import 'package:flutter/material.dart';
import 'package:green_connect/components/app_bar_with_back.dart';

class SettingsMain extends StatelessWidget {
  const SettingsMain({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      appBar: AppBarWithBack(title: "Settings"),
      body: Center(
        child: Text("Settings"),
        void _time_picker() {
    TimeOfDay selectedTime = TimeOfDay.now();
    showTimePicker(
      initialEntryMode: TimePickerEntryMode.inputOnly,
      context: context,
      initialTime: selectedTime,
    ).then((value) {
      setState(() {
        selectedTime = value!;
        time_controller.text = selectedTime.format(context).toString();
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const AppBarWithBack(
        title: "Add Remind",
        notifications: 4,
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Padding(
            padding: appPagePadding,
            child: Form(
              key: _formKey,
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: <Widget>[
                  //Text(_selected_date.toString()),
                  const SizedBox(height: 20),
                  AppTextformfield(
                    field_controller: title_controller,
                    errormsg: 'Please enter title',
                    labelText: 'Title',
                    hintText: 'Add a reminder',
                    //isValidate: false,
                  ),
                  AppTextformfield(
                    field_controller: note_controller,
                    errormsg: 'Please enter note',
                    labelText: 'Note',
                    hintText: 'Add a note',
                    isValidate: false,
                  ),
                  AppTextformfield(
                    field_controller: date_controller,
                    errormsg: 'Please enter date',
                    labelText: 'Date',
                    hintText: 'Pick date',
                    suffix: const Icon(Icons.calendar_month),
                    readOnly: true,
                    onTap: _date_picker,
                    //isValidate: false,
                  ),
                  AppTextformfield(
                    field_controller: time_controller,
                    errormsg: 'Please enter time',
                    labelText: 'Time',
                    hintText: 'Pick Time',
                    suffix: const Icon(Icons.watch),
                    readOnly: true,
                    onTap: _time_picker,
                    //isValidate: false,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        "Remind",
                        style: TextStyle(
                          fontSize: 15,
                          color: appBlack,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      const SizedBox(height: 3),
                      DropdownButtonFormField(
                        items: <String>['Dog', 'Cat', 'Tiger', 'Lion']
                            .map<DropdownMenuItem<String>>(
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
                          setState(() {});
                        },
                        decoration: const InputDecoration(
                          labelText: 'Remind',
                          border: OutlineInputBorder(),
                          errorBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.red),
      ),
    );
  }
}