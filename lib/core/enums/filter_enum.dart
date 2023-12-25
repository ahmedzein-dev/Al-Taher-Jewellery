enum FilterEnum {
  weightLowToHigh,
  weightHighToLow;

  String getStringFilter() {
    switch (this) {
      case FilterEnum.weightLowToHigh:
        return 'الوزن: من الاقل الي الاعلي';
      case FilterEnum.weightHighToLow:
        return 'الوزن: من الاعلي الي الاقل';
    }
  }
}
