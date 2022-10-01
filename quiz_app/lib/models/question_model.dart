class Question {
  final String questionText;
  final List<Answer> answersList;

  Question(this.questionText, this.answersList);
}

class Answer {
  final String answerText;
  final bool isCorrect;

  Answer(this.answerText, this.isCorrect);
}

List<Question> getQuestions() {
  List<Question> list = [];
  list.add(Question(
    "Which of the following is not a programming language?",
    [
      Answer("TypeScript", false),
      Answer("Python", false),
      Answer("Flutter", true),
      Answer("Java", false),
    ],
  ));
    list.add(Question(
    "Python is _____ programming language.",
    [
      Answer("high-level", true),
      Answer("mid-level", false),
      Answer("low-level", false),
      Answer("none of the above", false),
    ],
  ));

  list.add(Question(
    "Who are the creators of Flutter?",
    [
      Answer("Nokia", false),
      Answer("Samsung", false),
      Answer("Google", true),
      Answer("Apple", false),
    ],
  ));

  list.add(Question(
    "Who made the iPhone?",
    [
      Answer("Apple", true),
      Answer("Microsoft", false),
      Answer("Google", false),
      Answer("Nokia", false),
    ],
  ));

  list.add(Question(
    "Youtube is _________  platform?",
    [
      Answer("Music Sharing", false),
      Answer("Video Sharing", false),
      Answer("Live Streaming", false),
      Answer("All of the above", true),
    ],
  ));

  list.add(Question(
    "Flutter uses the Dart language?",
    [
      Answer("True", true),
      Answer("False", false),
    ],
  ));

  return list;
}
