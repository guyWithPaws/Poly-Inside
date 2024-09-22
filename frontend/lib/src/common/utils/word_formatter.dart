extension Extenision on String {
  String formatReview(int number) {
    if (number % 10 != 2 &&
        number % 10 != 3 &&
        number % 10 != 4 &&
        number != 12 &&
        number != 13 &&
        number != 14) {
      return 'отзыв';
    }
    return 'отзыва';
  }
}
