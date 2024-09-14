import 'package:meta/meta.dart';

/// {@template home_state_placeholder}
/// Entity placeholder for HomeState
/// {@endtemplate}
typedef HomeEntity = Object;

/// {@template home_state}
/// HomeState.
/// {@endtemplate}
sealed class HomeState extends _$HomeStateBase {
  /// Idling state
  /// {@macro home_state}
  const factory HomeState.idle({
    required HomeEntity? data,
    String message,
  }) = HomeState$Idle;

  /// Processing
  /// {@macro home_state}
  const factory HomeState.processing({
    required HomeEntity? data,
    String message,
  }) = HomeState$Processing;

  /// Successful
  /// {@macro home_state}
  const factory HomeState.successful({
    required HomeEntity? data,
    String message,
  }) = HomeState$Successful;

  /// An error has occurred
  /// {@macro home_state}
  const factory HomeState.error({
    required HomeEntity? data,
    String message,
  }) = HomeState$Error;

  /// {@macro home_state}
  const HomeState({required super.data, required super.message});
}

/// Idling state
final class HomeState$Idle extends HomeState  {
  const HomeState$Idle({required super.data, super.message = 'Idling'});
}

/// Processing
final class HomeState$Processing extends HomeState  {
  const HomeState$Processing({required super.data, super.message = 'Processing'});
}

/// Successful
final class HomeState$Successful extends HomeState  {
  const HomeState$Successful({required super.data, super.message = 'Successful'});
}

/// Error
final class HomeState$Error extends HomeState  {
  const HomeState$Error({required super.data, super.message = 'An error has occurred.'});
}

/// Pattern matching for [HomeState].
typedef HomeStateMatch<R, S extends HomeState> = R Function(S state);

@immutable
abstract base class _$HomeStateBase {
  const _$HomeStateBase({required this.data, required this.message});

  /// Data entity payload.
  @nonVirtual
  final HomeEntity? data;

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

  /// Pattern matching for [HomeState].
  R map<R>({
    required HomeStateMatch<R, HomeState$Idle> idle,
    required HomeStateMatch<R, HomeState$Processing> processing,
    required HomeStateMatch<R, HomeState$Successful> successful,
    required HomeStateMatch<R, HomeState$Error> error,
  }) =>
      switch (this) {
        HomeState$Idle s => idle(s),
        HomeState$Processing s => processing(s),
        HomeState$Successful s => successful(s),
        HomeState$Error s => error(s),
        _ => throw AssertionError(),
      };

  /// Pattern matching for [HomeState].
  R maybeMap<R>({
    HomeStateMatch<R, HomeState$Idle>? idle,
    HomeStateMatch<R, HomeState$Processing>? processing,
    HomeStateMatch<R, HomeState$Successful>? successful,
    HomeStateMatch<R, HomeState$Error>? error,
    required R Function() orElse,
  }) =>
      map<R>(
        idle: idle ?? (_) => orElse(),
        processing: processing ?? (_) => orElse(),
        successful: successful ?? (_) => orElse(),
        error: error ?? (_) => orElse(),
      );

  /// Pattern matching for [HomeState].
  R? mapOrNull<R>({
    HomeStateMatch<R, HomeState$Idle>? idle,
    HomeStateMatch<R, HomeState$Processing>? processing,
    HomeStateMatch<R, HomeState$Successful>? successful,
    HomeStateMatch<R, HomeState$Error>? error,
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
  String toString() => 'HomeState{message: $message}';
}
