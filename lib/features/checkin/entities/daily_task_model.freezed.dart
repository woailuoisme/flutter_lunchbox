// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint, type=warning, deprecated_member_use, deprecated_member_use_from_same_package
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'daily_task_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$DailyTaskModel {

/// 任务ID
 int get id;/// 任务类型
 DailyTaskType get type;/// 任务标题
 String get title;/// 奖励积分
@JsonKey(name: 'reward_points') int get rewardPoints;/// 是否已完成
@JsonKey(name: 'is_completed') bool get isCompleted;
/// Create a copy of DailyTaskModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$DailyTaskModelCopyWith<DailyTaskModel> get copyWith => _$DailyTaskModelCopyWithImpl<DailyTaskModel>(this as DailyTaskModel, _$identity);

  /// Serializes this DailyTaskModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  final _this = this as DailyTaskModel;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is DailyTaskModel&&(identical(other.id, _this.id) || other.id == _this.id)&&(identical(other.type, _this.type) || other.type == _this.type)&&(identical(other.title, _this.title) || other.title == _this.title)&&(identical(other.rewardPoints, _this.rewardPoints) || other.rewardPoints == _this.rewardPoints)&&(identical(other.isCompleted, _this.isCompleted) || other.isCompleted == _this.isCompleted));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
  final _this = this as DailyTaskModel;
  return Object.hash(runtimeType,_this.id,_this.type,_this.title,_this.rewardPoints,_this.isCompleted);
}

@override
String toString() {
  final _this = this as DailyTaskModel;
  return 'DailyTaskModel(id: ${_this.id}, type: ${_this.type}, title: ${_this.title}, rewardPoints: ${_this.rewardPoints}, isCompleted: ${_this.isCompleted})';
}


}

/// @nodoc
abstract mixin class $DailyTaskModelCopyWith<$Res>  {
  factory $DailyTaskModelCopyWith(DailyTaskModel value, $Res Function(DailyTaskModel) _then) = _$DailyTaskModelCopyWithImpl;
@useResult
$Res call({
 int id, DailyTaskType type, String title,@JsonKey(name: 'reward_points') int rewardPoints,@JsonKey(name: 'is_completed') bool isCompleted
});




}
/// @nodoc
class _$DailyTaskModelCopyWithImpl<$Res>
    implements $DailyTaskModelCopyWith<$Res> {
  _$DailyTaskModelCopyWithImpl(this._self, this._then);

  final DailyTaskModel _self;
  final $Res Function(DailyTaskModel) _then;

/// Create a copy of DailyTaskModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? type = null,Object? title = null,Object? rewardPoints = null,Object? isCompleted = null,}) {
  return _then(DailyTaskModel(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,type: null == type ? _self.type : type // ignore: cast_nullable_to_non_nullable
as DailyTaskType,title: null == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String,rewardPoints: null == rewardPoints ? _self.rewardPoints : rewardPoints // ignore: cast_nullable_to_non_nullable
as int,isCompleted: null == isCompleted ? _self.isCompleted : isCompleted // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}

}


/// Adds pattern-matching-related methods to [DailyTaskModel].
extension DailyTaskModelPatterns on DailyTaskModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _DailyTaskModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _DailyTaskModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _DailyTaskModel value)  $default,){
final _that = this;
switch (_that) {
case _DailyTaskModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _DailyTaskModel value)?  $default,){
final _that = this;
switch (_that) {
case _DailyTaskModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int id,  DailyTaskType type,  String title, @JsonKey(name: 'reward_points')  int rewardPoints, @JsonKey(name: 'is_completed')  bool isCompleted)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _DailyTaskModel() when $default != null:
return $default(_that.id,_that.type,_that.title,_that.rewardPoints,_that.isCompleted);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int id,  DailyTaskType type,  String title, @JsonKey(name: 'reward_points')  int rewardPoints, @JsonKey(name: 'is_completed')  bool isCompleted)  $default,) {final _that = this;
switch (_that) {
case _DailyTaskModel():
return $default(_that.id,_that.type,_that.title,_that.rewardPoints,_that.isCompleted);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int id,  DailyTaskType type,  String title, @JsonKey(name: 'reward_points')  int rewardPoints, @JsonKey(name: 'is_completed')  bool isCompleted)?  $default,) {final _that = this;
switch (_that) {
case _DailyTaskModel() when $default != null:
return $default(_that.id,_that.type,_that.title,_that.rewardPoints,_that.isCompleted);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _DailyTaskModel implements DailyTaskModel {
  const _DailyTaskModel({required this.id, required this.type, required this.title, @JsonKey(name: 'reward_points') this.rewardPoints = 0, @JsonKey(name: 'is_completed') this.isCompleted = false});
  factory _DailyTaskModel.fromJson(Map<String, dynamic> json) => _$DailyTaskModelFromJson(json);

/// 任务ID
@override final  int id;
/// 任务类型
@override final  DailyTaskType type;
/// 任务标题
@override final  String title;
/// 奖励积分
@override@JsonKey(name: 'reward_points') final  int rewardPoints;
/// 是否已完成
@override@JsonKey(name: 'is_completed') final  bool isCompleted;

/// Create a copy of DailyTaskModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$DailyTaskModelCopyWith<_DailyTaskModel> get copyWith => __$DailyTaskModelCopyWithImpl<_DailyTaskModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$DailyTaskModelToJson(this, );
}

@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _DailyTaskModel&&(identical(other.id, id) || other.id == id)&&(identical(other.type, type) || other.type == type)&&(identical(other.title, title) || other.title == title)&&(identical(other.rewardPoints, rewardPoints) || other.rewardPoints == rewardPoints)&&(identical(other.isCompleted, isCompleted) || other.isCompleted == isCompleted));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
    return Object.hash(runtimeType,id,type,title,rewardPoints,isCompleted);
}

@override
String toString() {
    return 'DailyTaskModel(id: $id, type: $type, title: $title, rewardPoints: $rewardPoints, isCompleted: $isCompleted)';
}


}

/// @nodoc
abstract mixin class _$DailyTaskModelCopyWith<$Res> implements $DailyTaskModelCopyWith<$Res> {
  factory _$DailyTaskModelCopyWith(_DailyTaskModel value, $Res Function(_DailyTaskModel) _then) = __$DailyTaskModelCopyWithImpl;
@override @useResult
$Res call({
 int id, DailyTaskType type, String title,@JsonKey(name: 'reward_points') int rewardPoints,@JsonKey(name: 'is_completed') bool isCompleted
});




}
/// @nodoc
class __$DailyTaskModelCopyWithImpl<$Res>
    implements _$DailyTaskModelCopyWith<$Res> {
  __$DailyTaskModelCopyWithImpl(this._self, this._then);

  final _DailyTaskModel _self;
  final $Res Function(_DailyTaskModel) _then;

/// Create a copy of DailyTaskModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? type = null,Object? title = null,Object? rewardPoints = null,Object? isCompleted = null,}) {
  return _then(_DailyTaskModel(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,type: null == type ? _self.type : type // ignore: cast_nullable_to_non_nullable
as DailyTaskType,title: null == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String,rewardPoints: null == rewardPoints ? _self.rewardPoints : rewardPoints // ignore: cast_nullable_to_non_nullable
as int,isCompleted: null == isCompleted ? _self.isCompleted : isCompleted // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}


}

// dart format on
