abstract class AudioService {
  Future<void> play(String fileName);

  Future<void> pause();

  Future<void> resume();

  Future<void> stop();

  Future<void> release();

  bool get isPlaying;

  bool get isPaused;

  /// Adds a callback that will be invoked when audio playback completes
  void addOnCompleteListener(void Function() callback);

  /// Removes a previously added completion callback
  void removeOnCompleteListener(void Function() callback);

}
