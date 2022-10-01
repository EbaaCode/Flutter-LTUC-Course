import 'package:flutter/material.dart';
import '../widgets/widgets.dart';
import '../models/models.dart';

class QuizScreen extends StatefulWidget {
  @override
  State<QuizScreen> createState() => _QuizScreenState();
}

class _QuizScreenState extends State<QuizScreen> {
  List<Question> questionList = getQuestions();
  int currentQuestionIndex = 0;
  int score = 0;
  Answer? selectedAnswer;
  bool correct = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //backgroundColor: Colors.deepPurple.shade200,

      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [
              Colors.deepPurpleAccent.shade100,
              Colors.deepPurpleAccent,
            ],
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const SizedBox(height: 20),
            Text(
              "Question ${currentQuestionIndex + 1}/${questionList.length.toString()}",
              style: const TextStyle(
                color: Colors.white,
                fontSize: 35,
                fontWeight: FontWeight.w500,
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(10),
              child: Container(
                height: 600,
                padding: const EdgeInsets.all(20),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(30),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    _questionWidget(),
                    const SizedBox(height: 50),
                    _answerList(),
                    _nextButton(),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }

  _questionWidget() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const SizedBox(height: 20),
        Text(
          questionList[currentQuestionIndex].questionText,
          style: TextStyle(
            color: Colors.grey.shade700,
            fontSize: 20,
            fontWeight: FontWeight.w500,
          ),
        )
      ],
    );
  }

  _answerList() {
    return Column(
      children: questionList[currentQuestionIndex]
          .answersList
          .map(
            (e) => _answerButton(e),
          )
          .toList(),
    );
  }

  Widget _answerButton(Answer answer) {
    bool isSelected = answer == selectedAnswer;
    return Container(
      width: double.infinity,
      margin: const EdgeInsets.symmetric(vertical: 7),
      height: 75,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(15),
          ),
          shadowColor: Colors.transparent,
          side: BorderSide(
            width: 2,
            color: isSelected ? Colors.deepPurpleAccent : Colors.grey.shade300,
          ),
          foregroundColor:
              isSelected ? Colors.deepPurpleAccent : Colors.grey.shade400,
          backgroundColor: Colors.transparent,
        ),
        onPressed: () {
          if (selectedAnswer == null) {
            if (answer.isCorrect) {
              correct = true;
              score++;
            } else {
              correct = false;
            }
          }
          setState(() {
            selectedAnswer = answer;
          });
        },
        child: Text(answer.answerText),
      ),
    );
  }

  _nextButton() {
    bool isLastQuestion = false;
    bool isAnswerSelected = false;
    if (currentQuestionIndex == questionList.length - 1) {
      isLastQuestion = true;
    }
    if (selectedAnswer != null) {
      isAnswerSelected = true;
    }
    return SizedBox(
      width: MediaQuery.of(context).size.width * 0.5,
      height: 48,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(15),
          ),
          shadowColor: Colors.transparent,
          backgroundColor: Colors.deepPurpleAccent,
        ),
        onPressed: isAnswerSelected
            ? () {
                if (isLastQuestion) {
                  showDialog(
                    context: context,
                    builder: (_) => _showScoreDialog(),
                  );
                } else {
                  setState(() {
                    showDialog(
                      context: context,
                      builder: (_) => answerResponse(correct),
                    );
                    selectedAnswer = null;
                    currentQuestionIndex++;
                  });
                }
              }
            : null,
        child: const Text("Submit"),
      ),
    );
  }

  _showScoreDialog() {
    bool isPassed = false;
    if (score >= questionList.length * 0.6) {
      isPassed = true;
    }
    String title = isPassed ? "Passed!" : "Failed..";
    return AlertDialog(
      backgroundColor: isPassed ? Colors.green.shade400 : Colors.redAccent,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(20),
      ),
      content: SizedBox(
        height: 225,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              children: [
                const SizedBox(height: 10),
                Text(
                  title,
                  style: const TextStyle(
                    color: Colors.white,
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(height: 5),
                Text(
                  "$score/${questionList.length}",
                  style: const TextStyle(
                    color: Colors.white,
                  ),
                ),
              ],
            ),
            SizedBox(
              width: 200,
              height: 50,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15),
                  ),
                  shadowColor: Colors.transparent,
                  backgroundColor: Colors.white,
                ),
                child: Text(
                  "Restart",
                  style: TextStyle(
                      color:
                          isPassed ? Colors.green.shade400 : Colors.redAccent,
                      fontSize: 15),
                ),
                onPressed: () {
                  Navigator.pop(context);
                  setState(() {
                    currentQuestionIndex = 0;
                    score = 0;
                    selectedAnswer = null;
                  });
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
