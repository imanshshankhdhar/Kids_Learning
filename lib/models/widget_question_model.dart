class WidgetQuestion {
  final int id;
  final String text;
  final List<WiidgetOption> options;
  bool isLocked;
  WiidgetOption? selectedWiidgetOption;
  WiidgetOption correctAnswer;

  WidgetQuestion({
    required this.text,
    required this.options,
    this.isLocked = false,
    this.selectedWiidgetOption,
    required this.id,
    required this.correctAnswer,
  });

  WidgetQuestion copyWith() {
    return WidgetQuestion(
      id: id,
      text: text,
      options: options
          .map((option) =>
          WiidgetOption(text: option.text, isCorrect: option.isCorrect))
          .toList(),
      isLocked: isLocked,
      selectedWiidgetOption: selectedWiidgetOption,
      correctAnswer: correctAnswer,
    );
  }
}

class WiidgetOption {
  final String? text;
  final bool? isCorrect;

  const WiidgetOption({
    this.text,
    this.isCorrect,
  });
}

final widgetQuestionsList = [
  WidgetQuestion(
    text:
    "The slogan Jai Hind was coined by?",
    options: [
      const WiidgetOption(text: "Abid Hasan", isCorrect: true),
      const WiidgetOption(text: "Bhagat Singh", isCorrect: false),
      const WiidgetOption(text: "Indira Gandhi", isCorrect: false),
      const WiidgetOption(text: "Mohan Singh", isCorrect: false),
    ],
    id: 0,
    correctAnswer: const WiidgetOption(text: "Abid Hasan", isCorrect: true),
  ),
  WidgetQuestion(
      text:
      "Who founded the Indian National Army (Azad Hind Fauj) to overthrow British Empire from India?",
      options: [
        const WiidgetOption(text: "Bhagat Singh", isCorrect: false),
        const WiidgetOption(text: "Indira Gandhi", isCorrect: false),
        const WiidgetOption(text: "Mohan Sigh", isCorrect: false),
        const WiidgetOption(text: "Subhash Chandra Bose", isCorrect: true),
      ],
      id: 1,
      correctAnswer: const WiidgetOption(text: "Subhash Chandra Bose", isCorrect: true)),
  WidgetQuestion(
      text:
      " Who is also known as the Iron Man of India?",
      options: [
        const WiidgetOption(text: "Lal Bahadur Shastri", isCorrect: false),
        const WiidgetOption(text: "Murli Manohar Joshi", isCorrect: false),
        const WiidgetOption(text: "Sardar Vallabhbhai Patel", isCorrect: true),
        const WiidgetOption(text: "Subhas Chandra Bose", isCorrect: false),
      ],
      id: 2,
      correctAnswer:
      const WiidgetOption(text: "Sardar Vallabhbhai Patel", isCorrect: true)),
  WidgetQuestion(
      text:
      "Who was the second Prime Minister of India?",
      options: [
        const WiidgetOption(text: "Gulzarilal Nanda", isCorrect: false),
        const WiidgetOption(text: "Indira Gandhi", isCorrect: false),
        const WiidgetOption(text: "Lal Bahadur Shastri", isCorrect: true),
        const WiidgetOption(text: "Rajendra Prasad", isCorrect: false),
      ],
      id: 3,
      correctAnswer: const WiidgetOption(text: "Lal Bahadur Shastri", isCorrect: true)),
  WidgetQuestion(
      text:
      "  Name the chief architect of the Indian Constitution? ",
      options: [
        const WiidgetOption(text: "Abul Kalam Azad", isCorrect: false),
        const WiidgetOption(text: "Bhimrao Ambedkar", isCorrect: true),
        const WiidgetOption(text: " Jawaharlal Nehru", isCorrect: false),
        const WiidgetOption(text: "Sardar Vallabhbhai Patel", isCorrect: false),
      ],
      id: 4,
      correctAnswer: const WiidgetOption(text: "Bhimrao Ambedkar", isCorrect: true)),
  WidgetQuestion(
      text:
      " Every year on the 15the August, Independence Day of India, the Prime Minister hoists the Indian “Tricolour Flag” at the gate of this historical fort?",
      options: [
        const WiidgetOption(text: "Humayun’s Tomb", isCorrect: false),
        const WiidgetOption(text: "Jama Masjid", isCorrect: false),
        const WiidgetOption(text: "Red Fort – Delhi", isCorrect: true),
        const WiidgetOption(text: "Qutub Minar", isCorrect: false),
      ],
      id: 5,
      correctAnswer:
      const WiidgetOption(text: "Red Fort – Delhi", isCorrect: true)),
  WidgetQuestion(
      text:
      " Quit India Movement was started by?",
      options: [
        const WiidgetOption(text: "Bhagat Singh", isCorrect: false),
        const WiidgetOption(text: "Jawaharlal Nehru", isCorrect: false),
        const WiidgetOption(text: "Mahatma Gandhi", isCorrect: true),
        const WiidgetOption(text: "Shivaram Rajguru", isCorrect: false),
      ],
      id: 6,
      correctAnswer: const WiidgetOption(text: "Mahatma Gandhi", isCorrect: true)),
  WidgetQuestion(
      text:
      "Name the first woman Prime Minister of India?",
      options: [
        const WiidgetOption(text: " Annie Besant", isCorrect: false),
        const WiidgetOption(text: "Indira Gandhi", isCorrect: true),
        const WiidgetOption(text: "Sarojini Naidu", isCorrect: false),
        const WiidgetOption(text: "Sucheta Kriplani", isCorrect: false),
      ],
      id: 7,
      correctAnswer:
      const WiidgetOption(text: "Indira Gandhi", isCorrect: true)),
  WidgetQuestion(
      text:
      "Who wrote Vande Mataram? ",
      options: [
        const WiidgetOption(text: "Bankim Chandra Chattopadhyay", isCorrect: true),
        const WiidgetOption(text: " Mahatma Gandhi", isCorrect: false),
        const WiidgetOption(text: " Rabindranath Tagore", isCorrect: false),
        const WiidgetOption(text: "Sharat Chandra Chattopadhyay", isCorrect: false),
      ],
      id: 8,
      correctAnswer: const WiidgetOption(text: "Bankim Chandra Chattopadhyay", isCorrect: true)),
  WidgetQuestion(
      text:
      "The Nation Anthem was composed by?",
      options: [
        const WiidgetOption(text: "Bankim Chandra Chattopadhyay", isCorrect: false),
        const WiidgetOption(text: "Mahatma Gandhi", isCorrect: false),
        const WiidgetOption(text: "Rabindranath Tagore", isCorrect: true),
        const WiidgetOption(text: "Subhash Chandra Bose", isCorrect: false),
      ],
      id: 9,
      correctAnswer: const WiidgetOption(text: "Rabindranath Tagore", isCorrect: true)),
  WidgetQuestion(
      text:
      "Where did the formation of Azad Hind Fauj take place?",
      options: [
        const WiidgetOption(text: "Germany", isCorrect: false),
        const WiidgetOption(text: "Russia", isCorrect: false),
        const WiidgetOption(text: "Singapore", isCorrect: true),
        const WiidgetOption(text: "Thailand", isCorrect: false),
      ],
      id: 10,
      correctAnswer: const WiidgetOption(
          text: "Singapore", isCorrect: true)),
  WidgetQuestion(
      text:
      "Who was the founder of Bihar Vidyapeeth?",
      options: [
        const WiidgetOption(text: "Abdul Kalam Azad", isCorrect: false),
        const WiidgetOption(text: "JB Kriplani", isCorrect: false),
        const WiidgetOption(text: "Lok Manya Tilak", isCorrect: false),
        const WiidgetOption(text: "Dr. Rajendra Prasad", isCorrect: true),
      ],
      id: 11,
      correctAnswer: const WiidgetOption(text: "Dr. Rajendra Prasad", isCorrect: true)),
  WidgetQuestion(
      text:
      "Who is known as the “Father of the Nation.?",
      options: [
        const WiidgetOption(text: "Ambedkar", isCorrect: false),
        const WiidgetOption(text: "Mahatma Gandhi", isCorrect: true),
        const WiidgetOption(text: "Dr Rajendra Prasad", isCorrect: false),
        const WiidgetOption(text: " Sardar Vallabhbhai Patel", isCorrect: false),
      ],
      id: 12,
      correctAnswer: const WiidgetOption(text: "Mahatma Gandhi", isCorrect: true)),
  WidgetQuestion(
      text:
      " Name the city of the Indus Valley Civilization, which was discovered first?",
      options: [
        const WiidgetOption(text: "Amri", isCorrect: false),
        const WiidgetOption(text: "Harappa", isCorrect: true),
        const WiidgetOption(text: "Lothal", isCorrect: false),
        const WiidgetOption(text: "Rangpur", isCorrect: false),
      ],
      id: 13,
      correctAnswer: const WiidgetOption(text: "Harappa", isCorrect: true)),
  WidgetQuestion(
    text:
    "What did the Indus Valley Civilization people usually build their houses with?",
    options: [
      const WiidgetOption(text: "Mud", isCorrect: false),
      const WiidgetOption(text: "Pucca bricks", isCorrect: true),
      const WiidgetOption(text: "Stone", isCorrect: false),
      const WiidgetOption(text: "Wood", isCorrect: false),
    ],
    id: 14,
    correctAnswer:
    const WiidgetOption(text: "Pucca bricks", isCorrect: true),
  ),
  WidgetQuestion(
    text:
    " Which among the following is the oldest text?",
    options: [
      const WiidgetOption(text: "Gita", isCorrect: false),
      const WiidgetOption(text: "Mahabharat", isCorrect: false),
      const WiidgetOption(text: "Ramayana", isCorrect: false),
      const WiidgetOption(text: "Rigveda", isCorrect: true),
    ],
    id: 15,
    correctAnswer: const WiidgetOption(text: "Rigveda", isCorrect: true),
  ),
];
