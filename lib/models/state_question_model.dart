class StateQuestion {
  final int id;
  final String text;
  final List<StateOption> options;
  bool isLocked;
  StateOption? selectedWiidgetOption;
  StateOption? correctAnswer;

  StateQuestion({
    required this.text,
    required this.options,
    this.isLocked = false,
    this.selectedWiidgetOption,
    required this.id,
    required this.correctAnswer,
  });
  StateQuestion copyWith() {
    return StateQuestion(
      id: id,
      text: text,
      options: options
          .map((option) =>
          StateOption(text: option.text, isCorrect: option.isCorrect))
          .toList(),
      isLocked: isLocked,
      selectedWiidgetOption: selectedWiidgetOption,
      correctAnswer: correctAnswer,
    );
  }
}

class StateOption {
  final String text;
  final bool isCorrect;

  const StateOption({
    required this.text,
    required this.isCorrect,
  });
}

final stateQuestionsList = [
  StateQuestion(
    text:
    "How much is 4 + 4?",
    options: [
      const StateOption(text: "9", isCorrect: false),
      const StateOption(text: "7", isCorrect: false),
      const StateOption(text: "8", isCorrect: true),
      const StateOption(text: "6", isCorrect: false),
    ],
    id: 0,
    correctAnswer: const StateOption(text: "8", isCorrect: true),
  ),
  StateQuestion(
    text:
    "Which shape has three corners?",
    options: [
      const StateOption(text: "Rectangle", isCorrect: false),
      const StateOption(text: "Triangle", isCorrect: true),
      const StateOption(text: "Square", isCorrect: false),
      const StateOption(text: "Circle", isCorrect: false),
    ],
    id: 1,
    correctAnswer: const StateOption(text: "Triangle", isCorrect: true),
  ),
  StateQuestion(
    text:
    "What shape is the TV?",
    options: [
      const StateOption(text: "Rectangle", isCorrect: true),
      const StateOption(text: "Square", isCorrect: false),
      const StateOption(text: "Circle", isCorrect: false),
      const StateOption(text: "Triangle", isCorrect: false),
    ],
    id: 2,
    correctAnswer: const StateOption(text: "Rectangle", isCorrect: true),
  ),

  StateQuestion(
    text:
    " A designer makes 25 rupee an hour. How many hours does it take for a designer to make money on a 100 sneaker?",
    options: [
      const StateOption(text: "4 Hour", isCorrect: true),
      const StateOption(text: "6 Hour", isCorrect: false),
      const StateOption(text: "5 Hour", isCorrect: false),
      const StateOption(text: "3 Hour", isCorrect: false),
    ],
    id: 3,
    correctAnswer: const StateOption(text: "4 Hour", isCorrect: true),
  ),
  // other 4
  StateQuestion(
    text:
    "How many centimeters are in 5 meters?",
    options: [
      const StateOption(text: "100 cm", isCorrect: false),
      const StateOption(text: "300 cm", isCorrect: false),
      const StateOption(text: "250 cm", isCorrect: false),
      const StateOption(text: "500 cm", isCorrect: true),
    ],
    id: 4,
    correctAnswer: const StateOption(text: "500 cm", isCorrect: true),
  ),
  StateQuestion(
    text: "How many minutes are there in 5 hours?",
    options: [
      const StateOption(text: "300 min.", isCorrect: true),
      const StateOption(text: "400 min.", isCorrect: false),
      const StateOption(text: "250 min.", isCorrect: false),
      const StateOption(text: "500 min.", isCorrect: false),
    ],
    id: 5,
    correctAnswer: const StateOption(text: "300 min.", isCorrect: true),
  ),

  StateQuestion(
    text: "How much is 15×5?",
    options: [
      const StateOption(text: "60", isCorrect: false),
      const StateOption(text: "50", isCorrect: false),
      const StateOption(text: "70", isCorrect: false),
      const StateOption(text: "75", isCorrect: true),
    ],
    id: 6,
    correctAnswer: const StateOption(text: "75", isCorrect: true),
  ),
  StateQuestion(
    text:
    "How much is 9×8?",
    options: [
      const StateOption(text: "72", isCorrect: true),
      const StateOption(text: "81", isCorrect: false),
      const StateOption(text: "70", isCorrect: false),
      const StateOption(text: "75", isCorrect: false),
    ],
    id: 7,
    correctAnswer: const StateOption(text: "72", isCorrect: true),
  ),

  StateQuestion(
    text:
    "How many times is 10,000 more than 20?",
    options: [
      const StateOption(text: "200 Times", isCorrect: false),
      const StateOption(text: "350 Times", isCorrect: false),
      const StateOption(text: "500 Times", isCorrect: true),
      const StateOption(text: "450 Times", isCorrect: false),
    ],
    id: 8,
    correctAnswer: const StateOption(text: "500 Times", isCorrect: true),
  ),

  StateQuestion(
    text:
    "Write 100 milliliters as a decimal?",
    options: [
      const StateOption(text: "0.1 Liter", isCorrect: true),
      const StateOption(text: "0.2 Liter", isCorrect: false),
      const StateOption(text: "0.3 Liter", isCorrect: false),
      const StateOption(text: "0.15 Liter", isCorrect: false),
    ],
    id: 9,
    correctAnswer: const StateOption(text: "0.1 Liter", isCorrect: true),
  ),

  StateQuestion(
    text:
    "Which number means we have nothing?",
    options: [
      const StateOption(text: "1", isCorrect: false),
      const StateOption(text: "0", isCorrect: true),
      const StateOption(text: "3", isCorrect: false),
      const StateOption(text: "5", isCorrect: false),
    ],
    id: 10,
    correctAnswer: const StateOption(text: "0", isCorrect: true),
  ),

  StateQuestion(
    text:
    "Which number is greater: 4 or 6?",
    options: [
      const StateOption(text: "4", isCorrect: false),
      const StateOption(text: "6", isCorrect: true),
    ],
    id: 11,
    correctAnswer: const StateOption(text: "6", isCorrect: true),
  ),
];
