String timeFormat(Duration time) {
  String minutes = (time.inMinutes % 60).toString();
  String seconds = (time.inSeconds % 60).toString();
  if (minutes.length == 1) {
    minutes = '0$minutes';
  }
  if (seconds.length == 1) {
    seconds = '0$seconds';
  }
  return '$minutes:$seconds';
}
