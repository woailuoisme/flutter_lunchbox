// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint, type=warning, deprecated_member_use, deprecated_member_use_from_same_package
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'checkin_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$CheckinState {

/// 签到状态数据
 CheckinStatusModel? get status;/// 每日任务列表
 List<DailyTaskModel> get tasks;/// 是否正在处理签到
 bool get isCheckingIn;/// 签到成功后的积分奖励（null=未签到）
 int? get earnedPoints;/// 错误信息
 String? get errorMessage;
/// Create a copy of CheckinState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CheckinStateCopyWith<CheckinState> get copyWith => _$CheckinStateCopyWithImpl<CheckinState>(this as CheckinState, _$identity);



@override
bool operator ==(Object other) {
  final _this = this as CheckinState;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CheckinState&&(identical(other.status, _this.status) || other.status == _this.status)&&const DeepCollectionEquality().equals(other.tasks, _this.tasks)&&(identical(other.isCheckingIn, _this.isCheckingIn) || other.isCheckingIn == _this.isCheckingIn)&&(identical(other.earnedPoints, _this.earnedPoints) || other.earnedPoints == _this.earnedPoints)&&(identical(other.errorMessage, _this.errorMessage) || other.errorMessage == _this.errorMessage));
}


@override
int get hashCode {
  final _this = this as CheckinState;
  return Object.hash(runtimeType,_this.status,const DeepCollectionEquality().hash(_this.tasks),_this.isCheckingIn,_this.earnedPoints,_this.errorMessage);
}

@override
String toString() {
  final _this = this as CheckinState;
  return 'CheckinState(status: ${_this.status}, tasks: ${_this.tasks}, isCheckingIn: ${_this.isCheckingIn}, earnedPoints: ${_this.earnedPoints}, errorMessage: ${_this.errorMessage})';
}


}

/// @nodoc
abstract mixin class $CheckinStateCopyWith<$Res>  {
  factory $CheckinStateCopyWith(CheckinState value, $Res Function(CheckinState) _then) = _$CheckinStateCopyWithImpl;
@useResult
$Res call({
 CheckinStatusModel? status, List<DailyTaskModel> tasks, bool isCheckingIn, int? earnedPoints, String? errorMessage
});


$CheckinStatusModelCopyWith<$Res>? get status;

}
/// @nodoc
class _$CheckinStateCopyWithImpl<$Res>
    implements $CheckinStateCopyWith<$Res> {
  _$CheckinStateCopyWithImpl(this._self, this._then);

  final CheckinState _self;
  final $Res Function(CheckinState) _then;

/// Create a copy of CheckinState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? status = freezed,Object? tasks = null,Object? isCheckingIn = null,Object? earnedPoints = freezed,Object? errorMessage = freezed,}) {
  return _then(CheckinState(
status: freezed == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as CheckinStatusModel?,tasks: null == tasks ? _self.tasks : tasks // ignore: cast_nullable_to_non_nullable
as List<DailyTaskModel>,isCheckingIn: null == isCheckingIn ? _self.isCheckingIn : isCheckingIn // ignore: cast_nullable_to_non_nullable
as bool,earnedPoints: freezed == earnedPoints ? _self.earnedPoints : earnedPoints // ignore: cast_nullable_to_non_nullable
as int?,errorMessage: freezed == errorMessage ? _self.errorMessage : errorMessage // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}
/// Create a copy of CheckinState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$CheckinStatusModelCopyWith<$Res>? get status {
    if (_self.status == null) {
    return null;
  }

  return $CheckinStatusModelCopyWith<$Res>(_self.status!, (value) {
    return _then(_self.copyWith(status: value));
  });
}
}


/// Adds pattern-matching-related methods to [CheckinState].
extension CheckinStatePatterns on CheckinState {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _CheckinState value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _CheckinState() when $default != null:
return $default(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _CheckinState value)  $default,){
final _that = this;
switch (_that) {
case _CheckinState():
return $default(_that);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _CheckinState value)?  $default,){
final _that = this;
switch (_that) {
case _CheckinState() when $default != null:
return $default(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( CheckinStatusModel? status,  List<DailyTaskModel> tasks,  bool isCheckingIn,  int? earnedPoints,  String? errorMessage)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _CheckinState() when $default != null:
return $default(_that.status,_that.tasks,_that.isCheckingIn,_that.earnedPoints,_that.errorMessage);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( CheckinStatusModel? status,  List<DailyTaskModel> tasks,  bool isCheckingIn,  int? earnedPoints,  String? errorMessage)  $default,) {final _that = this;
switch (_that) {
case _CheckinState():
return $default(_that.status,_that.tasks,_that.isCheckingIn,_that.earnedPoints,_that.errorMessage);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( CheckinStatusModel? status,  List<DailyTaskModel> tasks,  bool isCheckingIn,  int? earnedPoints,  String? errorMessage)?  $default,) {final _that = this;
switch (_that) {
case _CheckinState() when $default != null:
return $default(_that.status,_that.tasks,_that.isCheckingIn,_that.earnedPoints,_that.errorMessage);case _:
  return null;

}
}

}

/// @nodoc


class _CheckinState implements CheckinState {
  const _CheckinState({this.status,  List<DailyTaskModel> tasks = const [], this.isCheckingIn = false, this.earnedPoints, this.errorMessage}): _tasks = tasks;
  

/// 签到状态数据
@override final  CheckinStatusModel? status;
/// 每日任务列表
 final  List<DailyTaskModel> _tasks;
/// 每日任务列表
@override@JsonKey() List<DailyTaskModel> get tasks {
  if (_tasks is EqualUnmodifiableListView) return _tasks;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_tasks);
}

/// 是否正在处理签到
@override@JsonKey() final  bool isCheckingIn;
/// 签到成功后的积分奖励（null=未签到）
@override final  int? earnedPoints;
/// 错误信息
@override final  String? errorMessage;

/// Create a copy of CheckinState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$CheckinStateCopyWith<_CheckinState> get copyWith => __$CheckinStateCopyWithImpl<_CheckinState>(this, _$identity);



@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _CheckinState&&(identical(other.status, status) || other.status == status)&&const DeepCollectionEquality().equals(other.tasks, _tasks)&&(identical(other.isCheckingIn, isCheckingIn) || other.isCheckingIn == isCheckingIn)&&(identical(other.earnedPoints, earnedPoints) || other.earnedPoints == earnedPoints)&&(identical(other.errorMessage, errorMessage) || other.errorMessage == errorMessage));
}


@override
int get hashCode {
    return Object.hash(runtimeType,status,const DeepCollectionEquality().hash(_tasks),isCheckingIn,earnedPoints,errorMessage);
}

@override
String toString() {
    return 'CheckinState(status: $status, tasks: $tasks, isCheckingIn: $isCheckingIn, earnedPoints: $earnedPoints, errorMessage: $errorMessage)';
}


}

/// @nodoc
abstract mixin class _$CheckinStateCopyWith<$Res> implements $CheckinStateCopyWith<$Res> {
  factory _$CheckinStateCopyWith(_CheckinState value, $Res Function(_CheckinState) _then) = __$CheckinStateCopyWithImpl;
@override @useResult
$Res call({
 CheckinStatusModel? status, List<DailyTaskModel> tasks, bool isCheckingIn, int? earnedPoints, String? errorMessage
});


@override $CheckinStatusModelCopyWith<$Res>? get status;

}
/// @nodoc
class __$CheckinStateCopyWithImpl<$Res>
    implements _$CheckinStateCopyWith<$Res> {
  __$CheckinStateCopyWithImpl(this._self, this._then);

  final _CheckinState _self;
  final $Res Function(_CheckinState) _then;

/// Create a copy of CheckinState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? status = freezed,Object? tasks = null,Object? isCheckingIn = null,Object? earnedPoints = freezed,Object? errorMessage = freezed,}) {
  return _then(_CheckinState(
status: freezed == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as CheckinStatusModel?,tasks: null == tasks ? _self._tasks : tasks // ignore: cast_nullable_to_non_nullable
as List<DailyTaskModel>,isCheckingIn: null == isCheckingIn ? _self.isCheckingIn : isCheckingIn // ignore: cast_nullable_to_non_nullable
as bool,earnedPoints: freezed == earnedPoints ? _self.earnedPoints : earnedPoints // ignore: cast_nullable_to_non_nullable
as int?,errorMessage: freezed == errorMessage ? _self.errorMessage : errorMessage // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

/// Create a copy of CheckinState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$CheckinStatusModelCopyWith<$Res>? get status {
    if (_self.status == null) {
    return null;
  }

  return $CheckinStatusModelCopyWith<$Res>(_self.status!, (value) {
    return _then(_self.copyWith(status: value));
  });
}
}

// dart format on
