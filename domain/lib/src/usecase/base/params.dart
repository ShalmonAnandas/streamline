import 'package:equatable/equatable.dart';

abstract class Params extends Equatable{
  Map<String, dynamic> get toJson;

  @override
  List<Object?> get props => [toJson];
}

class NoParams extends Params {
  @override
  List<Object?> get props => [];
  
  @override
  Map<String, dynamic> get toJson => throw UnimplementedError();
}