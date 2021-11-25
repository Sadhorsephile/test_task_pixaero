// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$QuizStateTearOff {
  const _$QuizStateTearOff();

  _QuiezStateLoading loading() {
    return const _QuiezStateLoading();
  }

  _QuiezStateCommon common(QuizDto quiz) {
    return _QuiezStateCommon(
      quiz,
    );
  }

  _QuiezStateOnCorrectAnswer onCorrectAnswer(String imgUrl) {
    return _QuiezStateOnCorrectAnswer(
      imgUrl,
    );
  }

  _QuiezStateOnIncorrectAnswer onIncorrectAnswer(String imgUrl) {
    return _QuiezStateOnIncorrectAnswer(
      imgUrl,
    );
  }

  _QuiezStateOnError onError(String errorMessage) {
    return _QuiezStateOnError(
      errorMessage,
    );
  }
}

/// @nodoc
const $QuizState = _$QuizStateTearOff();

/// @nodoc
mixin _$QuizState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(QuizDto quiz) common,
    required TResult Function(String imgUrl) onCorrectAnswer,
    required TResult Function(String imgUrl) onIncorrectAnswer,
    required TResult Function(String errorMessage) onError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(QuizDto quiz)? common,
    TResult Function(String imgUrl)? onCorrectAnswer,
    TResult Function(String imgUrl)? onIncorrectAnswer,
    TResult Function(String errorMessage)? onError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(QuizDto quiz)? common,
    TResult Function(String imgUrl)? onCorrectAnswer,
    TResult Function(String imgUrl)? onIncorrectAnswer,
    TResult Function(String errorMessage)? onError,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_QuiezStateLoading value) loading,
    required TResult Function(_QuiezStateCommon value) common,
    required TResult Function(_QuiezStateOnCorrectAnswer value) onCorrectAnswer,
    required TResult Function(_QuiezStateOnIncorrectAnswer value)
        onIncorrectAnswer,
    required TResult Function(_QuiezStateOnError value) onError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_QuiezStateLoading value)? loading,
    TResult Function(_QuiezStateCommon value)? common,
    TResult Function(_QuiezStateOnCorrectAnswer value)? onCorrectAnswer,
    TResult Function(_QuiezStateOnIncorrectAnswer value)? onIncorrectAnswer,
    TResult Function(_QuiezStateOnError value)? onError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_QuiezStateLoading value)? loading,
    TResult Function(_QuiezStateCommon value)? common,
    TResult Function(_QuiezStateOnCorrectAnswer value)? onCorrectAnswer,
    TResult Function(_QuiezStateOnIncorrectAnswer value)? onIncorrectAnswer,
    TResult Function(_QuiezStateOnError value)? onError,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $QuizStateCopyWith<$Res> {
  factory $QuizStateCopyWith(QuizState value, $Res Function(QuizState) then) =
      _$QuizStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$QuizStateCopyWithImpl<$Res> implements $QuizStateCopyWith<$Res> {
  _$QuizStateCopyWithImpl(this._value, this._then);

  final QuizState _value;
  // ignore: unused_field
  final $Res Function(QuizState) _then;
}

/// @nodoc
abstract class _$QuiezStateLoadingCopyWith<$Res> {
  factory _$QuiezStateLoadingCopyWith(
          _QuiezStateLoading value, $Res Function(_QuiezStateLoading) then) =
      __$QuiezStateLoadingCopyWithImpl<$Res>;
}

/// @nodoc
class __$QuiezStateLoadingCopyWithImpl<$Res>
    extends _$QuizStateCopyWithImpl<$Res>
    implements _$QuiezStateLoadingCopyWith<$Res> {
  __$QuiezStateLoadingCopyWithImpl(
      _QuiezStateLoading _value, $Res Function(_QuiezStateLoading) _then)
      : super(_value, (v) => _then(v as _QuiezStateLoading));

  @override
  _QuiezStateLoading get _value => super._value as _QuiezStateLoading;
}

/// @nodoc

class _$_QuiezStateLoading implements _QuiezStateLoading {
  const _$_QuiezStateLoading();

  @override
  String toString() {
    return 'QuizState.loading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _QuiezStateLoading);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(QuizDto quiz) common,
    required TResult Function(String imgUrl) onCorrectAnswer,
    required TResult Function(String imgUrl) onIncorrectAnswer,
    required TResult Function(String errorMessage) onError,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(QuizDto quiz)? common,
    TResult Function(String imgUrl)? onCorrectAnswer,
    TResult Function(String imgUrl)? onIncorrectAnswer,
    TResult Function(String errorMessage)? onError,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(QuizDto quiz)? common,
    TResult Function(String imgUrl)? onCorrectAnswer,
    TResult Function(String imgUrl)? onIncorrectAnswer,
    TResult Function(String errorMessage)? onError,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_QuiezStateLoading value) loading,
    required TResult Function(_QuiezStateCommon value) common,
    required TResult Function(_QuiezStateOnCorrectAnswer value) onCorrectAnswer,
    required TResult Function(_QuiezStateOnIncorrectAnswer value)
        onIncorrectAnswer,
    required TResult Function(_QuiezStateOnError value) onError,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_QuiezStateLoading value)? loading,
    TResult Function(_QuiezStateCommon value)? common,
    TResult Function(_QuiezStateOnCorrectAnswer value)? onCorrectAnswer,
    TResult Function(_QuiezStateOnIncorrectAnswer value)? onIncorrectAnswer,
    TResult Function(_QuiezStateOnError value)? onError,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_QuiezStateLoading value)? loading,
    TResult Function(_QuiezStateCommon value)? common,
    TResult Function(_QuiezStateOnCorrectAnswer value)? onCorrectAnswer,
    TResult Function(_QuiezStateOnIncorrectAnswer value)? onIncorrectAnswer,
    TResult Function(_QuiezStateOnError value)? onError,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class _QuiezStateLoading implements QuizState {
  const factory _QuiezStateLoading() = _$_QuiezStateLoading;
}

/// @nodoc
abstract class _$QuiezStateCommonCopyWith<$Res> {
  factory _$QuiezStateCommonCopyWith(
          _QuiezStateCommon value, $Res Function(_QuiezStateCommon) then) =
      __$QuiezStateCommonCopyWithImpl<$Res>;
  $Res call({QuizDto quiz});
}

/// @nodoc
class __$QuiezStateCommonCopyWithImpl<$Res>
    extends _$QuizStateCopyWithImpl<$Res>
    implements _$QuiezStateCommonCopyWith<$Res> {
  __$QuiezStateCommonCopyWithImpl(
      _QuiezStateCommon _value, $Res Function(_QuiezStateCommon) _then)
      : super(_value, (v) => _then(v as _QuiezStateCommon));

  @override
  _QuiezStateCommon get _value => super._value as _QuiezStateCommon;

  @override
  $Res call({
    Object? quiz = freezed,
  }) {
    return _then(_QuiezStateCommon(
      quiz == freezed
          ? _value.quiz
          : quiz // ignore: cast_nullable_to_non_nullable
              as QuizDto,
    ));
  }
}

/// @nodoc

class _$_QuiezStateCommon implements _QuiezStateCommon {
  const _$_QuiezStateCommon(this.quiz);

  @override
  final QuizDto quiz;

  @override
  String toString() {
    return 'QuizState.common(quiz: $quiz)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _QuiezStateCommon &&
            (identical(other.quiz, quiz) || other.quiz == quiz));
  }

  @override
  int get hashCode => Object.hash(runtimeType, quiz);

  @JsonKey(ignore: true)
  @override
  _$QuiezStateCommonCopyWith<_QuiezStateCommon> get copyWith =>
      __$QuiezStateCommonCopyWithImpl<_QuiezStateCommon>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(QuizDto quiz) common,
    required TResult Function(String imgUrl) onCorrectAnswer,
    required TResult Function(String imgUrl) onIncorrectAnswer,
    required TResult Function(String errorMessage) onError,
  }) {
    return common(quiz);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(QuizDto quiz)? common,
    TResult Function(String imgUrl)? onCorrectAnswer,
    TResult Function(String imgUrl)? onIncorrectAnswer,
    TResult Function(String errorMessage)? onError,
  }) {
    return common?.call(quiz);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(QuizDto quiz)? common,
    TResult Function(String imgUrl)? onCorrectAnswer,
    TResult Function(String imgUrl)? onIncorrectAnswer,
    TResult Function(String errorMessage)? onError,
    required TResult orElse(),
  }) {
    if (common != null) {
      return common(quiz);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_QuiezStateLoading value) loading,
    required TResult Function(_QuiezStateCommon value) common,
    required TResult Function(_QuiezStateOnCorrectAnswer value) onCorrectAnswer,
    required TResult Function(_QuiezStateOnIncorrectAnswer value)
        onIncorrectAnswer,
    required TResult Function(_QuiezStateOnError value) onError,
  }) {
    return common(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_QuiezStateLoading value)? loading,
    TResult Function(_QuiezStateCommon value)? common,
    TResult Function(_QuiezStateOnCorrectAnswer value)? onCorrectAnswer,
    TResult Function(_QuiezStateOnIncorrectAnswer value)? onIncorrectAnswer,
    TResult Function(_QuiezStateOnError value)? onError,
  }) {
    return common?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_QuiezStateLoading value)? loading,
    TResult Function(_QuiezStateCommon value)? common,
    TResult Function(_QuiezStateOnCorrectAnswer value)? onCorrectAnswer,
    TResult Function(_QuiezStateOnIncorrectAnswer value)? onIncorrectAnswer,
    TResult Function(_QuiezStateOnError value)? onError,
    required TResult orElse(),
  }) {
    if (common != null) {
      return common(this);
    }
    return orElse();
  }
}

abstract class _QuiezStateCommon implements QuizState {
  const factory _QuiezStateCommon(QuizDto quiz) = _$_QuiezStateCommon;

  QuizDto get quiz;
  @JsonKey(ignore: true)
  _$QuiezStateCommonCopyWith<_QuiezStateCommon> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$QuiezStateOnCorrectAnswerCopyWith<$Res> {
  factory _$QuiezStateOnCorrectAnswerCopyWith(_QuiezStateOnCorrectAnswer value,
          $Res Function(_QuiezStateOnCorrectAnswer) then) =
      __$QuiezStateOnCorrectAnswerCopyWithImpl<$Res>;
  $Res call({String imgUrl});
}

/// @nodoc
class __$QuiezStateOnCorrectAnswerCopyWithImpl<$Res>
    extends _$QuizStateCopyWithImpl<$Res>
    implements _$QuiezStateOnCorrectAnswerCopyWith<$Res> {
  __$QuiezStateOnCorrectAnswerCopyWithImpl(_QuiezStateOnCorrectAnswer _value,
      $Res Function(_QuiezStateOnCorrectAnswer) _then)
      : super(_value, (v) => _then(v as _QuiezStateOnCorrectAnswer));

  @override
  _QuiezStateOnCorrectAnswer get _value =>
      super._value as _QuiezStateOnCorrectAnswer;

  @override
  $Res call({
    Object? imgUrl = freezed,
  }) {
    return _then(_QuiezStateOnCorrectAnswer(
      imgUrl == freezed
          ? _value.imgUrl
          : imgUrl // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_QuiezStateOnCorrectAnswer implements _QuiezStateOnCorrectAnswer {
  const _$_QuiezStateOnCorrectAnswer(this.imgUrl);

  @override
  final String imgUrl;

  @override
  String toString() {
    return 'QuizState.onCorrectAnswer(imgUrl: $imgUrl)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _QuiezStateOnCorrectAnswer &&
            (identical(other.imgUrl, imgUrl) || other.imgUrl == imgUrl));
  }

  @override
  int get hashCode => Object.hash(runtimeType, imgUrl);

  @JsonKey(ignore: true)
  @override
  _$QuiezStateOnCorrectAnswerCopyWith<_QuiezStateOnCorrectAnswer>
      get copyWith =>
          __$QuiezStateOnCorrectAnswerCopyWithImpl<_QuiezStateOnCorrectAnswer>(
              this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(QuizDto quiz) common,
    required TResult Function(String imgUrl) onCorrectAnswer,
    required TResult Function(String imgUrl) onIncorrectAnswer,
    required TResult Function(String errorMessage) onError,
  }) {
    return onCorrectAnswer(imgUrl);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(QuizDto quiz)? common,
    TResult Function(String imgUrl)? onCorrectAnswer,
    TResult Function(String imgUrl)? onIncorrectAnswer,
    TResult Function(String errorMessage)? onError,
  }) {
    return onCorrectAnswer?.call(imgUrl);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(QuizDto quiz)? common,
    TResult Function(String imgUrl)? onCorrectAnswer,
    TResult Function(String imgUrl)? onIncorrectAnswer,
    TResult Function(String errorMessage)? onError,
    required TResult orElse(),
  }) {
    if (onCorrectAnswer != null) {
      return onCorrectAnswer(imgUrl);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_QuiezStateLoading value) loading,
    required TResult Function(_QuiezStateCommon value) common,
    required TResult Function(_QuiezStateOnCorrectAnswer value) onCorrectAnswer,
    required TResult Function(_QuiezStateOnIncorrectAnswer value)
        onIncorrectAnswer,
    required TResult Function(_QuiezStateOnError value) onError,
  }) {
    return onCorrectAnswer(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_QuiezStateLoading value)? loading,
    TResult Function(_QuiezStateCommon value)? common,
    TResult Function(_QuiezStateOnCorrectAnswer value)? onCorrectAnswer,
    TResult Function(_QuiezStateOnIncorrectAnswer value)? onIncorrectAnswer,
    TResult Function(_QuiezStateOnError value)? onError,
  }) {
    return onCorrectAnswer?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_QuiezStateLoading value)? loading,
    TResult Function(_QuiezStateCommon value)? common,
    TResult Function(_QuiezStateOnCorrectAnswer value)? onCorrectAnswer,
    TResult Function(_QuiezStateOnIncorrectAnswer value)? onIncorrectAnswer,
    TResult Function(_QuiezStateOnError value)? onError,
    required TResult orElse(),
  }) {
    if (onCorrectAnswer != null) {
      return onCorrectAnswer(this);
    }
    return orElse();
  }
}

abstract class _QuiezStateOnCorrectAnswer implements QuizState {
  const factory _QuiezStateOnCorrectAnswer(String imgUrl) =
      _$_QuiezStateOnCorrectAnswer;

  String get imgUrl;
  @JsonKey(ignore: true)
  _$QuiezStateOnCorrectAnswerCopyWith<_QuiezStateOnCorrectAnswer>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$QuiezStateOnIncorrectAnswerCopyWith<$Res> {
  factory _$QuiezStateOnIncorrectAnswerCopyWith(
          _QuiezStateOnIncorrectAnswer value,
          $Res Function(_QuiezStateOnIncorrectAnswer) then) =
      __$QuiezStateOnIncorrectAnswerCopyWithImpl<$Res>;
  $Res call({String imgUrl});
}

/// @nodoc
class __$QuiezStateOnIncorrectAnswerCopyWithImpl<$Res>
    extends _$QuizStateCopyWithImpl<$Res>
    implements _$QuiezStateOnIncorrectAnswerCopyWith<$Res> {
  __$QuiezStateOnIncorrectAnswerCopyWithImpl(
      _QuiezStateOnIncorrectAnswer _value,
      $Res Function(_QuiezStateOnIncorrectAnswer) _then)
      : super(_value, (v) => _then(v as _QuiezStateOnIncorrectAnswer));

  @override
  _QuiezStateOnIncorrectAnswer get _value =>
      super._value as _QuiezStateOnIncorrectAnswer;

  @override
  $Res call({
    Object? imgUrl = freezed,
  }) {
    return _then(_QuiezStateOnIncorrectAnswer(
      imgUrl == freezed
          ? _value.imgUrl
          : imgUrl // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_QuiezStateOnIncorrectAnswer implements _QuiezStateOnIncorrectAnswer {
  const _$_QuiezStateOnIncorrectAnswer(this.imgUrl);

  @override
  final String imgUrl;

  @override
  String toString() {
    return 'QuizState.onIncorrectAnswer(imgUrl: $imgUrl)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _QuiezStateOnIncorrectAnswer &&
            (identical(other.imgUrl, imgUrl) || other.imgUrl == imgUrl));
  }

  @override
  int get hashCode => Object.hash(runtimeType, imgUrl);

  @JsonKey(ignore: true)
  @override
  _$QuiezStateOnIncorrectAnswerCopyWith<_QuiezStateOnIncorrectAnswer>
      get copyWith => __$QuiezStateOnIncorrectAnswerCopyWithImpl<
          _QuiezStateOnIncorrectAnswer>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(QuizDto quiz) common,
    required TResult Function(String imgUrl) onCorrectAnswer,
    required TResult Function(String imgUrl) onIncorrectAnswer,
    required TResult Function(String errorMessage) onError,
  }) {
    return onIncorrectAnswer(imgUrl);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(QuizDto quiz)? common,
    TResult Function(String imgUrl)? onCorrectAnswer,
    TResult Function(String imgUrl)? onIncorrectAnswer,
    TResult Function(String errorMessage)? onError,
  }) {
    return onIncorrectAnswer?.call(imgUrl);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(QuizDto quiz)? common,
    TResult Function(String imgUrl)? onCorrectAnswer,
    TResult Function(String imgUrl)? onIncorrectAnswer,
    TResult Function(String errorMessage)? onError,
    required TResult orElse(),
  }) {
    if (onIncorrectAnswer != null) {
      return onIncorrectAnswer(imgUrl);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_QuiezStateLoading value) loading,
    required TResult Function(_QuiezStateCommon value) common,
    required TResult Function(_QuiezStateOnCorrectAnswer value) onCorrectAnswer,
    required TResult Function(_QuiezStateOnIncorrectAnswer value)
        onIncorrectAnswer,
    required TResult Function(_QuiezStateOnError value) onError,
  }) {
    return onIncorrectAnswer(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_QuiezStateLoading value)? loading,
    TResult Function(_QuiezStateCommon value)? common,
    TResult Function(_QuiezStateOnCorrectAnswer value)? onCorrectAnswer,
    TResult Function(_QuiezStateOnIncorrectAnswer value)? onIncorrectAnswer,
    TResult Function(_QuiezStateOnError value)? onError,
  }) {
    return onIncorrectAnswer?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_QuiezStateLoading value)? loading,
    TResult Function(_QuiezStateCommon value)? common,
    TResult Function(_QuiezStateOnCorrectAnswer value)? onCorrectAnswer,
    TResult Function(_QuiezStateOnIncorrectAnswer value)? onIncorrectAnswer,
    TResult Function(_QuiezStateOnError value)? onError,
    required TResult orElse(),
  }) {
    if (onIncorrectAnswer != null) {
      return onIncorrectAnswer(this);
    }
    return orElse();
  }
}

abstract class _QuiezStateOnIncorrectAnswer implements QuizState {
  const factory _QuiezStateOnIncorrectAnswer(String imgUrl) =
      _$_QuiezStateOnIncorrectAnswer;

  String get imgUrl;
  @JsonKey(ignore: true)
  _$QuiezStateOnIncorrectAnswerCopyWith<_QuiezStateOnIncorrectAnswer>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$QuiezStateOnErrorCopyWith<$Res> {
  factory _$QuiezStateOnErrorCopyWith(
          _QuiezStateOnError value, $Res Function(_QuiezStateOnError) then) =
      __$QuiezStateOnErrorCopyWithImpl<$Res>;
  $Res call({String errorMessage});
}

/// @nodoc
class __$QuiezStateOnErrorCopyWithImpl<$Res>
    extends _$QuizStateCopyWithImpl<$Res>
    implements _$QuiezStateOnErrorCopyWith<$Res> {
  __$QuiezStateOnErrorCopyWithImpl(
      _QuiezStateOnError _value, $Res Function(_QuiezStateOnError) _then)
      : super(_value, (v) => _then(v as _QuiezStateOnError));

  @override
  _QuiezStateOnError get _value => super._value as _QuiezStateOnError;

  @override
  $Res call({
    Object? errorMessage = freezed,
  }) {
    return _then(_QuiezStateOnError(
      errorMessage == freezed
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_QuiezStateOnError implements _QuiezStateOnError {
  const _$_QuiezStateOnError(this.errorMessage);

  @override
  final String errorMessage;

  @override
  String toString() {
    return 'QuizState.onError(errorMessage: $errorMessage)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _QuiezStateOnError &&
            (identical(other.errorMessage, errorMessage) ||
                other.errorMessage == errorMessage));
  }

  @override
  int get hashCode => Object.hash(runtimeType, errorMessage);

  @JsonKey(ignore: true)
  @override
  _$QuiezStateOnErrorCopyWith<_QuiezStateOnError> get copyWith =>
      __$QuiezStateOnErrorCopyWithImpl<_QuiezStateOnError>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(QuizDto quiz) common,
    required TResult Function(String imgUrl) onCorrectAnswer,
    required TResult Function(String imgUrl) onIncorrectAnswer,
    required TResult Function(String errorMessage) onError,
  }) {
    return onError(errorMessage);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(QuizDto quiz)? common,
    TResult Function(String imgUrl)? onCorrectAnswer,
    TResult Function(String imgUrl)? onIncorrectAnswer,
    TResult Function(String errorMessage)? onError,
  }) {
    return onError?.call(errorMessage);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(QuizDto quiz)? common,
    TResult Function(String imgUrl)? onCorrectAnswer,
    TResult Function(String imgUrl)? onIncorrectAnswer,
    TResult Function(String errorMessage)? onError,
    required TResult orElse(),
  }) {
    if (onError != null) {
      return onError(errorMessage);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_QuiezStateLoading value) loading,
    required TResult Function(_QuiezStateCommon value) common,
    required TResult Function(_QuiezStateOnCorrectAnswer value) onCorrectAnswer,
    required TResult Function(_QuiezStateOnIncorrectAnswer value)
        onIncorrectAnswer,
    required TResult Function(_QuiezStateOnError value) onError,
  }) {
    return onError(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_QuiezStateLoading value)? loading,
    TResult Function(_QuiezStateCommon value)? common,
    TResult Function(_QuiezStateOnCorrectAnswer value)? onCorrectAnswer,
    TResult Function(_QuiezStateOnIncorrectAnswer value)? onIncorrectAnswer,
    TResult Function(_QuiezStateOnError value)? onError,
  }) {
    return onError?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_QuiezStateLoading value)? loading,
    TResult Function(_QuiezStateCommon value)? common,
    TResult Function(_QuiezStateOnCorrectAnswer value)? onCorrectAnswer,
    TResult Function(_QuiezStateOnIncorrectAnswer value)? onIncorrectAnswer,
    TResult Function(_QuiezStateOnError value)? onError,
    required TResult orElse(),
  }) {
    if (onError != null) {
      return onError(this);
    }
    return orElse();
  }
}

abstract class _QuiezStateOnError implements QuizState {
  const factory _QuiezStateOnError(String errorMessage) = _$_QuiezStateOnError;

  String get errorMessage;
  @JsonKey(ignore: true)
  _$QuiezStateOnErrorCopyWith<_QuiezStateOnError> get copyWith =>
      throw _privateConstructorUsedError;
}
