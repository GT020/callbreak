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

import 'dart:async' as $async;
import 'dart:core' as $core;

import 'package:grpc/service_api.dart' as $grpc;
import 'package:protobuf/protobuf.dart' as $pb;

import 'callbreak.pb.dart' as $0;

export 'callbreak.pb.dart';

@$pb.GrpcServiceName('callbreak.CallbreakService')
class CallbreakServiceClient extends $grpc.Client {
  /// The hostname for this service.
  static const $core.String defaultHost = '';

  /// OAuth scopes needed for the client.
  static const $core.List<$core.String> oauthScopes = [
    '',
  ];

  static final _$register = $grpc.ClientMethod<$0.RegisterRequest, $0.AuthResponse>(
      '/callbreak.CallbreakService/Register',
      ($0.RegisterRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.AuthResponse.fromBuffer(value));
  static final _$login = $grpc.ClientMethod<$0.LoginRequest, $0.AuthResponse>(
      '/callbreak.CallbreakService/Login',
      ($0.LoginRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.AuthResponse.fromBuffer(value));
  static final _$createGame = $grpc.ClientMethod<$0.CreateGameRequest, $0.GameResponse>(
      '/callbreak.CallbreakService/CreateGame',
      ($0.CreateGameRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.GameResponse.fromBuffer(value));
  static final _$gameStream = $grpc.ClientMethod<$0.GameEvent, $0.ServerEvent>(
      '/callbreak.CallbreakService/GameStream',
      ($0.GameEvent value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.ServerEvent.fromBuffer(value));

  CallbreakServiceClient(super.channel, {super.options, super.interceptors});

  $grpc.ResponseFuture<$0.AuthResponse> register($0.RegisterRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$register, request, options: options);
  }

  $grpc.ResponseFuture<$0.AuthResponse> login($0.LoginRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$login, request, options: options);
  }

  $grpc.ResponseFuture<$0.GameResponse> createGame($0.CreateGameRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$createGame, request, options: options);
  }

  $grpc.ResponseStream<$0.ServerEvent> gameStream($async.Stream<$0.GameEvent> request, {$grpc.CallOptions? options}) {
    return $createStreamingCall(_$gameStream, request, options: options);
  }
}

@$pb.GrpcServiceName('callbreak.CallbreakService')
abstract class CallbreakServiceBase extends $grpc.Service {
  $core.String get $name => 'callbreak.CallbreakService';

  CallbreakServiceBase() {
    $addMethod($grpc.ServiceMethod<$0.RegisterRequest, $0.AuthResponse>(
        'Register',
        register_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.RegisterRequest.fromBuffer(value),
        ($0.AuthResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.LoginRequest, $0.AuthResponse>(
        'Login',
        login_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.LoginRequest.fromBuffer(value),
        ($0.AuthResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.CreateGameRequest, $0.GameResponse>(
        'CreateGame',
        createGame_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.CreateGameRequest.fromBuffer(value),
        ($0.GameResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.GameEvent, $0.ServerEvent>(
        'GameStream',
        gameStream,
        true,
        true,
        ($core.List<$core.int> value) => $0.GameEvent.fromBuffer(value),
        ($0.ServerEvent value) => value.writeToBuffer()));
  }

  $async.Future<$0.AuthResponse> register_Pre($grpc.ServiceCall $call, $async.Future<$0.RegisterRequest> $request) async {
    return register($call, await $request);
  }

  $async.Future<$0.AuthResponse> login_Pre($grpc.ServiceCall $call, $async.Future<$0.LoginRequest> $request) async {
    return login($call, await $request);
  }

  $async.Future<$0.GameResponse> createGame_Pre($grpc.ServiceCall $call, $async.Future<$0.CreateGameRequest> $request) async {
    return createGame($call, await $request);
  }

  $async.Future<$0.AuthResponse> register($grpc.ServiceCall call, $0.RegisterRequest request);
  $async.Future<$0.AuthResponse> login($grpc.ServiceCall call, $0.LoginRequest request);
  $async.Future<$0.GameResponse> createGame($grpc.ServiceCall call, $0.CreateGameRequest request);
  $async.Stream<$0.ServerEvent> gameStream($grpc.ServiceCall call, $async.Stream<$0.GameEvent> request);
}
