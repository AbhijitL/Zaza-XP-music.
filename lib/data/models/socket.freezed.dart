// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'socket.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

MusicData _$MusicDataFromJson(Map<String, dynamic> json) {
  return _MusicData.fromJson(json);
}

/// @nodoc
mixin _$MusicData {
  int get op => throw _privateConstructorUsedError;
  D get d => throw _privateConstructorUsedError;
  String get t => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $MusicDataCopyWith<MusicData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MusicDataCopyWith<$Res> {
  factory $MusicDataCopyWith(MusicData value, $Res Function(MusicData) then) =
      _$MusicDataCopyWithImpl<$Res, MusicData>;
  @useResult
  $Res call({int op, D d, String t});

  $DCopyWith<$Res> get d;
}

/// @nodoc
class _$MusicDataCopyWithImpl<$Res, $Val extends MusicData>
    implements $MusicDataCopyWith<$Res> {
  _$MusicDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? op = null,
    Object? d = null,
    Object? t = null,
  }) {
    return _then(_value.copyWith(
      op: null == op
          ? _value.op
          : op // ignore: cast_nullable_to_non_nullable
              as int,
      d: null == d
          ? _value.d
          : d // ignore: cast_nullable_to_non_nullable
              as D,
      t: null == t
          ? _value.t
          : t // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $DCopyWith<$Res> get d {
    return $DCopyWith<$Res>(_value.d, (value) {
      return _then(_value.copyWith(d: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_MusicDataCopyWith<$Res> implements $MusicDataCopyWith<$Res> {
  factory _$$_MusicDataCopyWith(
          _$_MusicData value, $Res Function(_$_MusicData) then) =
      __$$_MusicDataCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int op, D d, String t});

  @override
  $DCopyWith<$Res> get d;
}

/// @nodoc
class __$$_MusicDataCopyWithImpl<$Res>
    extends _$MusicDataCopyWithImpl<$Res, _$_MusicData>
    implements _$$_MusicDataCopyWith<$Res> {
  __$$_MusicDataCopyWithImpl(
      _$_MusicData _value, $Res Function(_$_MusicData) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? op = null,
    Object? d = null,
    Object? t = null,
  }) {
    return _then(_$_MusicData(
      op: null == op
          ? _value.op
          : op // ignore: cast_nullable_to_non_nullable
              as int,
      d: null == d
          ? _value.d
          : d // ignore: cast_nullable_to_non_nullable
              as D,
      t: null == t
          ? _value.t
          : t // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_MusicData implements _MusicData {
  _$_MusicData({required this.op, required this.d, required this.t});

  factory _$_MusicData.fromJson(Map<String, dynamic> json) =>
      _$$_MusicDataFromJson(json);

  @override
  final int op;
  @override
  final D d;
  @override
  final String t;

  @override
  String toString() {
    return 'MusicData(op: $op, d: $d, t: $t)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_MusicData &&
            (identical(other.op, op) || other.op == op) &&
            (identical(other.d, d) || other.d == d) &&
            (identical(other.t, t) || other.t == t));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, op, d, t);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_MusicDataCopyWith<_$_MusicData> get copyWith =>
      __$$_MusicDataCopyWithImpl<_$_MusicData>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_MusicDataToJson(
      this,
    );
  }
}

abstract class _MusicData implements MusicData {
  factory _MusicData(
      {required final int op,
      required final D d,
      required final String t}) = _$_MusicData;

  factory _MusicData.fromJson(Map<String, dynamic> json) =
      _$_MusicData.fromJson;

  @override
  int get op;
  @override
  D get d;
  @override
  String get t;
  @override
  @JsonKey(ignore: true)
  _$$_MusicDataCopyWith<_$_MusicData> get copyWith =>
      throw _privateConstructorUsedError;
}

D _$DFromJson(Map<String, dynamic> json) {
  return _D.fromJson(json);
}

/// @nodoc
mixin _$D {
  Song get song => throw _privateConstructorUsedError;
  Map<String, dynamic>? get requester => throw _privateConstructorUsedError;
  String? get event => throw _privateConstructorUsedError;
  String? get startTime => throw _privateConstructorUsedError;
  List<Song> get lastPlayed => throw _privateConstructorUsedError;
  int get listeners => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DCopyWith<D> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DCopyWith<$Res> {
  factory $DCopyWith(D value, $Res Function(D) then) = _$DCopyWithImpl<$Res, D>;
  @useResult
  $Res call(
      {Song song,
      Map<String, dynamic>? requester,
      String? event,
      String? startTime,
      List<Song> lastPlayed,
      int listeners});

  $SongCopyWith<$Res> get song;
}

/// @nodoc
class _$DCopyWithImpl<$Res, $Val extends D> implements $DCopyWith<$Res> {
  _$DCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? song = null,
    Object? requester = freezed,
    Object? event = freezed,
    Object? startTime = freezed,
    Object? lastPlayed = null,
    Object? listeners = null,
  }) {
    return _then(_value.copyWith(
      song: null == song
          ? _value.song
          : song // ignore: cast_nullable_to_non_nullable
              as Song,
      requester: freezed == requester
          ? _value.requester
          : requester // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>?,
      event: freezed == event
          ? _value.event
          : event // ignore: cast_nullable_to_non_nullable
              as String?,
      startTime: freezed == startTime
          ? _value.startTime
          : startTime // ignore: cast_nullable_to_non_nullable
              as String?,
      lastPlayed: null == lastPlayed
          ? _value.lastPlayed
          : lastPlayed // ignore: cast_nullable_to_non_nullable
              as List<Song>,
      listeners: null == listeners
          ? _value.listeners
          : listeners // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $SongCopyWith<$Res> get song {
    return $SongCopyWith<$Res>(_value.song, (value) {
      return _then(_value.copyWith(song: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_DCopyWith<$Res> implements $DCopyWith<$Res> {
  factory _$$_DCopyWith(_$_D value, $Res Function(_$_D) then) =
      __$$_DCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {Song song,
      Map<String, dynamic>? requester,
      String? event,
      String? startTime,
      List<Song> lastPlayed,
      int listeners});

  @override
  $SongCopyWith<$Res> get song;
}

/// @nodoc
class __$$_DCopyWithImpl<$Res> extends _$DCopyWithImpl<$Res, _$_D>
    implements _$$_DCopyWith<$Res> {
  __$$_DCopyWithImpl(_$_D _value, $Res Function(_$_D) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? song = null,
    Object? requester = freezed,
    Object? event = freezed,
    Object? startTime = freezed,
    Object? lastPlayed = null,
    Object? listeners = null,
  }) {
    return _then(_$_D(
      song: null == song
          ? _value.song
          : song // ignore: cast_nullable_to_non_nullable
              as Song,
      requester: freezed == requester
          ? _value._requester
          : requester // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>?,
      event: freezed == event
          ? _value.event
          : event // ignore: cast_nullable_to_non_nullable
              as String?,
      startTime: freezed == startTime
          ? _value.startTime
          : startTime // ignore: cast_nullable_to_non_nullable
              as String?,
      lastPlayed: null == lastPlayed
          ? _value._lastPlayed
          : lastPlayed // ignore: cast_nullable_to_non_nullable
              as List<Song>,
      listeners: null == listeners
          ? _value.listeners
          : listeners // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_D implements _D {
  _$_D(
      {required this.song,
      required final Map<String, dynamic>? requester,
      required this.event,
      required this.startTime,
      required final List<Song> lastPlayed,
      required this.listeners})
      : _requester = requester,
        _lastPlayed = lastPlayed;

  factory _$_D.fromJson(Map<String, dynamic> json) => _$$_DFromJson(json);

  @override
  final Song song;
  final Map<String, dynamic>? _requester;
  @override
  Map<String, dynamic>? get requester {
    final value = _requester;
    if (value == null) return null;
    if (_requester is EqualUnmodifiableMapView) return _requester;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(value);
  }

  @override
  final String? event;
  @override
  final String? startTime;
  final List<Song> _lastPlayed;
  @override
  List<Song> get lastPlayed {
    if (_lastPlayed is EqualUnmodifiableListView) return _lastPlayed;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_lastPlayed);
  }

  @override
  final int listeners;

  @override
  String toString() {
    return 'D(song: $song, requester: $requester, event: $event, startTime: $startTime, lastPlayed: $lastPlayed, listeners: $listeners)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_D &&
            (identical(other.song, song) || other.song == song) &&
            const DeepCollectionEquality()
                .equals(other._requester, _requester) &&
            (identical(other.event, event) || other.event == event) &&
            (identical(other.startTime, startTime) ||
                other.startTime == startTime) &&
            const DeepCollectionEquality()
                .equals(other._lastPlayed, _lastPlayed) &&
            (identical(other.listeners, listeners) ||
                other.listeners == listeners));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      song,
      const DeepCollectionEquality().hash(_requester),
      event,
      startTime,
      const DeepCollectionEquality().hash(_lastPlayed),
      listeners);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_DCopyWith<_$_D> get copyWith =>
      __$$_DCopyWithImpl<_$_D>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_DToJson(
      this,
    );
  }
}

abstract class _D implements D {
  factory _D(
      {required final Song song,
      required final Map<String, dynamic>? requester,
      required final String? event,
      required final String? startTime,
      required final List<Song> lastPlayed,
      required final int listeners}) = _$_D;

  factory _D.fromJson(Map<String, dynamic> json) = _$_D.fromJson;

  @override
  Song get song;
  @override
  Map<String, dynamic>? get requester;
  @override
  String? get event;
  @override
  String? get startTime;
  @override
  List<Song> get lastPlayed;
  @override
  int get listeners;
  @override
  @JsonKey(ignore: true)
  _$$_DCopyWith<_$_D> get copyWith => throw _privateConstructorUsedError;
}

Song _$SongFromJson(Map<String, dynamic> json) {
  return _Song.fromJson(json);
}

/// @nodoc
mixin _$Song {
  int get id => throw _privateConstructorUsedError;
  String get title => throw _privateConstructorUsedError;
  List<dynamic> get sources => throw _privateConstructorUsedError;
  List<Artist> get artists => throw _privateConstructorUsedError;
  List<dynamic>? get characters => throw _privateConstructorUsedError;
  List<Album> get albums => throw _privateConstructorUsedError;
  int get duration => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SongCopyWith<Song> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SongCopyWith<$Res> {
  factory $SongCopyWith(Song value, $Res Function(Song) then) =
      _$SongCopyWithImpl<$Res, Song>;
  @useResult
  $Res call(
      {int id,
      String title,
      List<dynamic> sources,
      List<Artist> artists,
      List<dynamic>? characters,
      List<Album> albums,
      int duration});
}

/// @nodoc
class _$SongCopyWithImpl<$Res, $Val extends Song>
    implements $SongCopyWith<$Res> {
  _$SongCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? title = null,
    Object? sources = null,
    Object? artists = null,
    Object? characters = freezed,
    Object? albums = null,
    Object? duration = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      sources: null == sources
          ? _value.sources
          : sources // ignore: cast_nullable_to_non_nullable
              as List<dynamic>,
      artists: null == artists
          ? _value.artists
          : artists // ignore: cast_nullable_to_non_nullable
              as List<Artist>,
      characters: freezed == characters
          ? _value.characters
          : characters // ignore: cast_nullable_to_non_nullable
              as List<dynamic>?,
      albums: null == albums
          ? _value.albums
          : albums // ignore: cast_nullable_to_non_nullable
              as List<Album>,
      duration: null == duration
          ? _value.duration
          : duration // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_SongCopyWith<$Res> implements $SongCopyWith<$Res> {
  factory _$$_SongCopyWith(_$_Song value, $Res Function(_$_Song) then) =
      __$$_SongCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int id,
      String title,
      List<dynamic> sources,
      List<Artist> artists,
      List<dynamic>? characters,
      List<Album> albums,
      int duration});
}

/// @nodoc
class __$$_SongCopyWithImpl<$Res> extends _$SongCopyWithImpl<$Res, _$_Song>
    implements _$$_SongCopyWith<$Res> {
  __$$_SongCopyWithImpl(_$_Song _value, $Res Function(_$_Song) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? title = null,
    Object? sources = null,
    Object? artists = null,
    Object? characters = freezed,
    Object? albums = null,
    Object? duration = null,
  }) {
    return _then(_$_Song(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      sources: null == sources
          ? _value._sources
          : sources // ignore: cast_nullable_to_non_nullable
              as List<dynamic>,
      artists: null == artists
          ? _value._artists
          : artists // ignore: cast_nullable_to_non_nullable
              as List<Artist>,
      characters: freezed == characters
          ? _value._characters
          : characters // ignore: cast_nullable_to_non_nullable
              as List<dynamic>?,
      albums: null == albums
          ? _value._albums
          : albums // ignore: cast_nullable_to_non_nullable
              as List<Album>,
      duration: null == duration
          ? _value.duration
          : duration // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Song implements _Song {
  _$_Song(
      {required this.id,
      required this.title,
      required final List<dynamic> sources,
      required final List<Artist> artists,
      required final List<dynamic>? characters,
      required final List<Album> albums,
      required this.duration})
      : _sources = sources,
        _artists = artists,
        _characters = characters,
        _albums = albums;

  factory _$_Song.fromJson(Map<String, dynamic> json) => _$$_SongFromJson(json);

  @override
  final int id;
  @override
  final String title;
  final List<dynamic> _sources;
  @override
  List<dynamic> get sources {
    if (_sources is EqualUnmodifiableListView) return _sources;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_sources);
  }

  final List<Artist> _artists;
  @override
  List<Artist> get artists {
    if (_artists is EqualUnmodifiableListView) return _artists;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_artists);
  }

  final List<dynamic>? _characters;
  @override
  List<dynamic>? get characters {
    final value = _characters;
    if (value == null) return null;
    if (_characters is EqualUnmodifiableListView) return _characters;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<Album> _albums;
  @override
  List<Album> get albums {
    if (_albums is EqualUnmodifiableListView) return _albums;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_albums);
  }

  @override
  final int duration;

  @override
  String toString() {
    return 'Song(id: $id, title: $title, sources: $sources, artists: $artists, characters: $characters, albums: $albums, duration: $duration)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Song &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.title, title) || other.title == title) &&
            const DeepCollectionEquality().equals(other._sources, _sources) &&
            const DeepCollectionEquality().equals(other._artists, _artists) &&
            const DeepCollectionEquality()
                .equals(other._characters, _characters) &&
            const DeepCollectionEquality().equals(other._albums, _albums) &&
            (identical(other.duration, duration) ||
                other.duration == duration));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      title,
      const DeepCollectionEquality().hash(_sources),
      const DeepCollectionEquality().hash(_artists),
      const DeepCollectionEquality().hash(_characters),
      const DeepCollectionEquality().hash(_albums),
      duration);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_SongCopyWith<_$_Song> get copyWith =>
      __$$_SongCopyWithImpl<_$_Song>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_SongToJson(
      this,
    );
  }
}

abstract class _Song implements Song {
  factory _Song(
      {required final int id,
      required final String title,
      required final List<dynamic> sources,
      required final List<Artist> artists,
      required final List<dynamic>? characters,
      required final List<Album> albums,
      required final int duration}) = _$_Song;

  factory _Song.fromJson(Map<String, dynamic> json) = _$_Song.fromJson;

  @override
  int get id;
  @override
  String get title;
  @override
  List<dynamic> get sources;
  @override
  List<Artist> get artists;
  @override
  List<dynamic>? get characters;
  @override
  List<Album> get albums;
  @override
  int get duration;
  @override
  @JsonKey(ignore: true)
  _$$_SongCopyWith<_$_Song> get copyWith => throw _privateConstructorUsedError;
}

Album _$AlbumFromJson(Map<String, dynamic> json) {
  return _Album.fromJson(json);
}

/// @nodoc
mixin _$Album {
  int get id => throw _privateConstructorUsedError;
  String? get name => throw _privateConstructorUsedError;
  String? get nameRomaji => throw _privateConstructorUsedError;
  String? get image => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AlbumCopyWith<Album> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AlbumCopyWith<$Res> {
  factory $AlbumCopyWith(Album value, $Res Function(Album) then) =
      _$AlbumCopyWithImpl<$Res, Album>;
  @useResult
  $Res call({int id, String? name, String? nameRomaji, String? image});
}

/// @nodoc
class _$AlbumCopyWithImpl<$Res, $Val extends Album>
    implements $AlbumCopyWith<$Res> {
  _$AlbumCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = freezed,
    Object? nameRomaji = freezed,
    Object? image = freezed,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      nameRomaji: freezed == nameRomaji
          ? _value.nameRomaji
          : nameRomaji // ignore: cast_nullable_to_non_nullable
              as String?,
      image: freezed == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_AlbumCopyWith<$Res> implements $AlbumCopyWith<$Res> {
  factory _$$_AlbumCopyWith(_$_Album value, $Res Function(_$_Album) then) =
      __$$_AlbumCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int id, String? name, String? nameRomaji, String? image});
}

/// @nodoc
class __$$_AlbumCopyWithImpl<$Res> extends _$AlbumCopyWithImpl<$Res, _$_Album>
    implements _$$_AlbumCopyWith<$Res> {
  __$$_AlbumCopyWithImpl(_$_Album _value, $Res Function(_$_Album) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = freezed,
    Object? nameRomaji = freezed,
    Object? image = freezed,
  }) {
    return _then(_$_Album(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      nameRomaji: freezed == nameRomaji
          ? _value.nameRomaji
          : nameRomaji // ignore: cast_nullable_to_non_nullable
              as String?,
      image: freezed == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Album implements _Album {
  _$_Album(
      {required this.id,
      required this.name,
      required this.nameRomaji,
      required this.image});

  factory _$_Album.fromJson(Map<String, dynamic> json) =>
      _$$_AlbumFromJson(json);

  @override
  final int id;
  @override
  final String? name;
  @override
  final String? nameRomaji;
  @override
  final String? image;

  @override
  String toString() {
    return 'Album(id: $id, name: $name, nameRomaji: $nameRomaji, image: $image)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Album &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.nameRomaji, nameRomaji) ||
                other.nameRomaji == nameRomaji) &&
            (identical(other.image, image) || other.image == image));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, name, nameRomaji, image);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_AlbumCopyWith<_$_Album> get copyWith =>
      __$$_AlbumCopyWithImpl<_$_Album>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_AlbumToJson(
      this,
    );
  }
}

abstract class _Album implements Album {
  factory _Album(
      {required final int id,
      required final String? name,
      required final String? nameRomaji,
      required final String? image}) = _$_Album;

  factory _Album.fromJson(Map<String, dynamic> json) = _$_Album.fromJson;

  @override
  int get id;
  @override
  String? get name;
  @override
  String? get nameRomaji;
  @override
  String? get image;
  @override
  @JsonKey(ignore: true)
  _$$_AlbumCopyWith<_$_Album> get copyWith =>
      throw _privateConstructorUsedError;
}

Artist _$ArtistFromJson(Map<String, dynamic> json) {
  return _Artist.fromJson(json);
}

/// @nodoc
mixin _$Artist {
  int get id => throw _privateConstructorUsedError;
  String? get name => throw _privateConstructorUsedError;
  String? get nameRomaji => throw _privateConstructorUsedError;
  String? get image => throw _privateConstructorUsedError;
  List<dynamic>? get characters => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ArtistCopyWith<Artist> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ArtistCopyWith<$Res> {
  factory $ArtistCopyWith(Artist value, $Res Function(Artist) then) =
      _$ArtistCopyWithImpl<$Res, Artist>;
  @useResult
  $Res call(
      {int id,
      String? name,
      String? nameRomaji,
      String? image,
      List<dynamic>? characters});
}

/// @nodoc
class _$ArtistCopyWithImpl<$Res, $Val extends Artist>
    implements $ArtistCopyWith<$Res> {
  _$ArtistCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = freezed,
    Object? nameRomaji = freezed,
    Object? image = freezed,
    Object? characters = freezed,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      nameRomaji: freezed == nameRomaji
          ? _value.nameRomaji
          : nameRomaji // ignore: cast_nullable_to_non_nullable
              as String?,
      image: freezed == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String?,
      characters: freezed == characters
          ? _value.characters
          : characters // ignore: cast_nullable_to_non_nullable
              as List<dynamic>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_ArtistCopyWith<$Res> implements $ArtistCopyWith<$Res> {
  factory _$$_ArtistCopyWith(_$_Artist value, $Res Function(_$_Artist) then) =
      __$$_ArtistCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int id,
      String? name,
      String? nameRomaji,
      String? image,
      List<dynamic>? characters});
}

/// @nodoc
class __$$_ArtistCopyWithImpl<$Res>
    extends _$ArtistCopyWithImpl<$Res, _$_Artist>
    implements _$$_ArtistCopyWith<$Res> {
  __$$_ArtistCopyWithImpl(_$_Artist _value, $Res Function(_$_Artist) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = freezed,
    Object? nameRomaji = freezed,
    Object? image = freezed,
    Object? characters = freezed,
  }) {
    return _then(_$_Artist(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      nameRomaji: freezed == nameRomaji
          ? _value.nameRomaji
          : nameRomaji // ignore: cast_nullable_to_non_nullable
              as String?,
      image: freezed == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String?,
      characters: freezed == characters
          ? _value._characters
          : characters // ignore: cast_nullable_to_non_nullable
              as List<dynamic>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Artist implements _Artist {
  _$_Artist(
      {required this.id,
      required this.name,
      required this.nameRomaji,
      required this.image,
      required final List<dynamic>? characters})
      : _characters = characters;

  factory _$_Artist.fromJson(Map<String, dynamic> json) =>
      _$$_ArtistFromJson(json);

  @override
  final int id;
  @override
  final String? name;
  @override
  final String? nameRomaji;
  @override
  final String? image;
  final List<dynamic>? _characters;
  @override
  List<dynamic>? get characters {
    final value = _characters;
    if (value == null) return null;
    if (_characters is EqualUnmodifiableListView) return _characters;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'Artist(id: $id, name: $name, nameRomaji: $nameRomaji, image: $image, characters: $characters)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Artist &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.nameRomaji, nameRomaji) ||
                other.nameRomaji == nameRomaji) &&
            (identical(other.image, image) || other.image == image) &&
            const DeepCollectionEquality()
                .equals(other._characters, _characters));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, name, nameRomaji, image,
      const DeepCollectionEquality().hash(_characters));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ArtistCopyWith<_$_Artist> get copyWith =>
      __$$_ArtistCopyWithImpl<_$_Artist>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ArtistToJson(
      this,
    );
  }
}

abstract class _Artist implements Artist {
  factory _Artist(
      {required final int id,
      required final String? name,
      required final String? nameRomaji,
      required final String? image,
      required final List<dynamic>? characters}) = _$_Artist;

  factory _Artist.fromJson(Map<String, dynamic> json) = _$_Artist.fromJson;

  @override
  int get id;
  @override
  String? get name;
  @override
  String? get nameRomaji;
  @override
  String? get image;
  @override
  List<dynamic>? get characters;
  @override
  @JsonKey(ignore: true)
  _$$_ArtistCopyWith<_$_Artist> get copyWith =>
      throw _privateConstructorUsedError;
}
