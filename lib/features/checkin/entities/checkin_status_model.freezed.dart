// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint, type=warning, deprecated_member_use, deprecated_member_use_from_same_package
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'checkin_status_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$WeekDayInfo {

/// 星期几 (1=Mon … 7=Sun)
 int get weekday;/// 日期展示 (e.g. "Oct 24")
 String get dateLabel;/// 签到状态
 DayStatus get status;
/// Create a copy of WeekDayInfo
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$WeekDayInfoCopyWith<WeekDayInfo> get copyWith => _$WeekDayInfoCopyWithImpl<WeekDayInfo>(this as WeekDayInfo, _$identity);

  /// Serializes this WeekDayInfo to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  final _this = this as WeekDayInfo;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is WeekDayInfo&&(identical(other.weekday, _this.weekday) || other.weekday == _this.weekday)&&(identical(other.dateLabel, _this.dateLabel) || other.dateLabel == _this.dateLabel)&&(identical(other.status, _this.status) || other.status == _this.status));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
  final _this = this as WeekDayInfo;
  return Object.hash(runtimeType,_this.weekday,_this.dateLabel,_this.status);
}

@override
String toString() {
  final _this = this as WeekDayInfo;
  return 'WeekDayInfo(weekday: ${_this.weekday}, dateLabel: ${_this.dateLabel}, status: ${_this.status})';
}


}

/// @nodoc
abstract mixin class $WeekDayInfoCopyWith<$Res>  {
  factory $WeekDayInfoCopyWith(WeekDayInfo value, $Res Function(WeekDayInfo) _then) = _$WeekDayInfoCopyWithImpl;
@useResult
$Res call({
 int weekday, String dateLabel, DayStatus status
});




}
/// @nodoc
class _$WeekDayInfoCopyWithImpl<$Res>
    implements $WeekDayInfoCopyWith<$Res> {
  _$WeekDayInfoCopyWithImpl(this._self, this._then);

  final WeekDayInfo _self;
  final $Res Function(WeekDayInfo) _then;

/// Create a copy of WeekDayInfo
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? weekday = null,Object? dateLabel = null,Object? status = null,}) {
  return _then(WeekDayInfo(
weekday: null == weekday ? _self.weekday : weekday // ignore: cast_nullable_to_non_nullable
as int,dateLabel: null == dateLabel ? _self.dateLabel : dateLabel // ignore: cast_nullable_to_non_nullable
as String,status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as DayStatus,
  ));
}

}


/// Adds pattern-matching-related methods to [WeekDayInfo].
extension WeekDayInfoPatterns on WeekDayInfo {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _WeekDayInfo value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _WeekDayInfo() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _WeekDayInfo value)  $default,){
final _that = this;
switch (_that) {
case _WeekDayInfo():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _WeekDayInfo value)?  $default,){
final _that = this;
switch (_that) {
case _WeekDayInfo() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int weekday,  String dateLabel,  DayStatus status)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _WeekDayInfo() when $default != null:
return $default(_that.weekday,_that.dateLabel,_that.status);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int weekday,  String dateLabel,  DayStatus status)  $default,) {final _that = this;
switch (_that) {
case _WeekDayInfo():
return $default(_that.weekday,_that.dateLabel,_that.status);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int weekday,  String dateLabel,  DayStatus status)?  $default,) {final _that = this;
switch (_that) {
case _WeekDayInfo() when $default != null:
return $default(_that.weekday,_that.dateLabel,_that.status);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _WeekDayInfo implements WeekDayInfo {
  const _WeekDayInfo({required this.weekday, required this.dateLabel, required this.status});
  factory _WeekDayInfo.fromJson(Map<String, dynamic> json) => _$WeekDayInfoFromJson(json);

/// 星期几 (1=Mon … 7=Sun)
@override final  int weekday;
/// 日期展示 (e.g. "Oct 24")
@override final  String dateLabel;
/// 签到状态
@override final  DayStatus status;

/// Create a copy of WeekDayInfo
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$WeekDayInfoCopyWith<_WeekDayInfo> get copyWith => __$WeekDayInfoCopyWithImpl<_WeekDayInfo>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$WeekDayInfoToJson(this, );
}

@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _WeekDayInfo&&(identical(other.weekday, weekday) || other.weekday == weekday)&&(identical(other.dateLabel, dateLabel) || other.dateLabel == dateLabel)&&(identical(other.status, status) || other.status == status));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
    return Object.hash(runtimeType,weekday,dateLabel,status);
}

@override
String toString() {
    return 'WeekDayInfo(weekday: $weekday, dateLabel: $dateLabel, status: $status)';
}


}

/// @nodoc
abstract mixin class _$WeekDayInfoCopyWith<$Res> implements $WeekDayInfoCopyWith<$Res> {
  factory _$WeekDayInfoCopyWith(_WeekDayInfo value, $Res Function(_WeekDayInfo) _then) = __$WeekDayInfoCopyWithImpl;
@override @useResult
$Res call({
 int weekday, String dateLabel, DayStatus status
});




}
/// @nodoc
class __$WeekDayInfoCopyWithImpl<$Res>
    implements _$WeekDayInfoCopyWith<$Res> {
  __$WeekDayInfoCopyWithImpl(this._self, this._then);

  final _WeekDayInfo _self;
  final $Res Function(_WeekDayInfo) _then;

/// Create a copy of WeekDayInfo
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? weekday = null,Object? dateLabel = null,Object? status = null,}) {
  return _then(_WeekDayInfo(
weekday: null == weekday ? _self.weekday : weekday // ignore: cast_nullable_to_non_nullable
as int,dateLabel: null == dateLabel ? _self.dateLabel : dateLabel // ignore: cast_nullable_to_non_nullable
as String,status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as DayStatus,
  ));
}


}


/// @nodoc
mixin _$CheckinStatusModel {

/// 连续签到天数
@JsonKey(name: 'streak_days') int get streakDays;/// 今日是否已签到
@JsonKey(name: 'checked_today') bool get checkedToday;/// 本周7天签到状态列表
@JsonKey(name: 'week_days') List<WeekDayInfo> get weekDays;/// 神秘奖励解锁所需天数
@JsonKey(name: 'mystery_reward_days') int get mysteryRewardDays;
/// Create a copy of CheckinStatusModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CheckinStatusModelCopyWith<CheckinStatusModel> get copyWith => _$CheckinStatusModelCopyWithImpl<CheckinStatusModel>(this as CheckinStatusModel, _$identity);

  /// Serializes this CheckinStatusModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  final _this = this as CheckinStatusModel;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CheckinStatusModel&&(identical(other.streakDays, _this.streakDays) || other.streakDays == _this.streakDays)&&(identical(other.checkedToday, _this.checkedToday) || other.checkedToday == _this.checkedToday)&&const DeepCollectionEquality().equals(other.weekDays, _this.weekDays)&&(identical(other.mysteryRewardDays, _this.mysteryRewardDays) || other.mysteryRewardDays == _this.mysteryRewardDays));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
  final _this = this as CheckinStatusModel;
  return Object.hash(runtimeType,_this.streakDays,_this.checkedToday,const DeepCollectionEquality().hash(_this.weekDays),_this.mysteryRewardDays);
}

@override
String toString() {
  final _this = this as CheckinStatusModel;
  return 'CheckinStatusModel(streakDays: ${_this.streakDays}, checkedToday: ${_this.checkedToday}, weekDays: ${_this.weekDays}, mysteryRewardDays: ${_this.mysteryRewardDays})';
}


}

/// @nodoc
abstract mixin class $CheckinStatusModelCopyWith<$Res>  {
  factory $CheckinStatusModelCopyWith(CheckinStatusModel value, $Res Function(CheckinStatusModel) _then) = _$CheckinStatusModelCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'streak_days') int streakDays,@JsonKey(name: 'checked_today') bool checkedToday,@JsonKey(name: 'week_days') List<WeekDayInfo> weekDays,@JsonKey(name: 'mystery_reward_days') int mysteryRewardDays
});




}
/// @nodoc
class _$CheckinStatusModelCopyWithImpl<$Res>
    implements $CheckinStatusModelCopyWith<$Res> {
  _$CheckinStatusModelCopyWithImpl(this._self, this._then);

  final CheckinStatusModel _self;
  final $Res Function(CheckinStatusModel) _then;

/// Create a copy of CheckinStatusModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? streakDays = null,Object? checkedToday = null,Object? weekDays = null,Object? mysteryRewardDays = null,}) {
  return _then(CheckinStatusModel(
streakDays: null == streakDays ? _self.streakDays : streakDays // ignore: cast_nullable_to_non_nullable
as int,checkedToday: null == checkedToday ? _self.checkedToday : checkedToday // ignore: cast_nullable_to_non_nullable
as bool,weekDays: null == weekDays ? _self.weekDays : weekDays // ignore: cast_nullable_to_non_nullable
as List<WeekDayInfo>,mysteryRewardDays: null == mysteryRewardDays ? _self.mysteryRewardDays : mysteryRewardDays // ignore: cast_nullable_to_non_nullable
as int,
  ));
}

}


/// Adds pattern-matching-related methods to [CheckinStatusModel].
extension CheckinStatusModelPatterns on CheckinStatusModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _CheckinStatusModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _CheckinStatusModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _CheckinStatusModel value)  $default,){
final _that = this;
switch (_that) {
case _CheckinStatusModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _CheckinStatusModel value)?  $default,){
final _that = this;
switch (_that) {
case _CheckinStatusModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'streak_days')  int streakDays, @JsonKey(name: 'checked_today')  bool checkedToday, @JsonKey(name: 'week_days')  List<WeekDayInfo> weekDays, @JsonKey(name: 'mystery_reward_days')  int mysteryRewardDays)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _CheckinStatusModel() when $default != null:
return $default(_that.streakDays,_that.checkedToday,_that.weekDays,_that.mysteryRewardDays);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'streak_days')  int streakDays, @JsonKey(name: 'checked_today')  bool checkedToday, @JsonKey(name: 'week_days')  List<WeekDayInfo> weekDays, @JsonKey(name: 'mystery_reward_days')  int mysteryRewardDays)  $default,) {final _that = this;
switch (_that) {
case _CheckinStatusModel():
return $default(_that.streakDays,_that.checkedToday,_that.weekDays,_that.mysteryRewardDays);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'streak_days')  int streakDays, @JsonKey(name: 'checked_today')  bool checkedToday, @JsonKey(name: 'week_days')  List<WeekDayInfo> weekDays, @JsonKey(name: 'mystery_reward_days')  int mysteryRewardDays)?  $default,) {final _that = this;
switch (_that) {
case _CheckinStatusModel() when $default != null:
return $default(_that.streakDays,_that.checkedToday,_that.weekDays,_that.mysteryRewardDays);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _CheckinStatusModel implements CheckinStatusModel {
  const _CheckinStatusModel({@JsonKey(name: 'streak_days') this.streakDays = 0, @JsonKey(name: 'checked_today') this.checkedToday = false, @JsonKey(name: 'week_days')  List<WeekDayInfo> weekDays = const [], @JsonKey(name: 'mystery_reward_days') this.mysteryRewardDays = 7}): _weekDays = weekDays;
  factory _CheckinStatusModel.fromJson(Map<String, dynamic> json) => _$CheckinStatusModelFromJson(json);

/// 连续签到天数
@override@JsonKey(name: 'streak_days') final  int streakDays;
/// 今日是否已签到
@override@JsonKey(name: 'checked_today') final  bool checkedToday;
/// 本周7天签到状态列表
 final  List<WeekDayInfo> _weekDays;
/// 本周7天签到状态列表
@override@JsonKey(name: 'week_days') List<WeekDayInfo> get weekDays {
  if (_weekDays is EqualUnmodifiableListView) return _weekDays;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_weekDays);
}

/// 神秘奖励解锁所需天数
@override@JsonKey(name: 'mystery_reward_days') final  int mysteryRewardDays;

/// Create a copy of CheckinStatusModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$CheckinStatusModelCopyWith<_CheckinStatusModel> get copyWith => __$CheckinStatusModelCopyWithImpl<_CheckinStatusModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$CheckinStatusModelToJson(this, );
}

@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _CheckinStatusModel&&(identical(other.streakDays, streakDays) || other.streakDays == streakDays)&&(identical(other.checkedToday, checkedToday) || other.checkedToday == checkedToday)&&const DeepCollectionEquality().equals(other.weekDays, _weekDays)&&(identical(other.mysteryRewardDays, mysteryRewardDays) || other.mysteryRewardDays == mysteryRewardDays));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
    return Object.hash(runtimeType,streakDays,checkedToday,const DeepCollectionEquality().hash(_weekDays),mysteryRewardDays);
}

@override
String toString() {
    return 'CheckinStatusModel(streakDays: $streakDays, checkedToday: $checkedToday, weekDays: $weekDays, mysteryRewardDays: $mysteryRewardDays)';
}


}

/// @nodoc
abstract mixin class _$CheckinStatusModelCopyWith<$Res> implements $CheckinStatusModelCopyWith<$Res> {
  factory _$CheckinStatusModelCopyWith(_CheckinStatusModel value, $Res Function(_CheckinStatusModel) _then) = __$CheckinStatusModelCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'streak_days') int streakDays,@JsonKey(name: 'checked_today') bool checkedToday,@JsonKey(name: 'week_days') List<WeekDayInfo> weekDays,@JsonKey(name: 'mystery_reward_days') int mysteryRewardDays
});




}
/// @nodoc
class __$CheckinStatusModelCopyWithImpl<$Res>
    implements _$CheckinStatusModelCopyWith<$Res> {
  __$CheckinStatusModelCopyWithImpl(this._self, this._then);

  final _CheckinStatusModel _self;
  final $Res Function(_CheckinStatusModel) _then;

/// Create a copy of CheckinStatusModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? streakDays = null,Object? checkedToday = null,Object? weekDays = null,Object? mysteryRewardDays = null,}) {
  return _then(_CheckinStatusModel(
streakDays: null == streakDays ? _self.streakDays : streakDays // ignore: cast_nullable_to_non_nullable
as int,checkedToday: null == checkedToday ? _self.checkedToday : checkedToday // ignore: cast_nullable_to_non_nullable
as bool,weekDays: null == weekDays ? _self._weekDays : weekDays // ignore: cast_nullable_to_non_nullable
as List<WeekDayInfo>,mysteryRewardDays: null == mysteryRewardDays ? _self.mysteryRewardDays : mysteryRewardDays // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}

// dart format on
