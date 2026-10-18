// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint, type=warning, deprecated_member_use, deprecated_member_use_from_same_package
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'referral_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$ReferralState {

 ReferralStatusModel? get status; List<ReferralActivityModel> get activities; bool get isLoading; String? get errorMessage;
/// Create a copy of ReferralState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ReferralStateCopyWith<ReferralState> get copyWith => _$ReferralStateCopyWithImpl<ReferralState>(this as ReferralState, _$identity);



@override
bool operator ==(Object other) {
  final _this = this as ReferralState;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ReferralState&&(identical(other.status, _this.status) || other.status == _this.status)&&const DeepCollectionEquality().equals(other.activities, _this.activities)&&(identical(other.isLoading, _this.isLoading) || other.isLoading == _this.isLoading)&&(identical(other.errorMessage, _this.errorMessage) || other.errorMessage == _this.errorMessage));
}


@override
int get hashCode {
  final _this = this as ReferralState;
  return Object.hash(runtimeType,_this.status,const DeepCollectionEquality().hash(_this.activities),_this.isLoading,_this.errorMessage);
}

@override
String toString() {
  final _this = this as ReferralState;
  return 'ReferralState(status: ${_this.status}, activities: ${_this.activities}, isLoading: ${_this.isLoading}, errorMessage: ${_this.errorMessage})';
}


}

/// @nodoc
abstract mixin class $ReferralStateCopyWith<$Res>  {
  factory $ReferralStateCopyWith(ReferralState value, $Res Function(ReferralState) _then) = _$ReferralStateCopyWithImpl;
@useResult
$Res call({
 ReferralStatusModel? status, List<ReferralActivityModel> activities, bool isLoading, String? errorMessage
});


$ReferralStatusModelCopyWith<$Res>? get status;

}
/// @nodoc
class _$ReferralStateCopyWithImpl<$Res>
    implements $ReferralStateCopyWith<$Res> {
  _$ReferralStateCopyWithImpl(this._self, this._then);

  final ReferralState _self;
  final $Res Function(ReferralState) _then;

/// Create a copy of ReferralState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? status = freezed,Object? activities = null,Object? isLoading = null,Object? errorMessage = freezed,}) {
  return _then(ReferralState(
status: freezed == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as ReferralStatusModel?,activities: null == activities ? _self.activities : activities // ignore: cast_nullable_to_non_nullable
as List<ReferralActivityModel>,isLoading: null == isLoading ? _self.isLoading : isLoading // ignore: cast_nullable_to_non_nullable
as bool,errorMessage: freezed == errorMessage ? _self.errorMessage : errorMessage // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}
/// Create a copy of ReferralState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ReferralStatusModelCopyWith<$Res>? get status {
    if (_self.status == null) {
    return null;
  }

  return $ReferralStatusModelCopyWith<$Res>(_self.status!, (value) {
    return _then(_self.copyWith(status: value));
  });
}
}


/// Adds pattern-matching-related methods to [ReferralState].
extension ReferralStatePatterns on ReferralState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ReferralState value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ReferralState() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ReferralState value)  $default,){
final _that = this;
switch (_that) {
case _ReferralState():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ReferralState value)?  $default,){
final _that = this;
switch (_that) {
case _ReferralState() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( ReferralStatusModel? status,  List<ReferralActivityModel> activities,  bool isLoading,  String? errorMessage)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ReferralState() when $default != null:
return $default(_that.status,_that.activities,_that.isLoading,_that.errorMessage);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( ReferralStatusModel? status,  List<ReferralActivityModel> activities,  bool isLoading,  String? errorMessage)  $default,) {final _that = this;
switch (_that) {
case _ReferralState():
return $default(_that.status,_that.activities,_that.isLoading,_that.errorMessage);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( ReferralStatusModel? status,  List<ReferralActivityModel> activities,  bool isLoading,  String? errorMessage)?  $default,) {final _that = this;
switch (_that) {
case _ReferralState() when $default != null:
return $default(_that.status,_that.activities,_that.isLoading,_that.errorMessage);case _:
  return null;

}
}

}

/// @nodoc


class _ReferralState implements ReferralState {
  const _ReferralState({this.status,  List<ReferralActivityModel> activities = const [], this.isLoading = false, this.errorMessage}): _activities = activities;
  

@override final  ReferralStatusModel? status;
 final  List<ReferralActivityModel> _activities;
@override@JsonKey() List<ReferralActivityModel> get activities {
  if (_activities is EqualUnmodifiableListView) return _activities;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_activities);
}

@override@JsonKey() final  bool isLoading;
@override final  String? errorMessage;

/// Create a copy of ReferralState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ReferralStateCopyWith<_ReferralState> get copyWith => __$ReferralStateCopyWithImpl<_ReferralState>(this, _$identity);



@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _ReferralState&&(identical(other.status, status) || other.status == status)&&const DeepCollectionEquality().equals(other.activities, _activities)&&(identical(other.isLoading, isLoading) || other.isLoading == isLoading)&&(identical(other.errorMessage, errorMessage) || other.errorMessage == errorMessage));
}


@override
int get hashCode {
    return Object.hash(runtimeType,status,const DeepCollectionEquality().hash(_activities),isLoading,errorMessage);
}

@override
String toString() {
    return 'ReferralState(status: $status, activities: $activities, isLoading: $isLoading, errorMessage: $errorMessage)';
}


}

/// @nodoc
abstract mixin class _$ReferralStateCopyWith<$Res> implements $ReferralStateCopyWith<$Res> {
  factory _$ReferralStateCopyWith(_ReferralState value, $Res Function(_ReferralState) _then) = __$ReferralStateCopyWithImpl;
@override @useResult
$Res call({
 ReferralStatusModel? status, List<ReferralActivityModel> activities, bool isLoading, String? errorMessage
});


@override $ReferralStatusModelCopyWith<$Res>? get status;

}
/// @nodoc
class __$ReferralStateCopyWithImpl<$Res>
    implements _$ReferralStateCopyWith<$Res> {
  __$ReferralStateCopyWithImpl(this._self, this._then);

  final _ReferralState _self;
  final $Res Function(_ReferralState) _then;

/// Create a copy of ReferralState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? status = freezed,Object? activities = null,Object? isLoading = null,Object? errorMessage = freezed,}) {
  return _then(_ReferralState(
status: freezed == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as ReferralStatusModel?,activities: null == activities ? _self._activities : activities // ignore: cast_nullable_to_non_nullable
as List<ReferralActivityModel>,isLoading: null == isLoading ? _self.isLoading : isLoading // ignore: cast_nullable_to_non_nullable
as bool,errorMessage: freezed == errorMessage ? _self.errorMessage : errorMessage // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

/// Create a copy of ReferralState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ReferralStatusModelCopyWith<$Res>? get status {
    if (_self.status == null) {
    return null;
  }

  return $ReferralStatusModelCopyWith<$Res>(_self.status!, (value) {
    return _then(_self.copyWith(status: value));
  });
}
}

// dart format on
