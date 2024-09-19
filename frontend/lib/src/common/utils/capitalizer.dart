extension Extension on String {
  String capitalize() {
    var output = '';
    try {
      output = split(' ')
          .map((word) => '${word[0].toUpperCase()}${word.substring(1)}')
          .join(' ');
    } on Error {
      return this;
    }
    return output;
  }
}
