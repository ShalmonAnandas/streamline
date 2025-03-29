import 'package:equatable/equatable.dart';

// This file defines the `Params` abstract class and its implementation `NoParams`.
// These classes are used to standardize the input parameters for use cases in the application.

/// Abstract class representing the base structure for parameters used in use cases.
///
/// Purpose:
/// - Provides a common interface for defining input parameters for use cases.
/// - Ensures that all parameter classes implement the `Equatable` interface for value comparison.
///
/// Properties:
/// - `toJson`: A getter that returns a `Map<String, dynamic>` representation of the parameters.
///   This is intended to be implemented by subclasses to serialize the parameters.
abstract class Params extends Equatable {
  /// Converts the parameters into a JSON-compatible map.
  ///
  /// This getter must be implemented by subclasses to provide a serialized representation
  /// of the parameters.
  Map<String, dynamic> get toJson;

  /// Overrides the `props` getter from `Equatable` to include the `toJson` property.
  /// This ensures that parameter objects can be compared based on their serialized values.
  @override
  List<Object?> get props => [toJson];
}

/// A concrete implementation of `Params` that represents the absence of parameters.
///
/// Purpose:
/// - Used in use cases that do not require any input parameters.
///
/// Overrides:
/// - `props`: Returns an empty list, as there are no properties to compare.
/// - `toJson`: Throws an `UnimplementedError`, as serialization is not applicable for `NoParams`.
class NoParams extends Params {
  /// Overrides the `props` getter to return an empty list.
  /// This indicates that `NoParams` has no properties to compare.
  @override
  List<Object?> get props => [];

  /// Throws an `UnimplementedError` because `NoParams` does not support serialization.
  @override
  Map<String, dynamic> get toJson => throw UnimplementedError();
}
