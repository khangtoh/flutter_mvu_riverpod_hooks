import 'package:equatable/equatable.dart';
import 'package:flutter/foundation.dart';

@immutable
class CounterModel extends Equatable {
  final int count;

  const CounterModel({@required this.count});
  const CounterModel.init() : count = 0;

  @override
  List<Object> get props => [count];

  CounterModel copyWith({
    int count,
  }) {
    return CounterModel(
      count: count ?? this.count,
    );
  }
}
