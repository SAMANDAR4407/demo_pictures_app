part of 'image_bloc.dart';

@freezed
class ImageState with _$ImageState {
  factory ImageState.state({
      @Default(EnumStatus.initial) EnumStatus status,
      @Default([]) List<ImageModel> list,
      @Default(1) int page,
      @Default('') String message
  }) = _state;
}

enum EnumStatus { initial, success, fail, loading }
