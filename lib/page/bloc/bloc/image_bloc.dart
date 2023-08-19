import 'package:demo_pictures_app/core/image_api.dart';
import 'package:demo_pictures_app/core/image_model.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

part 'image_event.dart';
part 'image_state.dart';

class ImageBloc extends Bloc<ImageEvent, ImageState>{
  final ImageApi _api;

  ImageBloc(this._api) : super(const ImageState()){
    on<ImageEvent>((event, emit) async {
      switch (event) {
        case LoadDataEvent():
          await _onLoadDataEvent(event, emit);
          break;
        default:
          break;
      }
    });
  }

  Future<void> _onLoadDataEvent(
      LoadDataEvent event, Emitter<ImageState> emit) async {
    if (state.status == EnumStatus.loading || state.page > 50) return;
    emit(state.copyWith(status: EnumStatus.loading));
    try {
      final list = <ImageModel>[];
      list.addAll(state.list);
      list.addAll(await _api.images(page: state.page));
      emit(state.copyWith(
        status: EnumStatus.success,
        page: state.page + 1,
        list: list,
      ));
    } catch (e) {
      emit(state.copyWith(status: EnumStatus.fail, message: "$e"));
    }
  }

}