import 'package:audioplayers/audioplayers.dart';

import 'audio_service.dart';

class AudioServiceImp implements AudioService {
  final AudioPlayer _player = AudioPlayer();
  String? _currentFile;

  bool _isPlaying = false;
  bool _isPaused = false;

  final List<void Function()> _onCompleteCallbacks = [];

  initialize() async {
    _player.onPlayerComplete.listen((event) {
      _isPlaying = false;
      _isPaused = false;
      _currentFile = null;
      // Notify all completion listeners
      for (final callback in _onCompleteCallbacks) {
        callback();
      }
    });

    _player.onPlayerStateChanged.listen((state) {
      _isPlaying = state == PlayerState.playing;
      _isPaused = state == PlayerState.paused;
    });
  }

  @override
  Future<void> play(String path) async {
    if (_currentFile == path && _isPaused) {
      await _player.resume();
      return;
    }

    await stop();
    _currentFile = path;
    final source = AssetSource(path);
    await _player.play(source);
  }

  @override
  Future<void> pause() async {
    if (_isPlaying) {
      await _player.pause();
    }
  }

  @override
  Future<void> resume() async {
    if (_isPaused) {
      await _player.resume();
    }
  }

  @override
  Future<void> stop() async {
    if (_isPlaying || _isPaused) {
      await _player.stop();
      _isPlaying = false;
      _isPaused = false;
      _currentFile = null;
    }
  }

  @override
  // Add a completion listener
  void addOnCompleteListener(void Function() callback) {
    _onCompleteCallbacks.add(callback);
  }

  @override
  // Remove a completion listener
  void removeOnCompleteListener(void Function() callback) {
    _onCompleteCallbacks.remove(callback);
  }

  @override
  Future<void> release() async {
    await _player.dispose();
  }

  @override
  bool get isPlaying => _isPlaying;

  @override
  bool get isPaused => _isPaused;
}
