class Flashcard {
  String word;
  int learningStatus;

  Flashcard({required this.word, required this.learningStatus});

  factory Flashcard.fromJson(Map<String, dynamic> json) {
    return Flashcard(
      word: json['word'],
      learningStatus: json['learningStatus'],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'word': word,
      'learningStatus': learningStatus,
    };
  }
}
