import 'package:flutter/material.dart';
import 'package:video_player/video_player.dart';

class VideoWidget extends StatefulWidget {
  final String videoUrl;
  final double? width;
  final double? height;
  final bool autoPlay;
  final BoxFit fit;
  final bool isLandscape; // New parameter for landscape mode
  final void Function(VideoPlayerController)? onControllerInitialized;

  const VideoWidget({
    required this.videoUrl,
    this.onControllerInitialized,
    this.width,
    this.height,
    this.fit = BoxFit.cover,
    this.isLandscape = false, // Default to false
    super.key,
    this.autoPlay = false,
  });

  @override
  State<VideoWidget> createState() => _VideoWidgetState();
}

class _VideoWidgetState extends State<VideoWidget> {
  late VideoPlayerController _controller;
  bool _isInitialized = false;

  @override
  void initState() {
    super.initState();
    _initializeController(widget.videoUrl, autoPlay: widget.autoPlay);
  }

  @override
  void didUpdateWidget(covariant VideoWidget oldWidget) {
    super.didUpdateWidget(oldWidget);
    if (oldWidget.videoUrl != widget.videoUrl) {
      _controller.dispose();
      _initializeController(widget.videoUrl, autoPlay: true);
    }
  }

  Future<void> _initializeController(
      String assetPath, {
        bool autoPlay = false,
      }) async {
    _controller = VideoPlayerController.asset(assetPath);
    await _controller.initialize();
    _controller.setLooping(false);
    widget.onControllerInitialized?.call(_controller);

    if (mounted) {
      setState(() {
        _isInitialized = true;
      });
      if (autoPlay) {
        _controller.play();
      }
    }
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  void _playFromStart() async {
    if (_isInitialized) {
      await _controller.pause();
      await _controller.seekTo(Duration.zero);
      await _controller.play();
    }
  }

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: _playFromStart,
      child: _isInitialized
          ? _buildVideoPlayer()
          : _buildLoadingIndicator(),
    );
  }

  Widget _buildVideoPlayer() {
    // If in landscape mode, force landscape orientation
    if (widget.isLandscape) {
      return RotatedBox(
        quarterTurns: 1, // Rotate 90 degrees clockwise
        child: _buildVideoPlayerContent(),
      );
    }

    return _buildVideoPlayerContent();
  }

  Widget _buildVideoPlayerContent() {
    // If no dimensions are provided, use the video's natural aspect ratio
    if (widget.width == null && widget.height == null) {
      return AspectRatio(
        aspectRatio: _controller.value.aspectRatio,
        child: VideoPlayer(_controller),
      );
    }

    // If dimensions are provided, use FittedBox with the specified fit
    return SizedBox(
      width: widget.width,
      height: widget.height,
      child: FittedBox(
        fit: widget.fit,
        child: SizedBox(
          width: _controller.value.size.width,
          height: _controller.value.size.height,
          child: VideoPlayer(_controller),
        ),
      ),
    );
  }

  Widget _buildLoadingIndicator() {
    return SizedBox(
      width: widget.width,
      height: widget.height,
      child: const Center(child: CircularProgressIndicator()),
    );
  }
}