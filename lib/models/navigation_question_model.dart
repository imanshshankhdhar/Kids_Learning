class NavigateQuestion {
  final int id;
  final String text;
  final List<NavigationsOption> options;
  bool isLocked;
  NavigationsOption? selectedWiidgetOption;
  NavigationsOption? correctAnswer;

  NavigateQuestion({
    required this.text,
    required this.options,
    this.isLocked = false,
    this.selectedWiidgetOption,
    required this.id,
    required this.correctAnswer,
  });

  NavigateQuestion copyWith() {
    return NavigateQuestion(
      id: id,
      text: text,
      options: options
          .map((option) =>
          NavigationsOption(text: option.text, isCorrect: option.isCorrect))
          .toList(),
      isLocked: isLocked,
      selectedWiidgetOption: selectedWiidgetOption,
      correctAnswer: correctAnswer,
    );
  }
}

class NavigationsOption {
  final String text;
  final bool isCorrect;

  const NavigationsOption({
    required this.text,
    required this.isCorrect,
  });
}

final navigateQuestionsList = [
  NavigateQuestion(
    text:
    "What is the largest organ in the human body?",
    options: [
      const NavigationsOption(text: "The liver", isCorrect: false),
      const NavigationsOption(text: "Heart", isCorrect: false),
      const NavigationsOption(text: "Skin", isCorrect: true),
      const NavigationsOption(text: "Kidneys", isCorrect: false),
    ],
    id: 0,
    correctAnswer: const NavigationsOption(text: "Skin", isCorrect: true),
  ),
  NavigateQuestion(
    text:
    "What is the largest organ inside the human body?",
    options: [
      const NavigationsOption(text: "Heart", isCorrect: false),
      const NavigationsOption(text: "Liver", isCorrect: true),
      const NavigationsOption(text: "Kidney", isCorrect: false),
      const NavigationsOption(text: "Stomach", isCorrect: false),
    ],
    id: 1,
    correctAnswer:
    const NavigationsOption(text: "Liver", isCorrect: true),
  ),
  NavigateQuestion(
    text:
    "What is the largest mammal on Earth?",
    options: [
      const NavigationsOption(text: "The blue whale", isCorrect: true),
      const NavigationsOption(text: "Shark", isCorrect: false),
      const NavigationsOption(text: "Dolphin", isCorrect: false),
      const NavigationsOption(text: "Star Fish", isCorrect: false),
    ],
    id: 2,
    correctAnswer: const NavigationsOption(text: "The blue whale", isCorrect: true),
  ),

  NavigateQuestion(
    text:
    " What is the largest land animal on Earth? ",
    options: [
      const NavigationsOption(text: "The African elephant.", isCorrect: true),
      const NavigationsOption(text: "The Lion", isCorrect: false),
      const NavigationsOption(text: "Elephant", isCorrect: false),
      const NavigationsOption(text: "Camel", isCorrect: false),
    ],
    id: 3,
    correctAnswer:
    const NavigationsOption(text: "The African elephant.", isCorrect: true),
  ),
  // other 4
  NavigateQuestion(
    text:
    " What is the symbol for the element hydrogen?",
    options: [
      const NavigationsOption(text: "K", isCorrect: false),
      const NavigationsOption(text: "A", isCorrect: false),
      const NavigationsOption(text: "h", isCorrect: false),
      const NavigationsOption(text: "H", isCorrect: true),
    ],
    id: 4,
    correctAnswer: const NavigationsOption(text: "H", isCorrect: true,
    ),
  ),
  NavigateQuestion(
    text:
    " What is the chemical symbol for oxygen?",
    options: [
      const NavigationsOption(text: "O", isCorrect: true),
      const NavigationsOption(text: "X", isCorrect: false),
      const NavigationsOption(text: "o", isCorrect: false),
      const NavigationsOption(text: "H", isCorrect: false),
    ],
    id: 5,
    correctAnswer: const NavigationsOption(text: "O", isCorrect: true),
  ),

  NavigateQuestion(
    text: "What is the smallest unit of matter called?",
    options: [
      const NavigationsOption(text: "Proton", isCorrect: false),
      const NavigationsOption(text: "Neutron", isCorrect: false),
      const NavigationsOption(text: "Oxygen", isCorrect: false),
      const NavigationsOption(text: "An Atom", isCorrect: true),
    ],
    id: 6,
    correctAnswer:
    const NavigationsOption(text: "An Atom", isCorrect: true),
  ),
  NavigateQuestion(
    text:
    "What is the formula for water?" ,
    options: [
      const NavigationsOption(text: "H2O", isCorrect: true),
      const NavigationsOption(text: "CO2", isCorrect: false),
      const NavigationsOption(text: "FCO3", isCorrect: false),
      const NavigationsOption(text: "H2SO4", isCorrect: false),
    ],
    id: 7,
    correctAnswer: const NavigationsOption(text: "H2O", isCorrect: true),
  ),

  NavigateQuestion(
    text:
    "What is the closest celestial body to Earth?",
    options: [
      const NavigationsOption(text: "Mars", isCorrect: false),
      const NavigationsOption(text: "Jupiter", isCorrect: false),
      const NavigationsOption(text: "Moon", isCorrect: true),
      const NavigationsOption(text: "Pluto", isCorrect: false),
    ],
    id: 8,
    correctAnswer:
    const NavigationsOption(text: "Moon", isCorrect: true),
  ),

  NavigateQuestion(
    text:
    "Which planet is known as the “Red Planet”?",
    options: [
      const NavigationsOption(text: "Saturn", isCorrect: false),
      const NavigationsOption(text: "Jupiter", isCorrect: false),
      const NavigationsOption(text: "Mars", isCorrect: true),
      const NavigationsOption(text: "Pluto", isCorrect: false),
    ],
    id: 8,
    correctAnswer:
    const NavigationsOption(text: "Mars", isCorrect: true),
  ),

  NavigateQuestion(
    text:
    "What is the largest planet in our solar system?",
    options: [
      const NavigationsOption(text: "Mars", isCorrect: false),
      const NavigationsOption(text: "Sun", isCorrect: false),
      const NavigationsOption(text: "Jupiter", isCorrect: true),
      const NavigationsOption(text: "Pluto", isCorrect: false),
    ],
    id: 8,
    correctAnswer:
    const NavigationsOption(text: "Jupiter", isCorrect: true),
  ),

  NavigateQuestion(
    text:
    "Which planet has the most moons? ",
    options: [
      const NavigationsOption(text: "Mars", isCorrect: false),
      const NavigationsOption(text: "Saturn", isCorrect: false),
      const NavigationsOption(text: "Jupiter", isCorrect: true),
      const NavigationsOption(text: "Pluto", isCorrect: false),
    ],
    id: 8,
    correctAnswer:
    const NavigationsOption(text: "Jupiter", isCorrect: true),
  ),
];
