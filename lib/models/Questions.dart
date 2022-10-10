class Question {
  final int? id, answer;
  final String? question;
  final List<String>? options;

  Question({this.id, this.question, this.answer, this.options});
}

const List sample_data = [
  {
    "id": 1,
    "question":
        "Winters here ________ be really cold sometimes, so make sure you bring warm clothes!",
    "options": ['maight', 'may', 'can', 'could'],
    "answer_index": 1,
  },
  {
    "id": 2,
    "question":
        "I _______ spent time abroad when I was a student, I found it easier to get used to ________ in another country.",
    "options": [
      'Having … live',
      'Having … living',
      'To have … living',
      'Have … live'
    ],
    "answer_index": 3,
  },
  {
    "id": 3,
    "question": "I wish he ________ so rude to people when we go out.",
    "options": ["wouldn't be", "hadn't been", "won't be", "didn't be"],
    "answer_index": 1,
  },
  {
    "id": 4,
    "question": "That smells good! What ________.",
    "options": [
      'do you cook?',
      'are you cook?',
      ' are you cooking?',
      ' do you cooking?'
    ],
    "answer_index": 3,
  },
  {
    "id": 5,
    "question": "I’ll send it to you ________ I get the money.",
    "options": ['until', 'unless', 'in case', ' as soon as'],
    "answer_index": 1,
  },
  {
    "id": 6,
    "question": "You ______ the cleaning. I would have done it tonight.",
    "options": [
      "needn't have done",
      "couldn't have done",
      "can't have done",
      "wouldn't have done"
    ],
    "answer_index": 1,
  },
  {
    "id": 7,
    "question": "Tim ______ work tomorrow",
    "options": ['is not  going', 'is not ', 'is not going', 'is not to'],
    "answer_index": 3,
  },
  {
    "id": 8,
    "question": "I went to the shop ______ some chocolate.",
    "options": ["for buying", "for buy", "to buy", "buy"],
    "answer_index": 3,
  },
  {
    "id": 9,
    "question": "That smells good! What ________.",
    "options": [
      'do you cook?',
      'are you cook?',
      ' are you cooking?',
      ' do you cooking?'
    ],
    "answer_index": 3,
  },
  {
    "id": 10,
    "question": "Have you visited London? ______.",
    "options": ['not yet', 'never', 'not', ' already'],
    "answer_index": 1,
  },
];
