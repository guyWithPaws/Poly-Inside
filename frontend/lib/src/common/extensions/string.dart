extension Extenision on String {
  String formatReview(int number) {
    if (number == 11 || number == 12 || number == 13) {
      return 'отзывов';
    } else if (number % 10 == 1) {
      return 'отзыв';
    } else if (number % 10 == 2 || number % 10 == 3 || number % 10 == 4) {
      return 'отзыва';
    } else {
      return 'отзывов';
    }
  }
}

extension Extension on String {
  String capitalize() {
    var output = '';
    try {
      output = split(' ').map((word) => '${word[0].toUpperCase()}${word.substring(1)}').join(' ');
    } on RangeError {
      return this;
    }
    return output;
  }
}
