//
//  Generated code. Do not modify.
//  source: callbreak.proto
//
// @dart = 3.3

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names
// ignore_for_file: curly_braces_in_flow_control_structures
// ignore_for_file: deprecated_member_use_from_same_package, library_prefixes
// ignore_for_file: non_constant_identifier_names

import 'dart:core' as $core;

import 'package:protobuf/protobuf.dart' as $pb;

export 'package:protobuf/protobuf.dart' show GeneratedMessageGenericExtensions;

class RegisterRequest extends $pb.GeneratedMessage {
  factory RegisterRequest({
    $core.String? username,
    $core.String? password,
  }) {
    final result = create();
    if (username != null) result.username = username;
    if (password != null) result.password = password;
    return result;
  }

  RegisterRequest._();

  factory RegisterRequest.fromBuffer($core.List<$core.int> data, [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(data, registry);
  factory RegisterRequest.fromJson($core.String json, [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'RegisterRequest', package: const $pb.PackageName(_omitMessageNames ? '' : 'callbreak'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'username')
    ..aOS(2, _omitFieldNames ? '' : 'password')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  RegisterRequest clone() => RegisterRequest()..mergeFromMessage(this);
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  RegisterRequest copyWith(void Function(RegisterRequest) updates) => super.copyWith((message) => updates(message as RegisterRequest)) as RegisterRequest;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static RegisterRequest create() => RegisterRequest._();
  @$core.override
  RegisterRequest createEmptyInstance() => create();
  static $pb.PbList<RegisterRequest> createRepeated() => $pb.PbList<RegisterRequest>();
  @$core.pragma('dart2js:noInline')
  static RegisterRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<RegisterRequest>(create);
  static RegisterRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get username => $_getSZ(0);
  @$pb.TagNumber(1)
  set username($core.String value) => $_setString(0, value);
  @$pb.TagNumber(1)
  $core.bool hasUsername() => $_has(0);
  @$pb.TagNumber(1)
  void clearUsername() => $_clearField(1);

  @$pb.TagNumber(2)
  $core.String get password => $_getSZ(1);
  @$pb.TagNumber(2)
  set password($core.String value) => $_setString(1, value);
  @$pb.TagNumber(2)
  $core.bool hasPassword() => $_has(1);
  @$pb.TagNumber(2)
  void clearPassword() => $_clearField(2);
}

class LoginRequest extends $pb.GeneratedMessage {
  factory LoginRequest({
    $core.String? username,
    $core.String? password,
  }) {
    final result = create();
    if (username != null) result.username = username;
    if (password != null) result.password = password;
    return result;
  }

  LoginRequest._();

  factory LoginRequest.fromBuffer($core.List<$core.int> data, [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(data, registry);
  factory LoginRequest.fromJson($core.String json, [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'LoginRequest', package: const $pb.PackageName(_omitMessageNames ? '' : 'callbreak'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'username')
    ..aOS(2, _omitFieldNames ? '' : 'password')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  LoginRequest clone() => LoginRequest()..mergeFromMessage(this);
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  LoginRequest copyWith(void Function(LoginRequest) updates) => super.copyWith((message) => updates(message as LoginRequest)) as LoginRequest;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static LoginRequest create() => LoginRequest._();
  @$core.override
  LoginRequest createEmptyInstance() => create();
  static $pb.PbList<LoginRequest> createRepeated() => $pb.PbList<LoginRequest>();
  @$core.pragma('dart2js:noInline')
  static LoginRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<LoginRequest>(create);
  static LoginRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get username => $_getSZ(0);
  @$pb.TagNumber(1)
  set username($core.String value) => $_setString(0, value);
  @$pb.TagNumber(1)
  $core.bool hasUsername() => $_has(0);
  @$pb.TagNumber(1)
  void clearUsername() => $_clearField(1);

  @$pb.TagNumber(2)
  $core.String get password => $_getSZ(1);
  @$pb.TagNumber(2)
  set password($core.String value) => $_setString(1, value);
  @$pb.TagNumber(2)
  $core.bool hasPassword() => $_has(1);
  @$pb.TagNumber(2)
  void clearPassword() => $_clearField(2);
}

class CreateGameRequest extends $pb.GeneratedMessage {
  factory CreateGameRequest({
    $core.String? gameId,
    $core.String? jwtToken,
  }) {
    final result = create();
    if (gameId != null) result.gameId = gameId;
    if (jwtToken != null) result.jwtToken = jwtToken;
    return result;
  }

  CreateGameRequest._();

  factory CreateGameRequest.fromBuffer($core.List<$core.int> data, [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(data, registry);
  factory CreateGameRequest.fromJson($core.String json, [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'CreateGameRequest', package: const $pb.PackageName(_omitMessageNames ? '' : 'callbreak'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'gameId')
    ..aOS(2, _omitFieldNames ? '' : 'jwtToken')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  CreateGameRequest clone() => CreateGameRequest()..mergeFromMessage(this);
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  CreateGameRequest copyWith(void Function(CreateGameRequest) updates) => super.copyWith((message) => updates(message as CreateGameRequest)) as CreateGameRequest;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static CreateGameRequest create() => CreateGameRequest._();
  @$core.override
  CreateGameRequest createEmptyInstance() => create();
  static $pb.PbList<CreateGameRequest> createRepeated() => $pb.PbList<CreateGameRequest>();
  @$core.pragma('dart2js:noInline')
  static CreateGameRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<CreateGameRequest>(create);
  static CreateGameRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get gameId => $_getSZ(0);
  @$pb.TagNumber(1)
  set gameId($core.String value) => $_setString(0, value);
  @$pb.TagNumber(1)
  $core.bool hasGameId() => $_has(0);
  @$pb.TagNumber(1)
  void clearGameId() => $_clearField(1);

  @$pb.TagNumber(2)
  $core.String get jwtToken => $_getSZ(1);
  @$pb.TagNumber(2)
  set jwtToken($core.String value) => $_setString(1, value);
  @$pb.TagNumber(2)
  $core.bool hasJwtToken() => $_has(1);
  @$pb.TagNumber(2)
  void clearJwtToken() => $_clearField(2);
}

class AuthResponse extends $pb.GeneratedMessage {
  factory AuthResponse({
    $core.String? jwtToken,
    $core.String? message,
  }) {
    final result = create();
    if (jwtToken != null) result.jwtToken = jwtToken;
    if (message != null) result.message = message;
    return result;
  }

  AuthResponse._();

  factory AuthResponse.fromBuffer($core.List<$core.int> data, [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(data, registry);
  factory AuthResponse.fromJson($core.String json, [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'AuthResponse', package: const $pb.PackageName(_omitMessageNames ? '' : 'callbreak'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'jwtToken')
    ..aOS(2, _omitFieldNames ? '' : 'message')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  AuthResponse clone() => AuthResponse()..mergeFromMessage(this);
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  AuthResponse copyWith(void Function(AuthResponse) updates) => super.copyWith((message) => updates(message as AuthResponse)) as AuthResponse;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static AuthResponse create() => AuthResponse._();
  @$core.override
  AuthResponse createEmptyInstance() => create();
  static $pb.PbList<AuthResponse> createRepeated() => $pb.PbList<AuthResponse>();
  @$core.pragma('dart2js:noInline')
  static AuthResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<AuthResponse>(create);
  static AuthResponse? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get jwtToken => $_getSZ(0);
  @$pb.TagNumber(1)
  set jwtToken($core.String value) => $_setString(0, value);
  @$pb.TagNumber(1)
  $core.bool hasJwtToken() => $_has(0);
  @$pb.TagNumber(1)
  void clearJwtToken() => $_clearField(1);

  @$pb.TagNumber(2)
  $core.String get message => $_getSZ(1);
  @$pb.TagNumber(2)
  set message($core.String value) => $_setString(1, value);
  @$pb.TagNumber(2)
  $core.bool hasMessage() => $_has(1);
  @$pb.TagNumber(2)
  void clearMessage() => $_clearField(2);
}

class GameResponse extends $pb.GeneratedMessage {
  factory GameResponse({
    $core.String? message,
  }) {
    final result = create();
    if (message != null) result.message = message;
    return result;
  }

  GameResponse._();

  factory GameResponse.fromBuffer($core.List<$core.int> data, [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(data, registry);
  factory GameResponse.fromJson($core.String json, [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'GameResponse', package: const $pb.PackageName(_omitMessageNames ? '' : 'callbreak'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'message')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  GameResponse clone() => GameResponse()..mergeFromMessage(this);
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  GameResponse copyWith(void Function(GameResponse) updates) => super.copyWith((message) => updates(message as GameResponse)) as GameResponse;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static GameResponse create() => GameResponse._();
  @$core.override
  GameResponse createEmptyInstance() => create();
  static $pb.PbList<GameResponse> createRepeated() => $pb.PbList<GameResponse>();
  @$core.pragma('dart2js:noInline')
  static GameResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<GameResponse>(create);
  static GameResponse? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get message => $_getSZ(0);
  @$pb.TagNumber(1)
  set message($core.String value) => $_setString(0, value);
  @$pb.TagNumber(1)
  $core.bool hasMessage() => $_has(0);
  @$pb.TagNumber(1)
  void clearMessage() => $_clearField(1);
}

enum GameEvent_Payload {
  join, 
  play, 
  notSet
}

class GameEvent extends $pb.GeneratedMessage {
  factory GameEvent({
    $core.String? jwtToken,
    $core.String? gameId,
    Join? join,
    Play? play,
  }) {
    final result = create();
    if (jwtToken != null) result.jwtToken = jwtToken;
    if (gameId != null) result.gameId = gameId;
    if (join != null) result.join = join;
    if (play != null) result.play = play;
    return result;
  }

  GameEvent._();

  factory GameEvent.fromBuffer($core.List<$core.int> data, [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(data, registry);
  factory GameEvent.fromJson($core.String json, [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(json, registry);

  static const $core.Map<$core.int, GameEvent_Payload> _GameEvent_PayloadByTag = {
    3 : GameEvent_Payload.join,
    4 : GameEvent_Payload.play,
    0 : GameEvent_Payload.notSet
  };
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'GameEvent', package: const $pb.PackageName(_omitMessageNames ? '' : 'callbreak'), createEmptyInstance: create)
    ..oo(0, [3, 4])
    ..aOS(1, _omitFieldNames ? '' : 'jwtToken')
    ..aOS(2, _omitFieldNames ? '' : 'gameId')
    ..aOM<Join>(3, _omitFieldNames ? '' : 'join', subBuilder: Join.create)
    ..aOM<Play>(4, _omitFieldNames ? '' : 'play', subBuilder: Play.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  GameEvent clone() => GameEvent()..mergeFromMessage(this);
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  GameEvent copyWith(void Function(GameEvent) updates) => super.copyWith((message) => updates(message as GameEvent)) as GameEvent;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static GameEvent create() => GameEvent._();
  @$core.override
  GameEvent createEmptyInstance() => create();
  static $pb.PbList<GameEvent> createRepeated() => $pb.PbList<GameEvent>();
  @$core.pragma('dart2js:noInline')
  static GameEvent getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<GameEvent>(create);
  static GameEvent? _defaultInstance;

  GameEvent_Payload whichPayload() => _GameEvent_PayloadByTag[$_whichOneof(0)]!;
  void clearPayload() => $_clearField($_whichOneof(0));

  @$pb.TagNumber(1)
  $core.String get jwtToken => $_getSZ(0);
  @$pb.TagNumber(1)
  set jwtToken($core.String value) => $_setString(0, value);
  @$pb.TagNumber(1)
  $core.bool hasJwtToken() => $_has(0);
  @$pb.TagNumber(1)
  void clearJwtToken() => $_clearField(1);

  @$pb.TagNumber(2)
  $core.String get gameId => $_getSZ(1);
  @$pb.TagNumber(2)
  set gameId($core.String value) => $_setString(1, value);
  @$pb.TagNumber(2)
  $core.bool hasGameId() => $_has(1);
  @$pb.TagNumber(2)
  void clearGameId() => $_clearField(2);

  @$pb.TagNumber(3)
  Join get join => $_getN(2);
  @$pb.TagNumber(3)
  set join(Join value) => $_setField(3, value);
  @$pb.TagNumber(3)
  $core.bool hasJoin() => $_has(2);
  @$pb.TagNumber(3)
  void clearJoin() => $_clearField(3);
  @$pb.TagNumber(3)
  Join ensureJoin() => $_ensure(2);

  @$pb.TagNumber(4)
  Play get play => $_getN(3);
  @$pb.TagNumber(4)
  set play(Play value) => $_setField(4, value);
  @$pb.TagNumber(4)
  $core.bool hasPlay() => $_has(3);
  @$pb.TagNumber(4)
  void clearPlay() => $_clearField(4);
  @$pb.TagNumber(4)
  Play ensurePlay() => $_ensure(3);
}

class Join extends $pb.GeneratedMessage {
  factory Join({
    $core.String? username,
  }) {
    final result = create();
    if (username != null) result.username = username;
    return result;
  }

  Join._();

  factory Join.fromBuffer($core.List<$core.int> data, [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(data, registry);
  factory Join.fromJson($core.String json, [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'Join', package: const $pb.PackageName(_omitMessageNames ? '' : 'callbreak'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'username')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  Join clone() => Join()..mergeFromMessage(this);
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  Join copyWith(void Function(Join) updates) => super.copyWith((message) => updates(message as Join)) as Join;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static Join create() => Join._();
  @$core.override
  Join createEmptyInstance() => create();
  static $pb.PbList<Join> createRepeated() => $pb.PbList<Join>();
  @$core.pragma('dart2js:noInline')
  static Join getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<Join>(create);
  static Join? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get username => $_getSZ(0);
  @$pb.TagNumber(1)
  set username($core.String value) => $_setString(0, value);
  @$pb.TagNumber(1)
  $core.bool hasUsername() => $_has(0);
  @$pb.TagNumber(1)
  void clearUsername() => $_clearField(1);
}

class Play extends $pb.GeneratedMessage {
  factory Play({
    $core.String? card,
  }) {
    final result = create();
    if (card != null) result.card = card;
    return result;
  }

  Play._();

  factory Play.fromBuffer($core.List<$core.int> data, [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(data, registry);
  factory Play.fromJson($core.String json, [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'Play', package: const $pb.PackageName(_omitMessageNames ? '' : 'callbreak'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'card')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  Play clone() => Play()..mergeFromMessage(this);
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  Play copyWith(void Function(Play) updates) => super.copyWith((message) => updates(message as Play)) as Play;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static Play create() => Play._();
  @$core.override
  Play createEmptyInstance() => create();
  static $pb.PbList<Play> createRepeated() => $pb.PbList<Play>();
  @$core.pragma('dart2js:noInline')
  static Play getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<Play>(create);
  static Play? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get card => $_getSZ(0);
  @$pb.TagNumber(1)
  set card($core.String value) => $_setString(0, value);
  @$pb.TagNumber(1)
  $core.bool hasCard() => $_has(0);
  @$pb.TagNumber(1)
  void clearCard() => $_clearField(1);
}

class ServerEvent extends $pb.GeneratedMessage {
  factory ServerEvent({
    $core.String? type,
    $core.String? payload,
  }) {
    final result = create();
    if (type != null) result.type = type;
    if (payload != null) result.payload = payload;
    return result;
  }

  ServerEvent._();

  factory ServerEvent.fromBuffer($core.List<$core.int> data, [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(data, registry);
  factory ServerEvent.fromJson($core.String json, [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'ServerEvent', package: const $pb.PackageName(_omitMessageNames ? '' : 'callbreak'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'type')
    ..aOS(2, _omitFieldNames ? '' : 'payload')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  ServerEvent clone() => ServerEvent()..mergeFromMessage(this);
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  ServerEvent copyWith(void Function(ServerEvent) updates) => super.copyWith((message) => updates(message as ServerEvent)) as ServerEvent;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static ServerEvent create() => ServerEvent._();
  @$core.override
  ServerEvent createEmptyInstance() => create();
  static $pb.PbList<ServerEvent> createRepeated() => $pb.PbList<ServerEvent>();
  @$core.pragma('dart2js:noInline')
  static ServerEvent getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ServerEvent>(create);
  static ServerEvent? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get type => $_getSZ(0);
  @$pb.TagNumber(1)
  set type($core.String value) => $_setString(0, value);
  @$pb.TagNumber(1)
  $core.bool hasType() => $_has(0);
  @$pb.TagNumber(1)
  void clearType() => $_clearField(1);

  @$pb.TagNumber(2)
  $core.String get payload => $_getSZ(1);
  @$pb.TagNumber(2)
  set payload($core.String value) => $_setString(1, value);
  @$pb.TagNumber(2)
  $core.bool hasPayload() => $_has(1);
  @$pb.TagNumber(2)
  void clearPayload() => $_clearField(2);
}


const $core.bool _omitFieldNames = $core.bool.fromEnvironment('protobuf.omit_field_names');
const $core.bool _omitMessageNames = $core.bool.fromEnvironment('protobuf.omit_message_names');
