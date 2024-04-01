import 'dart:io';

class Question {
  String questionText;
  bool answer;

  Question(this.questionText, this.answer);
}

class Quiz {
  List<Question> questions;
  int _currentQuestionIndex = 0;
  int score = 0;

  Quiz(this.questions);

  void nextQuestion() {
    if (_currentQuestionIndex < questions.length - 1) {
      _currentQuestionIndex++;
    } else {
      print('Quiz Finished!');
      print('Your score: $score / ${questions.length}');
      exit(0);
    }
  }

  void checkAnswer(bool userAnswer) {
    if (userAnswer == questions[_currentQuestionIndex].answer) {
      print('Correct!');
      score++;
    } else {
      print('Incorrect!');
    }
    nextQuestion();
  }

  void displayQuestion() {
    print(questions[_currentQuestionIndex].questionText);
  }
}

void main() {
  var quiz = Quiz([
    Question('Dart is developed by Google.', true),
    Question('The capital of Pakistan is Lahore.', false),
    Question('Water boils at 100 degrees Celsius.', true),
    Question('Mount Everest is the tallest mountain in the world.', false),
    Question('The Earth is flat.', false),
  ]);

  while (true) {
    print('Q${quiz._currentQuestionIndex + 1}:');
    quiz.displayQuestion();
    print('Enter your answer (true/false):');
    var userInput = stdin.readLineSync()?.toLowerCase();
    if (userInput == 'true' || userInput == 'false') {
      quiz.checkAnswer(userInput == 'true');
    } else {
      print('Invalid input. Please enter true or false.');
    }
  }
}
