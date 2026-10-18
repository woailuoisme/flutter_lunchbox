// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint, type=warning, deprecated_member_use, deprecated_member_use_from_same_package
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'referral_status_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$ReferralStatusModel {

 double get totalEarnings; int get invitedFriends; String get inviteCode;
/// Create a copy of ReferralStatusModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ReferralStatusModelCopyWith<ReferralStatusModel> get copyWith => _$ReferralStatusModelCopyWithImpl<ReferralStatusModel>(this as ReferralStatusModel, _$identity);

  /// Serializes this ReferralStatusModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  final _this = this as ReferralStatusModel;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ReferralStatusModel&&(identical(other.totalEarnings, _this.totalEarnings) || other.totalEarnings == _this.totalEarnings)&&(identical(other.invitedFriends, _this.invitedFriends) || other.invitedFriends == _this.invitedFriends)&&(identical(other.inviteCode, _this.inviteCode) || other.inviteCode == _this.inviteCode));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
  final _this = this as ReferralStatusModel;
  return Object.hash(runtimeType,_this.totalEarnings,_this.invitedFriends,_this.inviteCode);
}

@override
String toString() {
  final _this = this as ReferralStatusModel;
  return 'ReferralStatusModel(totalEarnings: ${_this.totalEarnings}, invitedFriends: ${_this.invitedFriends}, inviteCode: ${_this.inviteCode})';
}


}

/// @nodoc
abstract mixin class $ReferralStatusModelCopyWith<$Res>  {
  factory $ReferralStatusModelCopyWith(ReferralStatusModel value, $Res Function(ReferralStatusModel) _then) = _$ReferralStatusModelCopyWithImpl;
@useResult
$Res call({
 double totalEarnings, int invitedFriends, String inviteCode
});




}
/// @nodoc
class _$ReferralStatusModelCopyWithImpl<$Res>
    implements $ReferralStatusModelCopyWith<$Res> {
  _$ReferralStatusModelCopyWithImpl(this._self, this._then);

  final ReferralStatusModel _self;
  final $Res Function(ReferralStatusModel) _then;

/// Create a copy of ReferralStatusModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? totalEarnings = null,Object? invitedFriends = null,Object? inviteCode = null,}) {
  return _then(ReferralStatusModel(
totalEarnings: null == totalEarnings ? _self.totalEarnings : totalEarnings // ignore: cast_nullable_to_non_nullable
as double,invitedFriends: null == invitedFriends ? _self.invitedFriends : invitedFriends // ignore: cast_nullable_to_non_nullable
as int,inviteCode: null == inviteCode ? _self.inviteCode : inviteCode // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [ReferralStatusModel].
extension ReferralStatusModelPatterns on ReferralStatusModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ReferralStatusModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ReferralStatusModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ReferralStatusModel value)  $default,){
final _that = this;
switch (_that) {
case _ReferralStatusModel():
return $default(_that);}
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ReferralStatusModel value)?  $default,){
final _that = this;
switch (_that) {
case _ReferralStatusModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( double totalEarnings,  int invitedFriends,  String inviteCode)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ReferralStatusModel() when $default != null:
return $default(_that.totalEarnings,_that.invitedFriends,_that.inviteCode);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( double totalEarnings,  int invitedFriends,  String inviteCode)  $default,) {final _that = this;
switch (_that) {
case _ReferralStatusModel():
return $default(_that.totalEarnings,_that.invitedFriends,_that.inviteCode);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( double totalEarnings,  int invitedFriends,  String inviteCode)?  $default,) {final _that = this;
switch (_that) {
case _ReferralStatusModel() when $default != null:
return $default(_that.totalEarnings,_that.invitedFriends,_that.inviteCode);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _ReferralStatusModel implements ReferralStatusModel {
  const _ReferralStatusModel({required this.totalEarnings, required this.invitedFriends, required this.inviteCode});
  factory _ReferralStatusModel.fromJson(Map<String, dynamic> json) => _$ReferralStatusModelFromJson(json);

@override final  double totalEarnings;
@override final  int invitedFriends;
@override final  String inviteCode;

/// Create a copy of ReferralStatusModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ReferralStatusModelCopyWith<_ReferralStatusModel> get copyWith => __$ReferralStatusModelCopyWithImpl<_ReferralStatusModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ReferralStatusModelToJson(this, );
}

@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _ReferralStatusModel&&(identical(other.totalEarnings, totalEarnings) || other.totalEarnings == totalEarnings)&&(identical(other.invitedFriends, invitedFriends) || other.invitedFriends == invitedFriends)&&(identical(other.inviteCode, inviteCode) || other.inviteCode == inviteCode));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
    return Object.hash(runtimeType,totalEarnings,invitedFriends,inviteCode);
}

@override
String toString() {
    return 'ReferralStatusModel(totalEarnings: $totalEarnings, invitedFriends: $invitedFriends, inviteCode: $inviteCode)';
}


}

/// @nodoc
abstract mixin class _$ReferralStatusModelCopyWith<$Res> implements $ReferralStatusModelCopyWith<$Res> {
  factory _$ReferralStatusModelCopyWith(_ReferralStatusModel value, $Res Function(_ReferralStatusModel) _then) = __$ReferralStatusModelCopyWithImpl;
@override @useResult
$Res call({
 double totalEarnings, int invitedFriends, String inviteCode
});




}
/// @nodoc
class __$ReferralStatusModelCopyWithImpl<$Res>
    implements _$ReferralStatusModelCopyWith<$Res> {
  __$ReferralStatusModelCopyWithImpl(this._self, this._then);

  final _ReferralStatusModel _self;
  final $Res Function(_ReferralStatusModel) _then;

/// Create a copy of ReferralStatusModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? totalEarnings = null,Object? invitedFriends = null,Object? inviteCode = null,}) {
  return _then(_ReferralStatusModel(
totalEarnings: null == totalEarnings ? _self.totalEarnings : totalEarnings // ignore: cast_nullable_to_non_nullable
as double,invitedFriends: null == invitedFriends ? _self.invitedFriends : invitedFriends // ignore: cast_nullable_to_non_nullable
as int,inviteCode: null == inviteCode ? _self.inviteCode : inviteCode // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
