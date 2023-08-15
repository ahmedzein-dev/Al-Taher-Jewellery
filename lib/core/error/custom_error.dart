import 'package:equatable/equatable.dart';

class CustomError extends Equatable {
  const CustomError({
    required this.title,
    required this.message,
  });

  final String title;
  final String message;

  @override
  List<Object?> get props => [
        title,
        message,
      ];
}
