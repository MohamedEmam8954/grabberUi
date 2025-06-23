import 'package:equatable/equatable.dart';

class QuoteEntity extends Equatable {
  final String authorName;
  final String quote;

  const QuoteEntity({required this.authorName, required this.quote});

  @override
  List<Object?> get props => [authorName, quote];
}
