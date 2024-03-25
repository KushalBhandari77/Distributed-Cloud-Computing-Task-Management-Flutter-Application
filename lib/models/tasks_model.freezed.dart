// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'tasks_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

TasksModel _$TasksModelFromJson(Map<String, dynamic> json) {
  return _TasksModel.fromJson(json);
}

/// @nodoc
mixin _$TasksModel {
  bool get success => throw _privateConstructorUsedError;
  int get statusCode => throw _privateConstructorUsedError;
  List<TasksModelData> get data => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TasksModelCopyWith<TasksModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TasksModelCopyWith<$Res> {
  factory $TasksModelCopyWith(
          TasksModel value, $Res Function(TasksModel) then) =
      _$TasksModelCopyWithImpl<$Res, TasksModel>;
  @useResult
  $Res call({bool success, int statusCode, List<TasksModelData> data});
}

/// @nodoc
class _$TasksModelCopyWithImpl<$Res, $Val extends TasksModel>
    implements $TasksModelCopyWith<$Res> {
  _$TasksModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? success = null,
    Object? statusCode = null,
    Object? data = null,
  }) {
    return _then(_value.copyWith(
      success: null == success
          ? _value.success
          : success // ignore: cast_nullable_to_non_nullable
              as bool,
      statusCode: null == statusCode
          ? _value.statusCode
          : statusCode // ignore: cast_nullable_to_non_nullable
              as int,
      data: null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as List<TasksModelData>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$TasksModelImplCopyWith<$Res>
    implements $TasksModelCopyWith<$Res> {
  factory _$$TasksModelImplCopyWith(
          _$TasksModelImpl value, $Res Function(_$TasksModelImpl) then) =
      __$$TasksModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({bool success, int statusCode, List<TasksModelData> data});
}

/// @nodoc
class __$$TasksModelImplCopyWithImpl<$Res>
    extends _$TasksModelCopyWithImpl<$Res, _$TasksModelImpl>
    implements _$$TasksModelImplCopyWith<$Res> {
  __$$TasksModelImplCopyWithImpl(
      _$TasksModelImpl _value, $Res Function(_$TasksModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? success = null,
    Object? statusCode = null,
    Object? data = null,
  }) {
    return _then(_$TasksModelImpl(
      success: null == success
          ? _value.success
          : success // ignore: cast_nullable_to_non_nullable
              as bool,
      statusCode: null == statusCode
          ? _value.statusCode
          : statusCode // ignore: cast_nullable_to_non_nullable
              as int,
      data: null == data
          ? _value._data
          : data // ignore: cast_nullable_to_non_nullable
              as List<TasksModelData>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$TasksModelImpl implements _TasksModel {
  _$TasksModelImpl(
      {this.success = false,
      this.statusCode = -1,
      required final List<TasksModelData> data})
      : _data = data;

  factory _$TasksModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$TasksModelImplFromJson(json);

  @override
  @JsonKey()
  final bool success;
  @override
  @JsonKey()
  final int statusCode;
  final List<TasksModelData> _data;
  @override
  List<TasksModelData> get data {
    if (_data is EqualUnmodifiableListView) return _data;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_data);
  }

  @override
  String toString() {
    return 'TasksModel(success: $success, statusCode: $statusCode, data: $data)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TasksModelImpl &&
            (identical(other.success, success) || other.success == success) &&
            (identical(other.statusCode, statusCode) ||
                other.statusCode == statusCode) &&
            const DeepCollectionEquality().equals(other._data, _data));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, success, statusCode,
      const DeepCollectionEquality().hash(_data));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$TasksModelImplCopyWith<_$TasksModelImpl> get copyWith =>
      __$$TasksModelImplCopyWithImpl<_$TasksModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$TasksModelImplToJson(
      this,
    );
  }
}

abstract class _TasksModel implements TasksModel {
  factory _TasksModel(
      {final bool success,
      final int statusCode,
      required final List<TasksModelData> data}) = _$TasksModelImpl;

  factory _TasksModel.fromJson(Map<String, dynamic> json) =
      _$TasksModelImpl.fromJson;

  @override
  bool get success;
  @override
  int get statusCode;
  @override
  List<TasksModelData> get data;
  @override
  @JsonKey(ignore: true)
  _$$TasksModelImplCopyWith<_$TasksModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

TasksModelData _$TasksModelDataFromJson(Map<String, dynamic> json) {
  return _TasksModelData.fromJson(json);
}

/// @nodoc
mixin _$TasksModelData {
  int get id => throw _privateConstructorUsedError;
  String get title => throw _privateConstructorUsedError;
  String get description => throw _privateConstructorUsedError;
  bool get completed => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TasksModelDataCopyWith<TasksModelData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TasksModelDataCopyWith<$Res> {
  factory $TasksModelDataCopyWith(
          TasksModelData value, $Res Function(TasksModelData) then) =
      _$TasksModelDataCopyWithImpl<$Res, TasksModelData>;
  @useResult
  $Res call({int id, String title, String description, bool completed});
}

/// @nodoc
class _$TasksModelDataCopyWithImpl<$Res, $Val extends TasksModelData>
    implements $TasksModelDataCopyWith<$Res> {
  _$TasksModelDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? title = null,
    Object? description = null,
    Object? completed = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      completed: null == completed
          ? _value.completed
          : completed // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$TasksModelDataImplCopyWith<$Res>
    implements $TasksModelDataCopyWith<$Res> {
  factory _$$TasksModelDataImplCopyWith(_$TasksModelDataImpl value,
          $Res Function(_$TasksModelDataImpl) then) =
      __$$TasksModelDataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int id, String title, String description, bool completed});
}

/// @nodoc
class __$$TasksModelDataImplCopyWithImpl<$Res>
    extends _$TasksModelDataCopyWithImpl<$Res, _$TasksModelDataImpl>
    implements _$$TasksModelDataImplCopyWith<$Res> {
  __$$TasksModelDataImplCopyWithImpl(
      _$TasksModelDataImpl _value, $Res Function(_$TasksModelDataImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? title = null,
    Object? description = null,
    Object? completed = null,
  }) {
    return _then(_$TasksModelDataImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      completed: null == completed
          ? _value.completed
          : completed // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$TasksModelDataImpl implements _TasksModelData {
  _$TasksModelDataImpl(
      {this.id = -1,
      this.title = "",
      this.description = "",
      this.completed = false});

  factory _$TasksModelDataImpl.fromJson(Map<String, dynamic> json) =>
      _$$TasksModelDataImplFromJson(json);

  @override
  @JsonKey()
  final int id;
  @override
  @JsonKey()
  final String title;
  @override
  @JsonKey()
  final String description;
  @override
  @JsonKey()
  final bool completed;

  @override
  String toString() {
    return 'TasksModelData(id: $id, title: $title, description: $description, completed: $completed)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TasksModelDataImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.completed, completed) ||
                other.completed == completed));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, id, title, description, completed);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$TasksModelDataImplCopyWith<_$TasksModelDataImpl> get copyWith =>
      __$$TasksModelDataImplCopyWithImpl<_$TasksModelDataImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$TasksModelDataImplToJson(
      this,
    );
  }
}

abstract class _TasksModelData implements TasksModelData {
  factory _TasksModelData(
      {final int id,
      final String title,
      final String description,
      final bool completed}) = _$TasksModelDataImpl;

  factory _TasksModelData.fromJson(Map<String, dynamic> json) =
      _$TasksModelDataImpl.fromJson;

  @override
  int get id;
  @override
  String get title;
  @override
  String get description;
  @override
  bool get completed;
  @override
  @JsonKey(ignore: true)
  _$$TasksModelDataImplCopyWith<_$TasksModelDataImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
