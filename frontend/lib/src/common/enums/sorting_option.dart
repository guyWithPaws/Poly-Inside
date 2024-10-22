enum SortingOption {
  alphabeticalOrderAsc,
  alphabeticalOrderDesc,
  ratingOrderAsc,
  ratingOrderDesc;

  int get castToInt {
    switch (this) {
      case alphabeticalOrderAsc:
        return 0;
      case alphabeticalOrderDesc:
        return 1;
      case ratingOrderAsc:
        return 2;
      case ratingOrderDesc:
        return 3;
      default:
        return 0;
    }
  }

  SortingOption fromInt(int value) {
    switch (value) {
      case 0:
        return alphabeticalOrderAsc;
      case 1:
        return alphabeticalOrderDesc;
      case 2:
        return ratingOrderAsc;
      case 3:
        return ratingOrderDesc;
      default:
        return alphabeticalOrderAsc;
    }
  }
}
