// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint, type=warning, deprecated_member_use, deprecated_member_use_from_same_package
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'mall_product_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$MallProductResponse {

/// 商品ID
 int get id;/// 商品标题
 String get name;/// 兑换所需积分
@JsonKey(name: 'required_points') int get requiredPoints;/// 库存
 int? get stock;/// 是否激活
@JsonKey(name: 'is_active') bool get isActive;/// 商品类型
 String get type;/// 类型标签
@JsonKey(name: 'type_label') String get typeLabel;/// 内容描述
 String get content;/// 规则
 Map<String, dynamic> get rules;/// 是否可用
@JsonKey(name: 'is_available') bool get isAvailable;/// 创建时间
@JsonKey(name: 'created_at') String get createdAt;
/// Create a copy of MallProductResponse
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$MallProductResponseCopyWith<MallProductResponse> get copyWith => _$MallProductResponseCopyWithImpl<MallProductResponse>(this as MallProductResponse, _$identity);

  /// Serializes this MallProductResponse to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  final _this = this as MallProductResponse;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is MallProductResponse&&(identical(other.id, _this.id) || other.id == _this.id)&&(identical(other.name, _this.name) || other.name == _this.name)&&(identical(other.requiredPoints, _this.requiredPoints) || other.requiredPoints == _this.requiredPoints)&&(identical(other.stock, _this.stock) || other.stock == _this.stock)&&(identical(other.isActive, _this.isActive) || other.isActive == _this.isActive)&&(identical(other.type, _this.type) || other.type == _this.type)&&(identical(other.typeLabel, _this.typeLabel) || other.typeLabel == _this.typeLabel)&&(identical(other.content, _this.content) || other.content == _this.content)&&const DeepCollectionEquality().equals(other.rules, _this.rules)&&(identical(other.isAvailable, _this.isAvailable) || other.isAvailable == _this.isAvailable)&&(identical(other.createdAt, _this.createdAt) || other.createdAt == _this.createdAt));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
  final _this = this as MallProductResponse;
  return Object.hash(runtimeType,_this.id,_this.name,_this.requiredPoints,_this.stock,_this.isActive,_this.type,_this.typeLabel,_this.content,const DeepCollectionEquality().hash(_this.rules),_this.isAvailable,_this.createdAt);
}

@override
String toString() {
  final _this = this as MallProductResponse;
  return 'MallProductResponse(id: ${_this.id}, name: ${_this.name}, requiredPoints: ${_this.requiredPoints}, stock: ${_this.stock}, isActive: ${_this.isActive}, type: ${_this.type}, typeLabel: ${_this.typeLabel}, content: ${_this.content}, rules: ${_this.rules}, isAvailable: ${_this.isAvailable}, createdAt: ${_this.createdAt})';
}


}

/// @nodoc
abstract mixin class $MallProductResponseCopyWith<$Res>  {
  factory $MallProductResponseCopyWith(MallProductResponse value, $Res Function(MallProductResponse) _then) = _$MallProductResponseCopyWithImpl;
@useResult
$Res call({
 int id, String name,@JsonKey(name: 'required_points') int requiredPoints, int? stock,@JsonKey(name: 'is_active') bool isActive, String type,@JsonKey(name: 'type_label') String typeLabel, String content, Map<String, dynamic> rules,@JsonKey(name: 'is_available') bool isAvailable,@JsonKey(name: 'created_at') String createdAt
});




}
/// @nodoc
class _$MallProductResponseCopyWithImpl<$Res>
    implements $MallProductResponseCopyWith<$Res> {
  _$MallProductResponseCopyWithImpl(this._self, this._then);

  final MallProductResponse _self;
  final $Res Function(MallProductResponse) _then;

/// Create a copy of MallProductResponse
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? name = null,Object? requiredPoints = null,Object? stock = freezed,Object? isActive = null,Object? type = null,Object? typeLabel = null,Object? content = null,Object? rules = null,Object? isAvailable = null,Object? createdAt = null,}) {
  return _then(MallProductResponse(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,requiredPoints: null == requiredPoints ? _self.requiredPoints : requiredPoints // ignore: cast_nullable_to_non_nullable
as int,stock: freezed == stock ? _self.stock : stock // ignore: cast_nullable_to_non_nullable
as int?,isActive: null == isActive ? _self.isActive : isActive // ignore: cast_nullable_to_non_nullable
as bool,type: null == type ? _self.type : type // ignore: cast_nullable_to_non_nullable
as String,typeLabel: null == typeLabel ? _self.typeLabel : typeLabel // ignore: cast_nullable_to_non_nullable
as String,content: null == content ? _self.content : content // ignore: cast_nullable_to_non_nullable
as String,rules: null == rules ? _self.rules : rules // ignore: cast_nullable_to_non_nullable
as Map<String, dynamic>,isAvailable: null == isAvailable ? _self.isAvailable : isAvailable // ignore: cast_nullable_to_non_nullable
as bool,createdAt: null == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [MallProductResponse].
extension MallProductResponsePatterns on MallProductResponse {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _MallProductResponse value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _MallProductResponse() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _MallProductResponse value)  $default,){
final _that = this;
switch (_that) {
case _MallProductResponse():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _MallProductResponse value)?  $default,){
final _that = this;
switch (_that) {
case _MallProductResponse() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int id,  String name, @JsonKey(name: 'required_points')  int requiredPoints,  int? stock, @JsonKey(name: 'is_active')  bool isActive,  String type, @JsonKey(name: 'type_label')  String typeLabel,  String content,  Map<String, dynamic> rules, @JsonKey(name: 'is_available')  bool isAvailable, @JsonKey(name: 'created_at')  String createdAt)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _MallProductResponse() when $default != null:
return $default(_that.id,_that.name,_that.requiredPoints,_that.stock,_that.isActive,_that.type,_that.typeLabel,_that.content,_that.rules,_that.isAvailable,_that.createdAt);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int id,  String name, @JsonKey(name: 'required_points')  int requiredPoints,  int? stock, @JsonKey(name: 'is_active')  bool isActive,  String type, @JsonKey(name: 'type_label')  String typeLabel,  String content,  Map<String, dynamic> rules, @JsonKey(name: 'is_available')  bool isAvailable, @JsonKey(name: 'created_at')  String createdAt)  $default,) {final _that = this;
switch (_that) {
case _MallProductResponse():
return $default(_that.id,_that.name,_that.requiredPoints,_that.stock,_that.isActive,_that.type,_that.typeLabel,_that.content,_that.rules,_that.isAvailable,_that.createdAt);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int id,  String name, @JsonKey(name: 'required_points')  int requiredPoints,  int? stock, @JsonKey(name: 'is_active')  bool isActive,  String type, @JsonKey(name: 'type_label')  String typeLabel,  String content,  Map<String, dynamic> rules, @JsonKey(name: 'is_available')  bool isAvailable, @JsonKey(name: 'created_at')  String createdAt)?  $default,) {final _that = this;
switch (_that) {
case _MallProductResponse() when $default != null:
return $default(_that.id,_that.name,_that.requiredPoints,_that.stock,_that.isActive,_that.type,_that.typeLabel,_that.content,_that.rules,_that.isAvailable,_that.createdAt);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _MallProductResponse implements MallProductResponse {
  const _MallProductResponse({required this.id, this.name = '', @JsonKey(name: 'required_points') this.requiredPoints = 0, this.stock, @JsonKey(name: 'is_active') this.isActive = false, this.type = '', @JsonKey(name: 'type_label') this.typeLabel = '', this.content = '',  Map<String, dynamic> rules = const {}, @JsonKey(name: 'is_available') this.isAvailable = false, @JsonKey(name: 'created_at') this.createdAt = ''}): _rules = rules;
  factory _MallProductResponse.fromJson(Map<String, dynamic> json) => _$MallProductResponseFromJson(json);

/// 商品ID
@override final  int id;
/// 商品标题
@override@JsonKey() final  String name;
/// 兑换所需积分
@override@JsonKey(name: 'required_points') final  int requiredPoints;
/// 库存
@override final  int? stock;
/// 是否激活
@override@JsonKey(name: 'is_active') final  bool isActive;
/// 商品类型
@override@JsonKey() final  String type;
/// 类型标签
@override@JsonKey(name: 'type_label') final  String typeLabel;
/// 内容描述
@override@JsonKey() final  String content;
/// 规则
 final  Map<String, dynamic> _rules;
/// 规则
@override@JsonKey() Map<String, dynamic> get rules {
  if (_rules is EqualUnmodifiableMapView) return _rules;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableMapView(_rules);
}

/// 是否可用
@override@JsonKey(name: 'is_available') final  bool isAvailable;
/// 创建时间
@override@JsonKey(name: 'created_at') final  String createdAt;

/// Create a copy of MallProductResponse
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$MallProductResponseCopyWith<_MallProductResponse> get copyWith => __$MallProductResponseCopyWithImpl<_MallProductResponse>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$MallProductResponseToJson(this, );
}

@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _MallProductResponse&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&(identical(other.requiredPoints, requiredPoints) || other.requiredPoints == requiredPoints)&&(identical(other.stock, stock) || other.stock == stock)&&(identical(other.isActive, isActive) || other.isActive == isActive)&&(identical(other.type, type) || other.type == type)&&(identical(other.typeLabel, typeLabel) || other.typeLabel == typeLabel)&&(identical(other.content, content) || other.content == content)&&const DeepCollectionEquality().equals(other.rules, _rules)&&(identical(other.isAvailable, isAvailable) || other.isAvailable == isAvailable)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
    return Object.hash(runtimeType,id,name,requiredPoints,stock,isActive,type,typeLabel,content,const DeepCollectionEquality().hash(_rules),isAvailable,createdAt);
}

@override
String toString() {
    return 'MallProductResponse(id: $id, name: $name, requiredPoints: $requiredPoints, stock: $stock, isActive: $isActive, type: $type, typeLabel: $typeLabel, content: $content, rules: $rules, isAvailable: $isAvailable, createdAt: $createdAt)';
}


}

/// @nodoc
abstract mixin class _$MallProductResponseCopyWith<$Res> implements $MallProductResponseCopyWith<$Res> {
  factory _$MallProductResponseCopyWith(_MallProductResponse value, $Res Function(_MallProductResponse) _then) = __$MallProductResponseCopyWithImpl;
@override @useResult
$Res call({
 int id, String name,@JsonKey(name: 'required_points') int requiredPoints, int? stock,@JsonKey(name: 'is_active') bool isActive, String type,@JsonKey(name: 'type_label') String typeLabel, String content, Map<String, dynamic> rules,@JsonKey(name: 'is_available') bool isAvailable,@JsonKey(name: 'created_at') String createdAt
});




}
/// @nodoc
class __$MallProductResponseCopyWithImpl<$Res>
    implements _$MallProductResponseCopyWith<$Res> {
  __$MallProductResponseCopyWithImpl(this._self, this._then);

  final _MallProductResponse _self;
  final $Res Function(_MallProductResponse) _then;

/// Create a copy of MallProductResponse
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? name = null,Object? requiredPoints = null,Object? stock = freezed,Object? isActive = null,Object? type = null,Object? typeLabel = null,Object? content = null,Object? rules = null,Object? isAvailable = null,Object? createdAt = null,}) {
  return _then(_MallProductResponse(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,requiredPoints: null == requiredPoints ? _self.requiredPoints : requiredPoints // ignore: cast_nullable_to_non_nullable
as int,stock: freezed == stock ? _self.stock : stock // ignore: cast_nullable_to_non_nullable
as int?,isActive: null == isActive ? _self.isActive : isActive // ignore: cast_nullable_to_non_nullable
as bool,type: null == type ? _self.type : type // ignore: cast_nullable_to_non_nullable
as String,typeLabel: null == typeLabel ? _self.typeLabel : typeLabel // ignore: cast_nullable_to_non_nullable
as String,content: null == content ? _self.content : content // ignore: cast_nullable_to_non_nullable
as String,rules: null == rules ? _self._rules : rules // ignore: cast_nullable_to_non_nullable
as Map<String, dynamic>,isAvailable: null == isAvailable ? _self.isAvailable : isAvailable // ignore: cast_nullable_to_non_nullable
as bool,createdAt: null == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
