// This file defines the `BaseUseCase` abstract class, which serves as a blueprint for all use cases in the application.
// A use case represents a specific business logic operation, encapsulating its execution and dependencies.
// The `BaseUseCase` class uses generics to allow flexibility in defining the error type, parameters, and return type.

import 'package:dartz/dartz.dart';
import 'package:domain/src/model/error/base_error.dart';
import 'package:domain/src/usecase/base/params.dart';

/// Abstract class representing the base structure for a use case.
///
/// Generics:
/// - `E`: Extends `BaseError`, representing the type of error that can occur during execution.
/// - `P`: Extends `Params`, representing the type of parameters required for the use case.
/// - `T`: Represents the type of data returned on successful execution.
abstract class BaseUseCase<E extends BaseError, P extends Params, T> {
  /// Executes the use case with the provided parameters.
  ///
  /// Parameters:
  /// - `params`: An instance of `P` containing the input data required for the use case.
  ///
  /// Returns:
  /// - A `Future` of `Either<E, T>`:
  ///   - `Left<E>`: Represents an error of type `E` if the use case fails.
  ///   - `Right<T>`: Represents the result of type `T` if the use case succeeds.
  Future<Either<E, T>> execute(P params);
}
