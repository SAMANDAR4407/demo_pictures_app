// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'image_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$ImageState {
  EnumStatus get status => throw _privateConstructorUsedError;
  List<ImageModel> get list => throw _privateConstructorUsedError;
  int get page => throw _privateConstructorUsedError;
  String get message => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            EnumStatus status, List<ImageModel> list, int page, String message)
        state,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
            EnumStatus status, List<ImageModel> list, int page, String message)?
        state,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            EnumStatus status, List<ImageModel> list, int page, String message)?
        state,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_state value) state,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_state value)? state,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_state value)? state,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ImageStateCopyWith<ImageState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ImageStateCopyWith<$Res> {
  factory $ImageStateCopyWith(
          ImageState value, $Res Function(ImageState) then) =
      _$ImageStateCopyWithImpl<$Res, ImageState>;
  @useResult
  $Res call(
      {EnumStatus status, List<ImageModel> list, int page, String message});
}

/// @nodoc
class _$ImageStateCopyWithImpl<$Res, $Val extends ImageState>
    implements $ImageStateCopyWith<$Res> {
  _$ImageStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? list = null,
    Object? page = null,
    Object? message = null,
  }) {
    return _then(_value.copyWith(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as EnumStatus,
      list: null == list
          ? _value.list
          : list // ignore: cast_nullable_to_non_nullable
              as List<ImageModel>,
      page: null == page
          ? _value.page
          : page // ignore: cast_nullable_to_non_nullable
              as int,
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_stateCopyWith<$Res> implements $ImageStateCopyWith<$Res> {
  factory _$$_stateCopyWith(_$_state value, $Res Function(_$_state) then) =
      __$$_stateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {EnumStatus status, List<ImageModel> list, int page, String message});
}

/// @nodoc
class __$$_stateCopyWithImpl<$Res>
    extends _$ImageStateCopyWithImpl<$Res, _$_state>
    implements _$$_stateCopyWith<$Res> {
  __$$_stateCopyWithImpl(_$_state _value, $Res Function(_$_state) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? list = null,
    Object? page = null,
    Object? message = null,
  }) {
    return _then(_$_state(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as EnumStatus,
      list: null == list
          ? _value._list
          : list // ignore: cast_nullable_to_non_nullable
              as List<ImageModel>,
      page: null == page
          ? _value.page
          : page // ignore: cast_nullable_to_non_nullable
              as int,
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_state implements _state {
  _$_state(
      {this.status = EnumStatus.initial,
      final List<ImageModel> list = const [],
      this.page = 1,
      this.message = ''})
      : _list = list;

  @override
  @JsonKey()
  final EnumStatus status;
  final List<ImageModel> _list;
  @override
  @JsonKey()
  List<ImageModel> get list {
    if (_list is EqualUnmodifiableListView) return _list;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_list);
  }

  @override
  @JsonKey()
  final int page;
  @override
  @JsonKey()
  final String message;

  @override
  String toString() {
    return 'ImageState.state(status: $status, list: $list, page: $page, message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_state &&
            (identical(other.status, status) || other.status == status) &&
            const DeepCollectionEquality().equals(other._list, _list) &&
            (identical(other.page, page) || other.page == page) &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, status,
      const DeepCollectionEquality().hash(_list), page, message);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_stateCopyWith<_$_state> get copyWith =>
      __$$_stateCopyWithImpl<_$_state>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            EnumStatus status, List<ImageModel> list, int page, String message)
        state,
  }) {
    return state(status, list, page, message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
            EnumStatus status, List<ImageModel> list, int page, String message)?
        state,
  }) {
    return state?.call(status, list, page, message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            EnumStatus status, List<ImageModel> list, int page, String message)?
        state,
    required TResult orElse(),
  }) {
    if (state != null) {
      return state(status, list, page, message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_state value) state,
  }) {
    return state(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_state value)? state,
  }) {
    return state?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_state value)? state,
    required TResult orElse(),
  }) {
    if (state != null) {
      return state(this);
    }
    return orElse();
  }
}

abstract class _state implements ImageState {
  factory _state(
      {final EnumStatus status,
      final List<ImageModel> list,
      final int page,
      final String message}) = _$_state;

  @override
  EnumStatus get status;
  @override
  List<ImageModel> get list;
  @override
  int get page;
  @override
  String get message;
  @override
  @JsonKey(ignore: true)
  _$$_stateCopyWith<_$_state> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$ImageEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loadData,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loadData,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loadData,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_loadData value) loadData,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_loadData value)? loadData,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_loadData value)? loadData,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ImageEventCopyWith<$Res> {
  factory $ImageEventCopyWith(
          ImageEvent value, $Res Function(ImageEvent) then) =
      _$ImageEventCopyWithImpl<$Res, ImageEvent>;
}

/// @nodoc
class _$ImageEventCopyWithImpl<$Res, $Val extends ImageEvent>
    implements $ImageEventCopyWith<$Res> {
  _$ImageEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$_loadDataCopyWith<$Res> {
  factory _$$_loadDataCopyWith(
          _$_loadData value, $Res Function(_$_loadData) then) =
      __$$_loadDataCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_loadDataCopyWithImpl<$Res>
    extends _$ImageEventCopyWithImpl<$Res, _$_loadData>
    implements _$$_loadDataCopyWith<$Res> {
  __$$_loadDataCopyWithImpl(
      _$_loadData _value, $Res Function(_$_loadData) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_loadData implements _loadData {
  const _$_loadData();

  @override
  String toString() {
    return 'ImageEvent.loadData()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_loadData);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loadData,
  }) {
    return loadData();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loadData,
  }) {
    return loadData?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loadData,
    required TResult orElse(),
  }) {
    if (loadData != null) {
      return loadData();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_loadData value) loadData,
  }) {
    return loadData(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_loadData value)? loadData,
  }) {
    return loadData?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_loadData value)? loadData,
    required TResult orElse(),
  }) {
    if (loadData != null) {
      return loadData(this);
    }
    return orElse();
  }
}

abstract class _loadData implements ImageEvent {
  const factory _loadData() = _$_loadData;
}
