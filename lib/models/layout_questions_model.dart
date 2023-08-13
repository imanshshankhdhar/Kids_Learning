class LayOutQuestion {
  final int id;
  final String text;
  final List<LayOutOption> options;
  bool isLocked;
  LayOutOption? selectedWiidgetOption;
  LayOutOption? correctAnswer;
  // final int timeSeconds;

  LayOutQuestion({
    required this.text,
    required this.options,
    this.isLocked = false,
    this.selectedWiidgetOption,
    required this.id,
    required this.correctAnswer,
    //  required this.timeSeconds
  });

  LayOutQuestion copyWith() {
    return LayOutQuestion(
      id: id,
      text: text,
      options: options
          .map(
            (option) =>
            LayOutOption(text: option.text, isCorrect: option.isCorrect),
      )
          .toList(),
      isLocked: isLocked,
      selectedWiidgetOption: selectedWiidgetOption,
      correctAnswer: correctAnswer,
    );
  }
}

class LayOutOption {
  final String text;
  final bool isCorrect;

  const LayOutOption({
    required this.text,
    required this.isCorrect,
  });
}

final layOutQuestionsList = [
  LayOutQuestion(
    text: "How many colours are there in our national flag?",
    options: [
      const LayOutOption(text: "3", isCorrect: true),
      const LayOutOption(text: "4", isCorrect: false),
      const LayOutOption(text: "6", isCorrect: false),
      const LayOutOption(text: "2", isCorrect: false),
    ],
    id: 0,
    correctAnswer:
    const LayOutOption(text: "3", isCorrect: true),
  ),
  LayOutQuestion(
    text:
    "Which is our national bird?",
    options: [
      const LayOutOption(text: "Peacock", isCorrect: true),
      const LayOutOption(text: "Parrot", isCorrect: false),
      const LayOutOption(text: "Sparrow", isCorrect: false),
      const LayOutOption(text: "Pigeon", isCorrect: false),
    ],
    id: 1,
    correctAnswer: const LayOutOption(text: "Peacock", isCorrect: true),
  ),

  LayOutQuestion(
    text:
    "Which is our national animal?",
    options: [
      const LayOutOption(text: "Tiger", isCorrect: true),
      const LayOutOption(text: "Lion", isCorrect: false),
      const LayOutOption(text: "Elephant", isCorrect: false),
      const LayOutOption(text: "Cheetah", isCorrect: false),
    ],
    id: 2,
    correctAnswer: const LayOutOption(text: "Tiger", isCorrect: true),
  ),

  LayOutQuestion(
    text:
    "Which is our national fruit?",
    options: [
      const LayOutOption(text: "Apple", isCorrect: false),
      const LayOutOption(text: "Orange", isCorrect: false),
      const LayOutOption(text: "Mango ", isCorrect: true),
      const LayOutOption(text: "Grape", isCorrect: false),
    ],
    id: 3,
    correctAnswer:
    const LayOutOption(text: "Mango ", isCorrect: true),
  ),
  // other 4
  LayOutQuestion(
    text:
    "When do we celebrate Independence Day?",
    options: [
      const LayOutOption(text: "16th August", isCorrect: false),
      const LayOutOption(text: "15th July", isCorrect: false),
      const LayOutOption(text: "26th January", isCorrect: false),
      const LayOutOption(text: "15th August", isCorrect: true),
    ],
    id: 4,
    correctAnswer: const LayOutOption(text: "15th August", isCorrect: true),
  ),
  LayOutQuestion(
    text: "When do we celebrate Republic Day?",
    options: [
      const LayOutOption(text: "26th January ", isCorrect: true),
      const LayOutOption(text: "30th January", isCorrect: false),
      const LayOutOption(text: "15th August", isCorrect: false),
      const LayOutOption(text: "25th January", isCorrect: false),
    ],
    id: 5,
    correctAnswer: const LayOutOption(text: "26th January", isCorrect: true),
  ),

  LayOutQuestion(
    text:
    "Which is the largest bird?",
    options: [
      const LayOutOption(text: "Peacock", isCorrect: false),
      const LayOutOption(text: "Pigeon", isCorrect: false),
      const LayOutOption(text: "Sparrow", isCorrect: false),
      const LayOutOption(text: "Ostrich ", isCorrect: true),
    ],
    id: 6,
    correctAnswer:
    const LayOutOption(text: "Ostrich ", isCorrect: true),
  ),
  LayOutQuestion(
    text:
    "How many days are there in a year?",
    options: [
      const LayOutOption(text: "366 Days", isCorrect: false),
      const LayOutOption(text: "365 Days ", isCorrect: true),
      const LayOutOption(text: "367 Days", isCorrect: false),
      const LayOutOption(text: "366 Days", isCorrect: false),
    ],
    id: 7,
    correctAnswer: const LayOutOption(text: "365 Days", isCorrect: true),
  ),
];
