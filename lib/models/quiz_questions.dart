class QuizQuestion {
  const QuizQuestion(this.text, this.answers);

  final String text;
  final List<String> answers;

  List<String> getShuffledAnswers() {
    final schuffledList =
        List.of(answers); //creating new list from answers list (copy)
    schuffledList.shuffle(); // and then shuffle it (change it )
    return schuffledList; // and then returned shuffled list
  }
}
