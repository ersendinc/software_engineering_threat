// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'auth_setup_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$AuthSetupState {
  AuthUserModel get userModel => throw _privateConstructorUsedError;
  bool get isUserLoggedIn => throw _privateConstructorUsedError;
  bool get isUserCheckedFromAuthService => throw _privateConstructorUsedError;
  bool get isInProgress => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $AuthSetupStateCopyWith<AuthSetupState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AuthSetupStateCopyWith<$Res> {
  factory $AuthSetupStateCopyWith(
          AuthSetupState value, $Res Function(AuthSetupState) then) =
      _$AuthSetupStateCopyWithImpl<$Res, AuthSetupState>;
  @useResult
  $Res call(
      {AuthUserModel userModel,
      bool isUserLoggedIn,
      bool isUserCheckedFromAuthService,
      bool isInProgress});

  $AuthUserModelCopyWith<$Res> get userModel;
}

/// @nodoc
class _$AuthSetupStateCopyWithImpl<$Res, $Val extends AuthSetupState>
    implements $AuthSetupStateCopyWith<$Res> {
  _$AuthSetupStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userModel = null,
    Object? isUserLoggedIn = null,
    Object? isUserCheckedFromAuthService = null,
    Object? isInProgress = null,
  }) {
    return _then(_value.copyWith(
      userModel: null == userModel
          ? _value.userModel
          : userModel // ignore: cast_nullable_to_non_nullable
              as AuthUserModel,
      isUserLoggedIn: null == isUserLoggedIn
          ? _value.isUserLoggedIn
          : isUserLoggedIn // ignore: cast_nullable_to_non_nullable
              as bool,
      isUserCheckedFromAuthService: null == isUserCheckedFromAuthService
          ? _value.isUserCheckedFromAuthService
          : isUserCheckedFromAuthService // ignore: cast_nullable_to_non_nullable
              as bool,
      isInProgress: null == isInProgress
          ? _value.isInProgress
          : isInProgress // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $AuthUserModelCopyWith<$Res> get userModel {
    return $AuthUserModelCopyWith<$Res>(_value.userModel, (value) {
      return _then(_value.copyWith(userModel: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_AuthSetupStateCopyWith<$Res>
    implements $AuthSetupStateCopyWith<$Res> {
  factory _$$_AuthSetupStateCopyWith(
          _$_AuthSetupState value, $Res Function(_$_AuthSetupState) then) =
      __$$_AuthSetupStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {AuthUserModel userModel,
      bool isUserLoggedIn,
      bool isUserCheckedFromAuthService,
      bool isInProgress});

  @override
  $AuthUserModelCopyWith<$Res> get userModel;
}

/// @nodoc
class __$$_AuthSetupStateCopyWithImpl<$Res>
    extends _$AuthSetupStateCopyWithImpl<$Res, _$_AuthSetupState>
    implements _$$_AuthSetupStateCopyWith<$Res> {
  __$$_AuthSetupStateCopyWithImpl(
      _$_AuthSetupState _value, $Res Function(_$_AuthSetupState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userModel = null,
    Object? isUserLoggedIn = null,
    Object? isUserCheckedFromAuthService = null,
    Object? isInProgress = null,
  }) {
    return _then(_$_AuthSetupState(
      userModel: null == userModel
          ? _value.userModel
          : userModel // ignore: cast_nullable_to_non_nullable
              as AuthUserModel,
      isUserLoggedIn: null == isUserLoggedIn
          ? _value.isUserLoggedIn
          : isUserLoggedIn // ignore: cast_nullable_to_non_nullable
              as bool,
      isUserCheckedFromAuthService: null == isUserCheckedFromAuthService
          ? _value.isUserCheckedFromAuthService
          : isUserCheckedFromAuthService // ignore: cast_nullable_to_non_nullable
              as bool,
      isInProgress: null == isInProgress
          ? _value.isInProgress
          : isInProgress // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$_AuthSetupState implements _AuthSetupState {
  const _$_AuthSetupState(
      {required this.userModel,
      required this.isUserLoggedIn,
      required this.isUserCheckedFromAuthService,
      required this.isInProgress});

  @override
  final AuthUserModel userModel;
  @override
  final bool isUserLoggedIn;
  @override
  final bool isUserCheckedFromAuthService;
  @override
  final bool isInProgress;

  @override
  String toString() {
    return 'AuthSetupState(userModel: $userModel, isUserLoggedIn: $isUserLoggedIn, isUserCheckedFromAuthService: $isUserCheckedFromAuthService, isInProgress: $isInProgress)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_AuthSetupState &&
            (identical(other.userModel, userModel) ||
                other.userModel == userModel) &&
            (identical(other.isUserLoggedIn, isUserLoggedIn) ||
                other.isUserLoggedIn == isUserLoggedIn) &&
            (identical(other.isUserCheckedFromAuthService,
                    isUserCheckedFromAuthService) ||
                other.isUserCheckedFromAuthService ==
                    isUserCheckedFromAuthService) &&
            (identical(other.isInProgress, isInProgress) ||
                other.isInProgress == isInProgress));
  }

  @override
  int get hashCode => Object.hash(runtimeType, userModel, isUserLoggedIn,
      isUserCheckedFromAuthService, isInProgress);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_AuthSetupStateCopyWith<_$_AuthSetupState> get copyWith =>
      __$$_AuthSetupStateCopyWithImpl<_$_AuthSetupState>(this, _$identity);
}

abstract class _AuthSetupState implements AuthSetupState {
  const factory _AuthSetupState(
      {required final AuthUserModel userModel,
      required final bool isUserLoggedIn,
      required final bool isUserCheckedFromAuthService,
      required final bool isInProgress}) = _$_AuthSetupState;

  @override
  AuthUserModel get userModel;
  @override
  bool get isUserLoggedIn;
  @override
  bool get isUserCheckedFromAuthService;
  @override
  bool get isInProgress;
  @override
  @JsonKey(ignore: true)
  _$$_AuthSetupStateCopyWith<_$_AuthSetupState> get copyWith =>
      throw _privateConstructorUsedError;
}
