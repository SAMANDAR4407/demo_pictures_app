part of "image_bloc.dart";

@immutable
class ImageState {
  final EnumStatus status;
  final List<ImageModel> list;
  final int page;
  final String message;

  const ImageState({
    this.status = EnumStatus.initial,
    this.list = const [],
    this.page = 1,
    this.message = '',
  });

  ImageState copyWith({
    EnumStatus? status,
    List<ImageModel>? list,
    int? page,
    String? message,
  }) {
    return ImageState(
      status: status ?? this.status,
      list: list ?? this.list,
      page: page ?? this.page,
      message: message ?? this.message
    );
  }
}

enum EnumStatus { initial, success, fail, loading }
