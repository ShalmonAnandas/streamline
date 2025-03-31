import 'package:domain/domain.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:streamline/core/base_widget/riverpod_stateless_widget.dart';
import 'package:streamline/src/features/media_screen.dart/media_provider.dart';

class MediaUI extends ConsumerStatefulWidget {
  const MediaUI(this.mediaType, this.id, {super.key});

  final String mediaType;
  final int id;

  @override
  ConsumerState<MediaUI> createState() => _MyWidgetState();
}

class _MyWidgetState extends ConsumerState<MediaUI> {
  @override
  Widget build(BuildContext context) {
    return RiverpodStatelessWidget<MediaDetailsModel>(
      provider: MediaDetailsProvider(GetMediaDetailsParams(
        widget.id,
        widget.mediaType,
      )),
      child: (model) => Scaffold(
          appBar: AppBar(
              title: Text(model.originalTitle ?? model.originalName ?? ''))),
    );
  }
}
