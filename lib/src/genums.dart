enum GUserDirectory {
  desktop,
  documents,
  download,
  music,
  pictures,
  publicShare,
  templates,
  videos,
}

enum GFormatSizeFlags {
  defaults(0),
  longFormat(1 << 0),
  iecUnits(1 << 1),
  bits(1 << 2);

  const GFormatSizeFlags(this.value);
  final int value;
}
