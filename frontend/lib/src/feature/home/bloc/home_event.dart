import 'package:meta/meta.dart';

/// {@template data_state_placeholder}
/// Entity placeholder for DataState
/// {@endtemplate}
typedef DataEntity = Object;

/// {@template data_state}
/// DataState.
/// {@endtemplate}
sealed class DataState extends _$DataStateBase {
  /// Idling state
  /// {@macro data_state}
  const factory DataState.idle({
    required DataEntity? data,
    String message,
  }) = DataState$Idle;

  /// Processing
  /// {@macro data_state}
  const factory DataState.processing({
    required DataEntity? data,
    String message,
  }) = DataState$Processing;

  /// Successful
  /// {@macro data_state}
  const factory DataState.successful({
    required DataEntity? data,
    String message,
  }) = DataState$Successful;

  /// An error has occurred
  /// {@macro data_state}
  const factory DataState.error({
    required DataEntity? data,
    String message,
  }) = DataState$Error;

  /// {@macro data_state}
  const DataState({required super.data, required super.message});
}

/// Idling state
final class DataState$Idle extends DataState  {
  const DataState$Idle({required super.data, super.message = 'Idling'});
}

/// Processing
final class DataState$Processing extends DataState  {
  const DataState$Processing({required super.data, super.message = 'Processing'});
}

/// Successful
final class DataState$Successful extends DataState  {
  const DataState$Successful({required super.data, super.message = 'Successful'});
}

/// Error
final class DataState$Error extends DataState  {
  const DataState$Error({required super.data, super.message = 'An error has occurred.'});
}

/// Pattern matching for [DataState].
typedef DataStateMatch<R, S extends DataState> = R Function(S state);

@immutable
abstract base class _$DataStateBase {
  const _$DataStateBase({required this.data, required this.message});

  /// Data entity payload.
  @nonVirtual
  final DataEntity? data;

  /// Message or state description.
  @nonVirtual
  final String message;

  /// Has data?
  bool get hasData => data != null;

  /// If an error has occurred?
  bool get hasError => maybeMap<bool>(orElse: () => false, error: (_) => true);

  /// Is in progress state?
  bool get isProcessing => maybeMap<bool>(orElse: () => false, processing: (_) => true);

  /// Is in idle state?
  bool get isIdling => !isProcessing;

  /// Pattern matching for [DataState].
  R map<R>({
    required DataStateMatch<R, DataState$Idle> idle,
    required DataStateMatch<R, DataState$Processing> processing,
    required DataStateMatch<R, DataState$Successful> successful,
    required DataStateMatch<R, DataState$Error> error,
  }) =>
      switch (this) {
        DataState$Idle s => idle(s),
        DataState$Processing s => processing(s),
        DataState$Successful s => successful(s),
        DataState$Error s => error(s),
        _ => throw AssertionError(),
      };

  /// Pattern matching for [DataState].
  R maybeMap<R>({
    DataStateMatch<R, DataState$Idle>? idle,
    DataStateMatch<R, DataState$Processing>? processing,
    DataStateMatch<R, DataState$Successful>? successful,
    DataStateMatch<R, DataState$Error>? error,
    required R Function() orElse,
  }) =>
      map<R>(
        idle: idle ?? (_) => orElse(),
        processing: processing ?? (_) => orElse(),
        successful: successful ?? (_) => orElse(),
        error: error ?? (_) => orElse(),
      );

  /// Pattern matching for [DataState].
  R? mapOrNull<R>({
    DataStateMatch<R, DataState$Idle>? idle,
    DataStateMatch<R, DataState$Processing>? processing,
    DataStateMatch<R, DataState$Successful>? successful,
    DataStateMatch<R, DataState$Error>? error,
  }) =>
      map<R?>(
        idle: idle ?? (_) => null,
        processing: processing ?? (_) => null,
        successful: successful ?? (_) => null,
        error: error ?? (_) => null,
      );

  @override
  int get hashCode => data.hashCode;

  @override
  bool operator ==(Object other) => identical(this, other);

  @override
  String toString() => 'DataState{message: $message}';
}
