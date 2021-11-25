// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'quiz.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$QuizLoadingResultDtoTearOff {
  const _$QuizLoadingResultDtoTearOff();

  _QuizLoadingResultDtoSuccess success(QuizDto quiz) {
    return _QuizLoadingResultDtoSuccess(
      quiz,
    );
  }

  _QuizLoadingResultDtoFailure failure(String errorMessage) {
    return _QuizLoadingResultDtoFailure(
      errorMessage,
    );
  }
}

/// @nodoc
const $QuizLoadingResultDto = _$QuizLoadingResultDtoTearOff();

/// @nodoc
mixin _$QuizLoadingResultDto {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(QuizDto quiz) success,
    required TResult Function(String errorMessage) failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(QuizDto quiz)? success,
    TResult Function(String errorMessage)? failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(QuizDto quiz)? success,
    TResult Function(String errorMessage)? failure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_QuizLoadingResultDtoSuccess value) success,
    required TResult Function(_QuizLoadingResultDtoFailure value) failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_QuizLoadingResultDtoSuccess value)? success,
    TResult Function(_QuizLoadingResultDtoFailure value)? failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_QuizLoadingResultDtoSuccess value)? success,
    TResult Function(_QuizLoadingResultDtoFailure value)? failure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $QuizLoadingResultDtoCopyWith<$Res> {
  factory $QuizLoadingResultDtoCopyWith(QuizLoadingResultDto value,
          $Res Function(QuizLoadingResultDto) then) =
      _$QuizLoadingResultDtoCopyWithImpl<$Res>;
}

/// @nodoc
class _$QuizLoadingResultDtoCopyWithImpl<$Res>
    implements $QuizLoadingResultDtoCopyWith<$Res> {
  _$QuizLoadingResultDtoCopyWithImpl(this._value, this._then);

  final QuizLoadingResultDto _value;
  // ignore: unused_field
  final $Res Function(QuizLoadingResultDto) _then;
}

/// @nodoc
abstract class _$QuizLoadingResultDtoSuccessCopyWith<$Res> {
  factory _$QuizLoadingResultDtoSuccessCopyWith(
          _QuizLoadingResultDtoSuccess value,
          $Res Function(_QuizLoadingResultDtoSuccess) then) =
      __$QuizLoadingResultDtoSuccessCopyWithImpl<$Res>;
  $Res call({QuizDto quiz});
}

/// @nodoc
class __$QuizLoadingResultDtoSuccessCopyWithImpl<$Res>
    extends _$QuizLoadingResultDtoCopyWithImpl<$Res>
    implements _$QuizLoadingResultDtoSuccessCopyWith<$Res> {
  __$QuizLoadingResultDtoSuccessCopyWithImpl(
      _QuizLoadingResultDtoSuccess _value,
      $Res Function(_QuizLoadingResultDtoSuccess) _then)
      : super(_value, (v) => _then(v as _QuizLoadingResultDtoSuccess));

  @override
  _QuizLoadingResultDtoSuccess get _value =>
      super._value as _QuizLoadingResultDtoSuccess;

  @override
  $Res call({
    Object? quiz = freezed,
  }) {
    return _then(_QuizLoadingResultDtoSuccess(
      quiz == freezed
          ? _value.quiz
          : quiz // ignore: cast_nullable_to_non_nullable
              as QuizDto,
    ));
  }
}

/// @nodoc

class _$_QuizLoadingResultDtoSuccess implements _QuizLoadingResultDtoSuccess {
  const _$_QuizLoadingResultDtoSuccess(this.quiz);

  @override
  final QuizDto quiz;

  @override
  String toString() {
    return 'QuizLoadingResultDto.success(quiz: $quiz)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _QuizLoadingResultDtoSuccess &&
            (identical(other.quiz, quiz) || other.quiz == quiz));
  }

  @override
  int get hashCode => Object.hash(runtimeType, quiz);

  @JsonKey(ignore: true)
  @override
  _$QuizLoadingResultDtoSuccessCopyWith<_QuizLoadingResultDtoSuccess>
      get copyWith => __$QuizLoadingResultDtoSuccessCopyWithImpl<
          _QuizLoadingResultDtoSuccess>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(QuizDto quiz) success,
    required TResult Function(String errorMessage) failure,
  }) {
    return success(quiz);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(QuizDto quiz)? success,
    TResult Function(String errorMessage)? failure,
  }) {
    return success?.call(quiz);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(QuizDto quiz)? success,
    TResult Function(String errorMessage)? failure,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(quiz);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_QuizLoadingResultDtoSuccess value) success,
    required TResult Function(_QuizLoadingResultDtoFailure value) failure,
  }) {
    return success(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_QuizLoadingResultDtoSuccess value)? success,
    TResult Function(_QuizLoadingResultDtoFailure value)? failure,
  }) {
    return success?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_QuizLoadingResultDtoSuccess value)? success,
    TResult Function(_QuizLoadingResultDtoFailure value)? failure,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(this);
    }
    return orElse();
  }
}

abstract class _QuizLoadingResultDtoSuccess implements QuizLoadingResultDto {
  const factory _QuizLoadingResultDtoSuccess(QuizDto quiz) =
      _$_QuizLoadingResultDtoSuccess;

  QuizDto get quiz;
  @JsonKey(ignore: true)
  _$QuizLoadingResultDtoSuccessCopyWith<_QuizLoadingResultDtoSuccess>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$QuizLoadingResultDtoFailureCopyWith<$Res> {
  factory _$QuizLoadingResultDtoFailureCopyWith(
          _QuizLoadingResultDtoFailure value,
          $Res Function(_QuizLoadingResultDtoFailure) then) =
      __$QuizLoadingResultDtoFailureCopyWithImpl<$Res>;
  $Res call({String errorMessage});
}

/// @nodoc
class __$QuizLoadingResultDtoFailureCopyWithImpl<$Res>
    extends _$QuizLoadingResultDtoCopyWithImpl<$Res>
    implements _$QuizLoadingResultDtoFailureCopyWith<$Res> {
  __$QuizLoadingResultDtoFailureCopyWithImpl(
      _QuizLoadingResultDtoFailure _value,
      $Res Function(_QuizLoadingResultDtoFailure) _then)
      : super(_value, (v) => _then(v as _QuizLoadingResultDtoFailure));

  @override
  _QuizLoadingResultDtoFailure get _value =>
      super._value as _QuizLoadingResultDtoFailure;

  @override
  $Res call({
    Object? errorMessage = freezed,
  }) {
    return _then(_QuizLoadingResultDtoFailure(
      errorMessage == freezed
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_QuizLoadingResultDtoFailure implements _QuizLoadingResultDtoFailure {
  const _$_QuizLoadingResultDtoFailure(this.errorMessage);

  @override
  final String errorMessage;

  @override
  String toString() {
    return 'QuizLoadingResultDto.failure(errorMessage: $errorMessage)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _QuizLoadingResultDtoFailure &&
            (identical(other.errorMessage, errorMessage) ||
                other.errorMessage == errorMessage));
  }

  @override
  int get hashCode => Object.hash(runtimeType, errorMessage);

  @JsonKey(ignore: true)
  @override
  _$QuizLoadingResultDtoFailureCopyWith<_QuizLoadingResultDtoFailure>
      get copyWith => __$QuizLoadingResultDtoFailureCopyWithImpl<
          _QuizLoadingResultDtoFailure>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(QuizDto quiz) success,
    required TResult Function(String errorMessage) failure,
  }) {
    return failure(errorMessage);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(QuizDto quiz)? success,
    TResult Function(String errorMessage)? failure,
  }) {
    return failure?.call(errorMessage);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(QuizDto quiz)? success,
    TResult Function(String errorMessage)? failure,
    required TResult orElse(),
  }) {
    if (failure != null) {
      return failure(errorMessage);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_QuizLoadingResultDtoSuccess value) success,
    required TResult Function(_QuizLoadingResultDtoFailure value) failure,
  }) {
    return failure(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_QuizLoadingResultDtoSuccess value)? success,
    TResult Function(_QuizLoadingResultDtoFailure value)? failure,
  }) {
    return failure?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_QuizLoadingResultDtoSuccess value)? success,
    TResult Function(_QuizLoadingResultDtoFailure value)? failure,
    required TResult orElse(),
  }) {
    if (failure != null) {
      return failure(this);
    }
    return orElse();
  }
}

abstract class _QuizLoadingResultDtoFailure implements QuizLoadingResultDto {
  const factory _QuizLoadingResultDtoFailure(String errorMessage) =
      _$_QuizLoadingResultDtoFailure;

  String get errorMessage;
  @JsonKey(ignore: true)
  _$QuizLoadingResultDtoFailureCopyWith<_QuizLoadingResultDtoFailure>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
class _$QuizLoadingImageResultDtoTearOff {
  const _$QuizLoadingImageResultDtoTearOff();

  _QuizLoadingImageResultDtoSuccess success(String imgUrl) {
    return _QuizLoadingImageResultDtoSuccess(
      imgUrl,
    );
  }

  _QuizLoadingImageResultDtoFailure failure(String errorMessage) {
    return _QuizLoadingImageResultDtoFailure(
      errorMessage,
    );
  }
}

/// @nodoc
const $QuizLoadingImageResultDto = _$QuizLoadingImageResultDtoTearOff();

/// @nodoc
mixin _$QuizLoadingImageResultDto {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String imgUrl) success,
    required TResult Function(String errorMessage) failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String imgUrl)? success,
    TResult Function(String errorMessage)? failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String imgUrl)? success,
    TResult Function(String errorMessage)? failure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_QuizLoadingImageResultDtoSuccess value) success,
    required TResult Function(_QuizLoadingImageResultDtoFailure value) failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_QuizLoadingImageResultDtoSuccess value)? success,
    TResult Function(_QuizLoadingImageResultDtoFailure value)? failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_QuizLoadingImageResultDtoSuccess value)? success,
    TResult Function(_QuizLoadingImageResultDtoFailure value)? failure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $QuizLoadingImageResultDtoCopyWith<$Res> {
  factory $QuizLoadingImageResultDtoCopyWith(QuizLoadingImageResultDto value,
          $Res Function(QuizLoadingImageResultDto) then) =
      _$QuizLoadingImageResultDtoCopyWithImpl<$Res>;
}

/// @nodoc
class _$QuizLoadingImageResultDtoCopyWithImpl<$Res>
    implements $QuizLoadingImageResultDtoCopyWith<$Res> {
  _$QuizLoadingImageResultDtoCopyWithImpl(this._value, this._then);

  final QuizLoadingImageResultDto _value;
  // ignore: unused_field
  final $Res Function(QuizLoadingImageResultDto) _then;
}

/// @nodoc
abstract class _$QuizLoadingImageResultDtoSuccessCopyWith<$Res> {
  factory _$QuizLoadingImageResultDtoSuccessCopyWith(
          _QuizLoadingImageResultDtoSuccess value,
          $Res Function(_QuizLoadingImageResultDtoSuccess) then) =
      __$QuizLoadingImageResultDtoSuccessCopyWithImpl<$Res>;
  $Res call({String imgUrl});
}

/// @nodoc
class __$QuizLoadingImageResultDtoSuccessCopyWithImpl<$Res>
    extends _$QuizLoadingImageResultDtoCopyWithImpl<$Res>
    implements _$QuizLoadingImageResultDtoSuccessCopyWith<$Res> {
  __$QuizLoadingImageResultDtoSuccessCopyWithImpl(
      _QuizLoadingImageResultDtoSuccess _value,
      $Res Function(_QuizLoadingImageResultDtoSuccess) _then)
      : super(_value, (v) => _then(v as _QuizLoadingImageResultDtoSuccess));

  @override
  _QuizLoadingImageResultDtoSuccess get _value =>
      super._value as _QuizLoadingImageResultDtoSuccess;

  @override
  $Res call({
    Object? imgUrl = freezed,
  }) {
    return _then(_QuizLoadingImageResultDtoSuccess(
      imgUrl == freezed
          ? _value.imgUrl
          : imgUrl // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_QuizLoadingImageResultDtoSuccess
    implements _QuizLoadingImageResultDtoSuccess {
  const _$_QuizLoadingImageResultDtoSuccess(this.imgUrl);

  @override
  final String imgUrl;

  @override
  String toString() {
    return 'QuizLoadingImageResultDto.success(imgUrl: $imgUrl)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _QuizLoadingImageResultDtoSuccess &&
            (identical(other.imgUrl, imgUrl) || other.imgUrl == imgUrl));
  }

  @override
  int get hashCode => Object.hash(runtimeType, imgUrl);

  @JsonKey(ignore: true)
  @override
  _$QuizLoadingImageResultDtoSuccessCopyWith<_QuizLoadingImageResultDtoSuccess>
      get copyWith => __$QuizLoadingImageResultDtoSuccessCopyWithImpl<
          _QuizLoadingImageResultDtoSuccess>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String imgUrl) success,
    required TResult Function(String errorMessage) failure,
  }) {
    return success(imgUrl);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String imgUrl)? success,
    TResult Function(String errorMessage)? failure,
  }) {
    return success?.call(imgUrl);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String imgUrl)? success,
    TResult Function(String errorMessage)? failure,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(imgUrl);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_QuizLoadingImageResultDtoSuccess value) success,
    required TResult Function(_QuizLoadingImageResultDtoFailure value) failure,
  }) {
    return success(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_QuizLoadingImageResultDtoSuccess value)? success,
    TResult Function(_QuizLoadingImageResultDtoFailure value)? failure,
  }) {
    return success?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_QuizLoadingImageResultDtoSuccess value)? success,
    TResult Function(_QuizLoadingImageResultDtoFailure value)? failure,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(this);
    }
    return orElse();
  }
}

abstract class _QuizLoadingImageResultDtoSuccess
    implements QuizLoadingImageResultDto {
  const factory _QuizLoadingImageResultDtoSuccess(String imgUrl) =
      _$_QuizLoadingImageResultDtoSuccess;

  String get imgUrl;
  @JsonKey(ignore: true)
  _$QuizLoadingImageResultDtoSuccessCopyWith<_QuizLoadingImageResultDtoSuccess>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$QuizLoadingImageResultDtoFailureCopyWith<$Res> {
  factory _$QuizLoadingImageResultDtoFailureCopyWith(
          _QuizLoadingImageResultDtoFailure value,
          $Res Function(_QuizLoadingImageResultDtoFailure) then) =
      __$QuizLoadingImageResultDtoFailureCopyWithImpl<$Res>;
  $Res call({String errorMessage});
}

/// @nodoc
class __$QuizLoadingImageResultDtoFailureCopyWithImpl<$Res>
    extends _$QuizLoadingImageResultDtoCopyWithImpl<$Res>
    implements _$QuizLoadingImageResultDtoFailureCopyWith<$Res> {
  __$QuizLoadingImageResultDtoFailureCopyWithImpl(
      _QuizLoadingImageResultDtoFailure _value,
      $Res Function(_QuizLoadingImageResultDtoFailure) _then)
      : super(_value, (v) => _then(v as _QuizLoadingImageResultDtoFailure));

  @override
  _QuizLoadingImageResultDtoFailure get _value =>
      super._value as _QuizLoadingImageResultDtoFailure;

  @override
  $Res call({
    Object? errorMessage = freezed,
  }) {
    return _then(_QuizLoadingImageResultDtoFailure(
      errorMessage == freezed
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_QuizLoadingImageResultDtoFailure
    implements _QuizLoadingImageResultDtoFailure {
  const _$_QuizLoadingImageResultDtoFailure(this.errorMessage);

  @override
  final String errorMessage;

  @override
  String toString() {
    return 'QuizLoadingImageResultDto.failure(errorMessage: $errorMessage)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _QuizLoadingImageResultDtoFailure &&
            (identical(other.errorMessage, errorMessage) ||
                other.errorMessage == errorMessage));
  }

  @override
  int get hashCode => Object.hash(runtimeType, errorMessage);

  @JsonKey(ignore: true)
  @override
  _$QuizLoadingImageResultDtoFailureCopyWith<_QuizLoadingImageResultDtoFailure>
      get copyWith => __$QuizLoadingImageResultDtoFailureCopyWithImpl<
          _QuizLoadingImageResultDtoFailure>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String imgUrl) success,
    required TResult Function(String errorMessage) failure,
  }) {
    return failure(errorMessage);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String imgUrl)? success,
    TResult Function(String errorMessage)? failure,
  }) {
    return failure?.call(errorMessage);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String imgUrl)? success,
    TResult Function(String errorMessage)? failure,
    required TResult orElse(),
  }) {
    if (failure != null) {
      return failure(errorMessage);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_QuizLoadingImageResultDtoSuccess value) success,
    required TResult Function(_QuizLoadingImageResultDtoFailure value) failure,
  }) {
    return failure(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_QuizLoadingImageResultDtoSuccess value)? success,
    TResult Function(_QuizLoadingImageResultDtoFailure value)? failure,
  }) {
    return failure?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_QuizLoadingImageResultDtoSuccess value)? success,
    TResult Function(_QuizLoadingImageResultDtoFailure value)? failure,
    required TResult orElse(),
  }) {
    if (failure != null) {
      return failure(this);
    }
    return orElse();
  }
}

abstract class _QuizLoadingImageResultDtoFailure
    implements QuizLoadingImageResultDto {
  const factory _QuizLoadingImageResultDtoFailure(String errorMessage) =
      _$_QuizLoadingImageResultDtoFailure;

  String get errorMessage;
  @JsonKey(ignore: true)
  _$QuizLoadingImageResultDtoFailureCopyWith<_QuizLoadingImageResultDtoFailure>
      get copyWith => throw _privateConstructorUsedError;
}
