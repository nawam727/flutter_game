import 'package:flutter/material.dart';

class MyCourse2 extends StatefulWidget {
  const MyCourse2({Key? key}) : super(key: key);

  @override
  _MyCourse2State createState() => _MyCourse2State();
}

class _MyCourse2State extends State<MyCourse2> {
  int? selectedAnswer;
  bool hasSubmitted = false;
  bool showCertificateButton =
      false; // Track if the "Get Certificate" button should be shown

  // Correct answer
  final int correctAnswer = 3; // 'c. System.out.println("Hello World");'

  // Create a list to track the expansion panel state
  List<bool> isPanelExpanded = [false, false, false];

  // Additional text content for each panel
  List<String> additionalTextContent = [
    'c. System.out.println("Hello World");',
    'class HelloWorld { \npublic static void main(String[] args) { \nSystem. out. println("Hello World!"); \n} \n}',
    'class HelloWorld :\nDeclares a class named "HelloWorld".\n\npublic static void main(String[] args) :\nDeclares the special entry point method called "main" that accepts an array of strings as command-line arguments.\n\nSystem.out.println("Hello World!"); :\nPrints the message "Hello World!" to the console using the println() method of the System.out object.',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: const Text(
          'My Courses',
          style: TextStyle(
            color: Colors.black,
          ),
        ),
        centerTitle: true,
        leading: IconButton(
          icon: const Icon(
            Icons.arrow_back_ios,
            color: Colors.black,
          ),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Padding(
              padding: EdgeInsets.all(16.0),
              child: Text(
                'Lesson 3 | Quiz',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 16.0,
                ),
              ),
            ),
            Container(
              margin: const EdgeInsets.all(5.0),
              padding: const EdgeInsets.all(3.0),
              decoration: BoxDecoration(
                color: Colors.grey[300], // Set the ash color here
                borderRadius: BorderRadius.circular(12.0), // Set border radius
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    'Question 01: Print "Hello World" using Java Language.',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 20.0,
                    ),
                  ),
                  // Add the multiple-choice question and answers here
                  buildAnswerTile("a. print(\"Hello World\");", 1),
                  buildAnswerTile("b. System.out.println(Hello World);", 2),
                  buildAnswerTile("c. System.out.println(\"Hello World\");", 3),
                  buildAnswerTile("d. print \"Hello World\";", 4),
                ],
              ),
            ),
            // Add the additional containers with texts and dropdown icons
            buildAdditionalContainer("Answer", 0),
            buildAdditionalContainer("Sample Code", 1),
            buildAdditionalContainer("Explanation", 2),
          ],
        ),
      ),
      bottomNavigationBar: BottomAppBar(
        child: Container(
          padding: const EdgeInsets.symmetric(horizontal: 8.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              if (!hasSubmitted) // Show Clear and Submit buttons only if not submitted
                Container(
                  margin: const EdgeInsets.only(right: 5.0),
                  child: ElevatedButton(
                    onPressed: () {
                      // Clear button action
                      setState(() {
                        selectedAnswer = null;
                      });
                    },
                    style: ElevatedButton.styleFrom(
                      primary: const Color.fromARGB(255, 165, 152, 151),
                      minimumSize: const Size(
                          120, 43), // Increased button height by 3 pixels
                    ),
                    child: const Padding(
                      padding: EdgeInsets.symmetric(horizontal: 12.0),
                      child: Text("Clear", style: TextStyle(fontSize: 16.0)),
                    ),
                  ),
                ),
              if (!hasSubmitted)
                Container(
                  margin: const EdgeInsets.only(left: 5.0),
                  child: ElevatedButton(
                    onPressed: () {
                      // Submit button action
                      if (selectedAnswer != null) {
                        setState(() {
                          hasSubmitted = true;
                          showCertificateButton =
                              true; // Show Get Certificate button
                        });
                      } else {
                        showSelectAnswerAlert(); // Show alert if no answer is selected
                      }
                    },
                    style: ElevatedButton.styleFrom(
                      minimumSize: const Size(
                          120, 43), // Increased button height by 3 pixels
                    ),
                    child: const Padding(
                      padding: EdgeInsets.symmetric(horizontal: 12.0),
                      child: Text("Submit", style: TextStyle(fontSize: 16.0)),
                    ),
                  ),
                ),
              if (showCertificateButton) // Show Get Certificate button after submission
                Container(
                  margin: const EdgeInsets.only(left: 5.0),
                  child: ElevatedButton(
                    onPressed: () {
                      // Handle the logic for getting the certificate here
                    },
                    style: ElevatedButton.styleFrom(
                      primary: Color.fromARGB(
                          255, 51, 133, 241), // Customize button color
                      minimumSize: const Size(
                          200, 43), // Increased button height by 3 pixels
                    ),
                    child: const Padding(
                      padding: EdgeInsets.symmetric(horizontal: 12.0),
                      child: Text("Get Certificate",
                          style: TextStyle(fontSize: 16.0)),
                    ),
                  ),
                ),
            ],
          ),
        ),
      ),
    );
  }

  Widget buildAnswerTile(String answerText, int value) {
    bool isCorrect = value == correctAnswer;
    bool isSelected = selectedAnswer == value;

    return ListTile(
      title: Row(
        children: [
          Text(answerText),
          SizedBox(width: 1), // Add some spacing between text and icon
          if (hasSubmitted && isSelected)
            Icon(
              isCorrect
                  ? Icons.check_circle
                  : Icons.cancel, // Display correct or incorrect icon
              color: isCorrect ? Colors.green : Colors.red, // Set icon color
            ),
        ],
      ),
      leading: Radio<int>(
        value: value,
        groupValue: selectedAnswer,
        onChanged: hasSubmitted
            ? null
            : (int? newValue) {
                setState(() {
                  selectedAnswer = newValue;
                });
              },
      ),
      tileColor: isSelected ? const Color.fromARGB(255, 235, 232, 232) : null,
      selectedTileColor: Colors.black,
    );
  }

  Widget buildAdditionalContainer(String labelText, int index) {
    return Container(
      margin: const EdgeInsets.all(16.0),
      padding: const EdgeInsets.all(16.0),
      decoration: BoxDecoration(
        color: Colors.grey[300],
        borderRadius: BorderRadius.circular(12.0),
      ),
      child: Column(
        children: [
          ListTile(
            title: Text(
              labelText,
              style: const TextStyle(
                color: Colors.black,
              ),
            ),
            trailing: IconButton(
              icon: isPanelExpanded[index]
                  ? const Icon(Icons.arrow_drop_up)
                  : const Icon(Icons.arrow_drop_down),
              onPressed: () {
                if (!hasSubmitted) {
                  showSubmitAlert();
                } else {
                  setState(() {
                    isPanelExpanded[index] = !isPanelExpanded[index];
                  });
                }
              },
            ),
          ),
          if (isPanelExpanded[index])
            Padding(
              padding: const EdgeInsets.only(top: 8.0),
              child: Text(
                additionalTextContent[index],
                style: const TextStyle(
                  color: Colors.black,
                ),
              ),
            ),
        ],
      ),
    );
  }

  void showSubmitAlert() {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: const Text("Alert"),
          content: const Text("Please submit the answer first."),
          actions: [
            TextButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              child: const Text("OK"),
            ),
          ],
        );
      },
    );
  }

  void showSelectAnswerAlert() {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: const Text("Alert"),
          content: const Text("Please select an answer before submitting."),
          actions: [
            TextButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              child: const Text("OK"),
            ),
          ],
        );
      },
    );
  }
}
