// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint, type=warning, deprecated_member_use, deprecated_member_use_from_same_package
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'referral_activity_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$ReferralActivityModel {

 String get userName; double get amount; DateTime get timestamp;
/// Create a copy of ReferralActivityModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ReferralActivityModelCopyWith<ReferralActivityModel> get copyWith => _$ReferralActivityModelCopyWithImpl<ReferralActivityModel>(this as ReferralActivityModel, _$identity);

  /// Serializes this ReferralActivityModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  final _this = this as ReferralActivityModel;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ReferralActivityModel&&(identical(other.userName, _this.userName) || other.userName == _this.userName)&&(identical(other.amount, _this.amount) || other.amount == _this.amount)&&(identical(other.timestamp, _this.timestamp) || other.timestamp == _this.timestamp));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
  final _this = this as ReferralActivityModel;
  return Object.hash(runtimeType,_this.userName,_this.amount,_this.timestamp);
}

@override
String toString() {
  final _this = this as ReferralActivityModel;
  return 'ReferralActivityModel(userName: ${_this.userName}, amount: ${_this.amount}, timestamp: ${_this.timestamp})';
}


}

/// @nodoc
abstract mixin class $ReferralActivityModelCopyWith<$Res>  {
  factory $ReferralActivityModelCopyWith(ReferralActivityModel value, $Res Function(ReferralActivityModel) _then) = _$ReferralActivityModelCopyWithImpl;
@useResult
$Res call({
 String userName, double amount, DateTime timestamp
});




}
/// @nodoc
class _$ReferralActivityModelCopyWithImpl<$Res>
    implements $ReferralActivityModelCopyWith<$Res> {
  _$ReferralActivityModelCopyWithImpl(this._self, this._then);

  final ReferralActivityModel _self;
  final $Res Function(ReferralActivityModel) _then;

/// Create a copy of ReferralActivityModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? userName = null,Object? amount = null,Object? timestamp = null,}) {
  return _then(ReferralActivityModel(
userName: null == userName ? _self.userName : userName // ignore: cast_nullable_to_non_nullable
as String,amount: null == amount ? _self.amount : amount // ignore: cast_nullable_to_non_nullable
as double,timestamp: null == timestamp ? _self.timestamp : timestamp // ignore: cast_nullable_to_non_nullable
as DateTime,
  ));
}

}


/// Adds pattern-matching-related methods to [ReferralActivityModel].
extension ReferralActivityModelPatterns on ReferralActivityModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ReferralActivityModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ReferralActivityModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ReferralActivityModel value)  $default,){
final _that = this;
switch (_that) {
case _ReferralActivityModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ReferralActivityModel value)?  $default,){
final _that = this;
switch (_that) {
case _ReferralActivityModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String userName,  double amount,  DateTime timestamp)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ReferralActivityModel() when $default != null:
return $default(_that.userName,_that.amount,_that.timestamp);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String userName,  double amount,  DateTime timestamp)  $default,) {final _that = this;
switch (_that) {
case _ReferralActivityModel():
return $default(_that.userName,_that.amount,_that.timestamp);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String userName,  double amount,  DateTime timestamp)?  $default,) {final _that = this;
switch (_that) {
case _ReferralActivityModel() when $default != null:
return $default(_that.userName,_that.amount,_that.timestamp);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _ReferralActivityModel implements ReferralActivityModel {
  const _ReferralActivityModel({required this.userName, required this.amount, required this.timestamp});
  factory _ReferralActivityModel.fromJson(Map<String, dynamic> json) => _$ReferralActivityModelFromJson(json);

@override final  String userName;
@override final  double amount;
@override final  DateTime timestamp;

/// Create a copy of ReferralActivityModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ReferralActivityModelCopyWith<_ReferralActivityModel> get copyWith => __$ReferralActivityModelCopyWithImpl<_ReferralActivityModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ReferralActivityModelToJson(this, );
}

@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _ReferralActivityModel&&(identical(other.userName, userName) || other.userName == userName)&&(identical(other.amount, amount) || other.amount == amount)&&(identical(other.timestamp, timestamp) || other.timestamp == timestamp));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
    return Object.hash(runtimeType,userName,amount,timestamp);
}

@override
String toString() {
    return 'ReferralActivityModel(userName: $userName, amount: $amount, timestamp: $timestamp)';
}


}

/// @nodoc
abstract mixin class _$ReferralActivityModelCopyWith<$Res> implements $ReferralActivityModelCopyWith<$Res> {
  factory _$ReferralActivityModelCopyWith(_ReferralActivityModel value, $Res Function(_ReferralActivityModel) _then) = __$ReferralActivityModelCopyWithImpl;
@override @useResult
$Res call({
 String userName, double amount, DateTime timestamp
});




}
/// @nodoc
class __$ReferralActivityModelCopyWithImpl<$Res>
    implements _$ReferralActivityModelCopyWith<$Res> {
  __$ReferralActivityModelCopyWithImpl(this._self, this._then);

  final _ReferralActivityModel _self;
  final $Res Function(_ReferralActivityModel) _then;

/// Create a copy of ReferralActivityModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? userName = null,Object? amount = null,Object? timestamp = null,}) {
  return _then(_ReferralActivityModel(
userName: null == userName ? _self.userName : userName // ignore: cast_nullable_to_non_nullable
as String,amount: null == amount ? _self.amount : amount // ignore: cast_nullable_to_non_nullable
as double,timestamp: null == timestamp ? _self.timestamp : timestamp // ignore: cast_nullable_to_non_nullable
as DateTime,
  ));
}


}

// dart format on
