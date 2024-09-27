extension Extenision on String {
  String formatReview(int number) {
    if (number % 10 != 2 || number % 10 != 3 || number % 10 != 4) {
      return 'отзывов';
    } else if(number % 10 == 1) {
      return 'отзыв';
    }
    return 'отзывов';
  }
}
