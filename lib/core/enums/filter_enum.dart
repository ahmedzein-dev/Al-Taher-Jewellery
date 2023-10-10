enum FilterEnum {
  weightLowToHigh,
  weightHighToLow;

  String getStringFilter() {
    switch (this) {
      case FilterEnum.weightLowToHigh:
        return 'السعر: من الاقل الي الاعلي';
      case FilterEnum.weightHighToLow:
        return 'السعر: من الاعلي الي الاقل';
    }
  }
}
