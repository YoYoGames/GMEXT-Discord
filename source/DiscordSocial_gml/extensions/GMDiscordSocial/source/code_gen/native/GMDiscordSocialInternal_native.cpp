// ##### extgen :: Auto-generated file do not edit!! #####

#include "GMDiscordSocialInternal_native.h"
#include "GMDiscordSocialInternal_exports.h"

using namespace gm_structs;
using namespace gm::wire::codec;

static gm::runtime::DispatchQueue __dispatch_queue;

// Internal function used for fetching dispatched function calls to GML
GMEXPORT double __EXT_NATIVE__GMDiscordSocial_invocation_handler(char* __ret_buffer, double __ret_buffer_length)
{
    gm::byteio::BufferWriter __bw{ __ret_buffer, static_cast<size_t>(__ret_buffer_length) };
    return __dispatch_queue.fetch(__bw);
}

static std::queue<gm::wire::GMBuffer> __buffer_queue;

// Internal function used for queueing buffers to native code
GMEXPORT double __EXT_NATIVE__GMDiscordSocial_queue_buffer(char* __arg_buffer, double __arg_buffer_length)
{
    gm::wire::GMBuffer __buff{__arg_buffer, static_cast<uint64_t>(__arg_buffer_length)};
    __buffer_queue.push(__buff);

    return 1.0;
}

GMEXPORT double __EXT_NATIVE__discord_social_run_callbacks()
{
    discord_social_run_callbacks();
    return 0;
}

GMEXPORT double __EXT_NATIVE__discord_social_init(char* __arg_buffer, double __arg_buffer_length)
{
    gm::byteio::BufferReader __br{__arg_buffer, static_cast<size_t>(__arg_buffer_length)};

    // field: options, type: optional<struct DiscordClientCreateOptions>
    std::optional<gm_structs::DiscordClientCreateOptions> options = gm::wire::codec::readOptional<gm_structs::DiscordClientCreateOptions>(__br);

    discord_social_init(options);
    return 0;
}

GMEXPORT double __EXT_NATIVE__discord_social_shutdown()
{
    discord_social_shutdown();
    return 0;
}

GMEXPORT double __EXT_NATIVE__discord_social_client_end_call(char* __arg_buffer, double __arg_buffer_length)
{
    gm::byteio::BufferReader __br{__arg_buffer, static_cast<size_t>(__arg_buffer_length)};

    // field: channel_id, type: UInt64
    std::uint64_t channel_id = gm::wire::codec::readValue<std::uint64_t>(__br);

    // field: callback, type: Function
    gm::wire::GMFunction callback = gm::wire::codec::readFunction(__br, &__dispatch_queue);

    discord_social_client_end_call(channel_id, callback);
    return 0;
}

GMEXPORT double __EXT_NATIVE__discord_social_client_end_calls(char* __arg_buffer, double __arg_buffer_length)
{
    gm::byteio::BufferReader __br{__arg_buffer, static_cast<size_t>(__arg_buffer_length)};

    // field: callback, type: Function
    gm::wire::GMFunction callback = gm::wire::codec::readFunction(__br, &__dispatch_queue);

    discord_social_client_end_calls(callback);
    return 0;
}

GMEXPORT double __EXT_NATIVE__discord_social_client_get_call(char* __arg_buffer, double __arg_buffer_length, char* __ret_buffer, double __ret_buffer_length)
{
    gm::byteio::BufferReader __br{__arg_buffer, static_cast<size_t>(__arg_buffer_length)};

    // field: channel_id, type: UInt64
    std::uint64_t channel_id = gm::wire::codec::readValue<std::uint64_t>(__br);

    auto&& __result = discord_social_client_get_call(channel_id);
    gm::byteio::BufferWriter __bw{__ret_buffer, static_cast<size_t>(__ret_buffer_length)};

    // return: __result, type: struct DiscordCall
    gm::wire::codec::writeValue(__bw, __result);
    return 0;
}

GMEXPORT double __EXT_NATIVE__discord_social_client_get_calls(char* __ret_buffer, double __ret_buffer_length)
{
    auto&& __result = discord_social_client_get_calls();
    gm::byteio::BufferWriter __bw{__ret_buffer, static_cast<size_t>(__ret_buffer_length)};

    // return: __result, type: struct DiscordCall[]
    gm::wire::codec::writeValue(__bw, __result);
    return 0;
}

GMEXPORT double __EXT_NATIVE__discord_social_client_get_current_input_device(char* __arg_buffer, double __arg_buffer_length)
{
    gm::byteio::BufferReader __br{__arg_buffer, static_cast<size_t>(__arg_buffer_length)};

    // field: callback, type: Function
    gm::wire::GMFunction callback = gm::wire::codec::readFunction(__br, &__dispatch_queue);

    discord_social_client_get_current_input_device(callback);
    return 0;
}

GMEXPORT double __EXT_NATIVE__discord_social_client_get_current_output_device(char* __arg_buffer, double __arg_buffer_length)
{
    gm::byteio::BufferReader __br{__arg_buffer, static_cast<size_t>(__arg_buffer_length)};

    // field: callback, type: Function
    gm::wire::GMFunction callback = gm::wire::codec::readFunction(__br, &__dispatch_queue);

    discord_social_client_get_current_output_device(callback);
    return 0;
}

GMEXPORT double __EXT_NATIVE__discord_social_client_get_input_devices(char* __arg_buffer, double __arg_buffer_length)
{
    gm::byteio::BufferReader __br{__arg_buffer, static_cast<size_t>(__arg_buffer_length)};

    // field: callback, type: Function
    gm::wire::GMFunction callback = gm::wire::codec::readFunction(__br, &__dispatch_queue);

    discord_social_client_get_input_devices(callback);
    return 0;
}

GMEXPORT double __EXT_NATIVE__discord_social_client_get_input_volume()
{
    auto&& __result = discord_social_client_get_input_volume();
    return static_cast<double>(__result);
}

GMEXPORT double __EXT_NATIVE__discord_social_client_get_output_devices(char* __arg_buffer, double __arg_buffer_length)
{
    gm::byteio::BufferReader __br{__arg_buffer, static_cast<size_t>(__arg_buffer_length)};

    // field: callback, type: Function
    gm::wire::GMFunction callback = gm::wire::codec::readFunction(__br, &__dispatch_queue);

    discord_social_client_get_output_devices(callback);
    return 0;
}

GMEXPORT double __EXT_NATIVE__discord_social_client_get_output_volume()
{
    auto&& __result = discord_social_client_get_output_volume();
    return static_cast<double>(__result);
}

GMEXPORT double __EXT_NATIVE__discord_social_client_get_self_deaf_all()
{
    auto&& __result = discord_social_client_get_self_deaf_all();
    return static_cast<double>(__result);
}

GMEXPORT double __EXT_NATIVE__discord_social_client_get_self_mute_all()
{
    auto&& __result = discord_social_client_get_self_mute_all();
    return static_cast<double>(__result);
}

GMEXPORT double __EXT_NATIVE__discord_social_client_set_automatic_gain_control(double on)
{
    discord_social_client_set_automatic_gain_control(static_cast<bool>(on));
    return 0;
}

GMEXPORT double __EXT_NATIVE__discord_social_client_set_device_change_callback(char* __arg_buffer, double __arg_buffer_length)
{
    gm::byteio::BufferReader __br{__arg_buffer, static_cast<size_t>(__arg_buffer_length)};

    // field: callback, type: Function
    gm::wire::GMFunction callback = gm::wire::codec::readFunction(__br, &__dispatch_queue);

    discord_social_client_set_device_change_callback(callback);
    return 0;
}

GMEXPORT double __EXT_NATIVE__discord_social_client_set_echo_cancellation(double on)
{
    discord_social_client_set_echo_cancellation(static_cast<bool>(on));
    return 0;
}

GMEXPORT double __EXT_NATIVE__discord_social_client_set_input_device(char* __arg_buffer, double __arg_buffer_length)
{
    gm::byteio::BufferReader __br{__arg_buffer, static_cast<size_t>(__arg_buffer_length)};

    // field: device_id, type: String
    std::string_view device_id = gm::wire::codec::readValue<std::string_view>(__br);

    // field: callback, type: Function
    gm::wire::GMFunction callback = gm::wire::codec::readFunction(__br, &__dispatch_queue);

    discord_social_client_set_input_device(device_id, callback);
    return 0;
}

GMEXPORT double __EXT_NATIVE__discord_social_client_set_input_volume(double vol)
{
    discord_social_client_set_input_volume(static_cast<float>(vol));
    return 0;
}

GMEXPORT double __EXT_NATIVE__discord_social_client_set_no_audio_input_callback(char* __arg_buffer, double __arg_buffer_length)
{
    gm::byteio::BufferReader __br{__arg_buffer, static_cast<size_t>(__arg_buffer_length)};

    // field: callback, type: Function
    gm::wire::GMFunction callback = gm::wire::codec::readFunction(__br, &__dispatch_queue);

    discord_social_client_set_no_audio_input_callback(callback);
    return 0;
}

GMEXPORT double __EXT_NATIVE__discord_social_client_set_no_audio_input_threshold(double threshold)
{
    discord_social_client_set_no_audio_input_threshold(static_cast<float>(threshold));
    return 0;
}

GMEXPORT double __EXT_NATIVE__discord_social_client_set_noise_suppression(double on)
{
    discord_social_client_set_noise_suppression(static_cast<bool>(on));
    return 0;
}

GMEXPORT double __EXT_NATIVE__discord_social_client_set_opus_hardware_coding(double encode, double decode)
{
    discord_social_client_set_opus_hardware_coding(static_cast<bool>(encode), static_cast<bool>(decode));
    return 0;
}

GMEXPORT double __EXT_NATIVE__discord_social_client_set_output_device(char* __arg_buffer, double __arg_buffer_length)
{
    gm::byteio::BufferReader __br{__arg_buffer, static_cast<size_t>(__arg_buffer_length)};

    // field: device_id, type: String
    std::string_view device_id = gm::wire::codec::readValue<std::string_view>(__br);

    // field: callback, type: Function
    gm::wire::GMFunction callback = gm::wire::codec::readFunction(__br, &__dispatch_queue);

    discord_social_client_set_output_device(device_id, callback);
    return 0;
}

GMEXPORT double __EXT_NATIVE__discord_social_client_set_output_volume(double vol)
{
    discord_social_client_set_output_volume(static_cast<float>(vol));
    return 0;
}

GMEXPORT double __EXT_NATIVE__discord_social_client_set_self_deaf_all(double deaf)
{
    discord_social_client_set_self_deaf_all(static_cast<bool>(deaf));
    return 0;
}

GMEXPORT double __EXT_NATIVE__discord_social_client_set_self_mute_all(double mute)
{
    discord_social_client_set_self_mute_all(static_cast<bool>(mute));
    return 0;
}

GMEXPORT double __EXT_NATIVE__discord_social_client_set_thread_priority(char* __arg_buffer, double __arg_buffer_length)
{
    gm::byteio::BufferReader __br{__arg_buffer, static_cast<size_t>(__arg_buffer_length)};

    // field: thread, type: enum DiscordClientThread
    gm_enums::DiscordClientThread thread = gm::wire::codec::readValue<gm_enums::DiscordClientThread>(__br);

    // field: priority, type: Int32
    std::int32_t priority = gm::wire::codec::readValue<std::int32_t>(__br);

    discord_social_client_set_thread_priority(thread, priority);
    return 0;
}

GMEXPORT double __EXT_NATIVE__discord_social_client_set_voice_participant_changed_callback(char* __arg_buffer, double __arg_buffer_length)
{
    gm::byteio::BufferReader __br{__arg_buffer, static_cast<size_t>(__arg_buffer_length)};

    // field: callback, type: Function
    gm::wire::GMFunction callback = gm::wire::codec::readFunction(__br, &__dispatch_queue);

    discord_social_client_set_voice_participant_changed_callback(callback);
    return 0;
}

GMEXPORT double __EXT_NATIVE__discord_social_client_show_audio_route_picker()
{
    auto&& __result = discord_social_client_show_audio_route_picker();
    return static_cast<double>(__result);
}

GMEXPORT double __EXT_NATIVE__discord_social_client_start_call(char* __arg_buffer, double __arg_buffer_length, char* __ret_buffer, double __ret_buffer_length)
{
    gm::byteio::BufferReader __br{__arg_buffer, static_cast<size_t>(__arg_buffer_length)};

    // field: channel_id, type: UInt64
    std::uint64_t channel_id = gm::wire::codec::readValue<std::uint64_t>(__br);

    auto&& __result = discord_social_client_start_call(channel_id);
    gm::byteio::BufferWriter __bw{__ret_buffer, static_cast<size_t>(__ret_buffer_length)};

    // return: __result, type: struct DiscordCall
    gm::wire::codec::writeValue(__bw, __result);
    return 0;
}

GMEXPORT double __EXT_NATIVE__discord_social_call_audio_should_mute(double should_mute)
{
    discord_social_call_audio_should_mute(static_cast<bool>(should_mute));
    return 0;
}

GMEXPORT double __EXT_NATIVE__discord_social_client_start_call_with_audio_callbacks(char* __arg_buffer, double __arg_buffer_length, char* __ret_buffer, double __ret_buffer_length)
{
    gm::byteio::BufferReader __br{__arg_buffer, static_cast<size_t>(__arg_buffer_length)};

    // field: lobby_id, type: UInt64
    std::uint64_t lobby_id = gm::wire::codec::readValue<std::uint64_t>(__br);

    // field: received_callback, type: Function
    gm::wire::GMFunction received_callback = gm::wire::codec::readFunction(__br, &__dispatch_queue);

    // field: captured_callback, type: Function
    gm::wire::GMFunction captured_callback = gm::wire::codec::readFunction(__br, &__dispatch_queue);

    auto&& __result = discord_social_client_start_call_with_audio_callbacks(lobby_id, received_callback, captured_callback);
    gm::byteio::BufferWriter __bw{__ret_buffer, static_cast<size_t>(__ret_buffer_length)};

    // return: __result, type: struct DiscordCall
    gm::wire::codec::writeValue(__bw, __result);
    return 0;
}

GMEXPORT double __EXT_NATIVE__discord_social_call_fetch_received_data(char* __arg_buffer, double __arg_buffer_length, char* __ret_buffer, double __ret_buffer_length)
{
    gm::byteio::BufferReader __br{__arg_buffer, static_cast<size_t>(__arg_buffer_length)};

    // field: lobby_id, type: UInt64
    std::uint64_t lobby_id = gm::wire::codec::readValue<std::uint64_t>(__br);

    // field: user_id, type: UInt64
    std::uint64_t user_id = gm::wire::codec::readValue<std::uint64_t>(__br);

    // field: out_buffer, type: Buffer
    gm::wire::GMBuffer out_buffer = __buffer_queue.front();
    __buffer_queue.pop();

    auto&& __result = discord_social_call_fetch_received_data(lobby_id, user_id, out_buffer);
    gm::byteio::BufferWriter __bw{__ret_buffer, static_cast<size_t>(__ret_buffer_length)};

    // return: __result, type: UInt64
    gm::wire::codec::writeValue(__bw, __result);
    return 0;
}

GMEXPORT double __EXT_NATIVE__discord_social_call_fetch_captured_data(char* __arg_buffer, double __arg_buffer_length, char* __ret_buffer, double __ret_buffer_length)
{
    gm::byteio::BufferReader __br{__arg_buffer, static_cast<size_t>(__arg_buffer_length)};

    // field: lobby_id, type: UInt64
    std::uint64_t lobby_id = gm::wire::codec::readValue<std::uint64_t>(__br);

    // field: out_buffer, type: Buffer
    gm::wire::GMBuffer out_buffer = __buffer_queue.front();
    __buffer_queue.pop();

    auto&& __result = discord_social_call_fetch_captured_data(lobby_id, out_buffer);
    gm::byteio::BufferWriter __bw{__ret_buffer, static_cast<size_t>(__ret_buffer_length)};

    // return: __result, type: UInt64
    gm::wire::codec::writeValue(__bw, __result);
    return 0;
}

GMEXPORT double __EXT_NATIVE__discord_social_client_abort_authorize()
{
    discord_social_client_abort_authorize();
    return 0;
}

GMEXPORT double __EXT_NATIVE__discord_social_client_abort_get_token_from_device()
{
    discord_social_client_abort_get_token_from_device();
    return 0;
}

GMEXPORT char* __EXT_NATIVE__discord_social_client_create_authorization_code_verifier()
{
    static std::string __result;
    __result = discord_social_client_create_authorization_code_verifier();
    return (char*)__result.c_str();
}

GMEXPORT double __EXT_NATIVE__discord_social_client_authorize(char* __arg_buffer, double __arg_buffer_length)
{
    gm::byteio::BufferReader __br{__arg_buffer, static_cast<size_t>(__arg_buffer_length)};

    // field: args, type: struct DiscordAuthorizationArgs
    gm_structs::DiscordAuthorizationArgs args = gm::wire::codec::readValue<gm_structs::DiscordAuthorizationArgs>(__br);

    // field: callback, type: Function
    gm::wire::GMFunction callback = gm::wire::codec::readFunction(__br, &__dispatch_queue);

    discord_social_client_authorize(args, callback);
    return 0;
}

GMEXPORT double __EXT_NATIVE__discord_social_client_close_authorize_device_screen()
{
    discord_social_client_close_authorize_device_screen();
    return 0;
}

GMEXPORT double __EXT_NATIVE__discord_social_client_get_provisional_token(char* __arg_buffer, double __arg_buffer_length)
{
    gm::byteio::BufferReader __br{__arg_buffer, static_cast<size_t>(__arg_buffer_length)};

    // field: application_id, type: UInt64
    std::uint64_t application_id = gm::wire::codec::readValue<std::uint64_t>(__br);

    // field: token_type, type: enum DiscordAuthenticationExternalAuthType
    gm_enums::DiscordAuthenticationExternalAuthType token_type = gm::wire::codec::readValue<gm_enums::DiscordAuthenticationExternalAuthType>(__br);

    // field: token, type: String
    std::string_view token = gm::wire::codec::readValue<std::string_view>(__br);

    // field: callback, type: Function
    gm::wire::GMFunction callback = gm::wire::codec::readFunction(__br, &__dispatch_queue);

    discord_social_client_get_provisional_token(application_id, token_type, token, callback);
    return 0;
}

GMEXPORT double __EXT_NATIVE__discord_social_client_get_token(char* __arg_buffer, double __arg_buffer_length)
{
    gm::byteio::BufferReader __br{__arg_buffer, static_cast<size_t>(__arg_buffer_length)};

    // field: application_id, type: UInt64
    std::uint64_t application_id = gm::wire::codec::readValue<std::uint64_t>(__br);

    // field: code, type: String
    std::string_view code = gm::wire::codec::readValue<std::string_view>(__br);

    // field: code_verifier, type: String
    std::string_view code_verifier = gm::wire::codec::readValue<std::string_view>(__br);

    // field: redirect_uri, type: String
    std::string_view redirect_uri = gm::wire::codec::readValue<std::string_view>(__br);

    // field: callback, type: Function
    gm::wire::GMFunction callback = gm::wire::codec::readFunction(__br, &__dispatch_queue);

    discord_social_client_get_token(application_id, code, code_verifier, redirect_uri, callback);
    return 0;
}

GMEXPORT double __EXT_NATIVE__discord_social_client_get_token_from_device(char* __arg_buffer, double __arg_buffer_length)
{
    gm::byteio::BufferReader __br{__arg_buffer, static_cast<size_t>(__arg_buffer_length)};

    // field: client_id, type: UInt64
    std::uint64_t client_id = gm::wire::codec::readValue<std::uint64_t>(__br);

    // field: scopes, type: String
    std::string_view scopes = gm::wire::codec::readValue<std::string_view>(__br);

    // field: callback, type: Function
    gm::wire::GMFunction callback = gm::wire::codec::readFunction(__br, &__dispatch_queue);

    discord_social_client_get_token_from_device(client_id, scopes, callback);
    return 0;
}

GMEXPORT double __EXT_NATIVE__discord_social_client_get_token_from_device_provisional_merge(char* __arg_buffer, double __arg_buffer_length)
{
    gm::byteio::BufferReader __br{__arg_buffer, static_cast<size_t>(__arg_buffer_length)};

    // field: client_id, type: UInt64
    std::uint64_t client_id = gm::wire::codec::readValue<std::uint64_t>(__br);

    // field: scopes, type: String
    std::string_view scopes = gm::wire::codec::readValue<std::string_view>(__br);

    // field: external_auth_type, type: enum DiscordAuthenticationExternalAuthType
    gm_enums::DiscordAuthenticationExternalAuthType external_auth_type = gm::wire::codec::readValue<gm_enums::DiscordAuthenticationExternalAuthType>(__br);

    // field: external_auth_token, type: String
    std::string_view external_auth_token = gm::wire::codec::readValue<std::string_view>(__br);

    // field: callback, type: Function
    gm::wire::GMFunction callback = gm::wire::codec::readFunction(__br, &__dispatch_queue);

    discord_social_client_get_token_from_device_provisional_merge(client_id, scopes, external_auth_type, external_auth_token, callback);
    return 0;
}

GMEXPORT double __EXT_NATIVE__discord_social_client_get_token_from_provisional_merge(char* __arg_buffer, double __arg_buffer_length)
{
    gm::byteio::BufferReader __br{__arg_buffer, static_cast<size_t>(__arg_buffer_length)};

    // field: application_id, type: UInt64
    std::uint64_t application_id = gm::wire::codec::readValue<std::uint64_t>(__br);

    // field: code, type: String
    std::string_view code = gm::wire::codec::readValue<std::string_view>(__br);

    // field: code_verifier, type: String
    std::string_view code_verifier = gm::wire::codec::readValue<std::string_view>(__br);

    // field: redirect_uri, type: String
    std::string_view redirect_uri = gm::wire::codec::readValue<std::string_view>(__br);

    // field: external_auth_type, type: enum DiscordAuthenticationExternalAuthType
    gm_enums::DiscordAuthenticationExternalAuthType external_auth_type = gm::wire::codec::readValue<gm_enums::DiscordAuthenticationExternalAuthType>(__br);

    // field: external_auth_token, type: String
    std::string_view external_auth_token = gm::wire::codec::readValue<std::string_view>(__br);

    // field: callback, type: Function
    gm::wire::GMFunction callback = gm::wire::codec::readFunction(__br, &__dispatch_queue);

    discord_social_client_get_token_from_provisional_merge(application_id, code, code_verifier, redirect_uri, external_auth_type, external_auth_token, callback);
    return 0;
}

GMEXPORT double __EXT_NATIVE__discord_social_client_is_authenticated()
{
    auto&& __result = discord_social_client_is_authenticated();
    return static_cast<double>(__result);
}

GMEXPORT double __EXT_NATIVE__discord_social_client_open_authorize_device_screen(char* __arg_buffer, double __arg_buffer_length)
{
    gm::byteio::BufferReader __br{__arg_buffer, static_cast<size_t>(__arg_buffer_length)};

    // field: client_id, type: UInt64
    std::uint64_t client_id = gm::wire::codec::readValue<std::uint64_t>(__br);

    // field: user_code, type: String
    std::string_view user_code = gm::wire::codec::readValue<std::string_view>(__br);

    discord_social_client_open_authorize_device_screen(client_id, user_code);
    return 0;
}

GMEXPORT double __EXT_NATIVE__discord_social_client_provisional_user_merge_completed(double success)
{
    discord_social_client_provisional_user_merge_completed(static_cast<bool>(success));
    return 0;
}

GMEXPORT double __EXT_NATIVE__discord_social_client_refresh_token(char* __arg_buffer, double __arg_buffer_length)
{
    gm::byteio::BufferReader __br{__arg_buffer, static_cast<size_t>(__arg_buffer_length)};

    // field: application_id, type: UInt64
    std::uint64_t application_id = gm::wire::codec::readValue<std::uint64_t>(__br);

    // field: refresh_token, type: String
    std::string_view refresh_token = gm::wire::codec::readValue<std::string_view>(__br);

    // field: callback, type: Function
    gm::wire::GMFunction callback = gm::wire::codec::readFunction(__br, &__dispatch_queue);

    discord_social_client_refresh_token(application_id, refresh_token, callback);
    return 0;
}

GMEXPORT double __EXT_NATIVE__discord_social_client_set_authorize_device_screen_closed_callback(char* __arg_buffer, double __arg_buffer_length)
{
    gm::byteio::BufferReader __br{__arg_buffer, static_cast<size_t>(__arg_buffer_length)};

    // field: callback, type: Function
    gm::wire::GMFunction callback = gm::wire::codec::readFunction(__br, &__dispatch_queue);

    discord_social_client_set_authorize_device_screen_closed_callback(callback);
    return 0;
}

GMEXPORT double __EXT_NATIVE__discord_social_client_set_game_window_pid(double pid)
{
    discord_social_client_set_game_window_pid(static_cast<std::int32_t>(pid));
    return 0;
}

GMEXPORT double __EXT_NATIVE__discord_social_client_set_token_expiration_callback(char* __arg_buffer, double __arg_buffer_length)
{
    gm::byteio::BufferReader __br{__arg_buffer, static_cast<size_t>(__arg_buffer_length)};

    // field: callback, type: Function
    gm::wire::GMFunction callback = gm::wire::codec::readFunction(__br, &__dispatch_queue);

    discord_social_client_set_token_expiration_callback(callback);
    return 0;
}

GMEXPORT double __EXT_NATIVE__discord_social_client_update_provisional_account_display_name(char* __arg_buffer, double __arg_buffer_length)
{
    gm::byteio::BufferReader __br{__arg_buffer, static_cast<size_t>(__arg_buffer_length)};

    // field: name, type: String
    std::string_view name = gm::wire::codec::readValue<std::string_view>(__br);

    // field: callback, type: Function
    gm::wire::GMFunction callback = gm::wire::codec::readFunction(__br, &__dispatch_queue);

    discord_social_client_update_provisional_account_display_name(name, callback);
    return 0;
}

GMEXPORT double __EXT_NATIVE__discord_social_client_update_token(char* __arg_buffer, double __arg_buffer_length)
{
    gm::byteio::BufferReader __br{__arg_buffer, static_cast<size_t>(__arg_buffer_length)};

    // field: token_type, type: enum DiscordAuthorizationTokenType
    gm_enums::DiscordAuthorizationTokenType token_type = gm::wire::codec::readValue<gm_enums::DiscordAuthorizationTokenType>(__br);

    // field: token, type: String
    std::string_view token = gm::wire::codec::readValue<std::string_view>(__br);

    // field: callback, type: Function
    gm::wire::GMFunction callback = gm::wire::codec::readFunction(__br, &__dispatch_queue);

    discord_social_client_update_token(token_type, token, callback);
    return 0;
}

GMEXPORT double __EXT_NATIVE__discord_social_client_revoke_token(char* __arg_buffer, double __arg_buffer_length)
{
    gm::byteio::BufferReader __br{__arg_buffer, static_cast<size_t>(__arg_buffer_length)};

    // field: application_id, type: UInt64
    std::uint64_t application_id = gm::wire::codec::readValue<std::uint64_t>(__br);

    // field: token, type: String
    std::string_view token = gm::wire::codec::readValue<std::string_view>(__br);

    // field: callback, type: Function
    gm::wire::GMFunction callback = gm::wire::codec::readFunction(__br, &__dispatch_queue);

    discord_social_client_revoke_token(application_id, token, callback);
    return 0;
}

GMEXPORT double __EXT_NATIVE__discord_social_client_exchange_child_token(char* __arg_buffer, double __arg_buffer_length)
{
    gm::byteio::BufferReader __br{__arg_buffer, static_cast<size_t>(__arg_buffer_length)};

    // field: parent_application_token, type: String
    std::string_view parent_application_token = gm::wire::codec::readValue<std::string_view>(__br);

    // field: child_application_id, type: UInt64
    std::uint64_t child_application_id = gm::wire::codec::readValue<std::uint64_t>(__br);

    // field: callback, type: Function
    gm::wire::GMFunction callback = gm::wire::codec::readFunction(__br, &__dispatch_queue);

    discord_social_client_exchange_child_token(parent_application_token, child_application_id, callback);
    return 0;
}

GMEXPORT double __EXT_NATIVE__discord_social_client_unmerge_into_provisional_account(char* __arg_buffer, double __arg_buffer_length)
{
    gm::byteio::BufferReader __br{__arg_buffer, static_cast<size_t>(__arg_buffer_length)};

    // field: application_id, type: UInt64
    std::uint64_t application_id = gm::wire::codec::readValue<std::uint64_t>(__br);

    // field: external_auth_type, type: enum DiscordAuthenticationExternalAuthType
    gm_enums::DiscordAuthenticationExternalAuthType external_auth_type = gm::wire::codec::readValue<gm_enums::DiscordAuthenticationExternalAuthType>(__br);

    // field: external_auth_token, type: String
    std::string_view external_auth_token = gm::wire::codec::readValue<std::string_view>(__br);

    // field: callback, type: Function
    gm::wire::GMFunction callback = gm::wire::codec::readFunction(__br, &__dispatch_queue);

    discord_social_client_unmerge_into_provisional_account(application_id, external_auth_type, external_auth_token, callback);
    return 0;
}

GMEXPORT double __EXT_NATIVE__discord_social_client_register_authorize_request_callback(char* __arg_buffer, double __arg_buffer_length)
{
    gm::byteio::BufferReader __br{__arg_buffer, static_cast<size_t>(__arg_buffer_length)};

    // field: callback, type: Function
    gm::wire::GMFunction callback = gm::wire::codec::readFunction(__br, &__dispatch_queue);

    discord_social_client_register_authorize_request_callback(callback);
    return 0;
}

GMEXPORT double __EXT_NATIVE__discord_social_client_can_open_message_in_discord(char* __arg_buffer, double __arg_buffer_length)
{
    gm::byteio::BufferReader __br{__arg_buffer, static_cast<size_t>(__arg_buffer_length)};

    // field: message_id, type: UInt64
    std::uint64_t message_id = gm::wire::codec::readValue<std::uint64_t>(__br);

    auto&& __result = discord_social_client_can_open_message_in_discord(message_id);
    return static_cast<double>(__result);
}

GMEXPORT double __EXT_NATIVE__discord_social_client_delete_user_message(char* __arg_buffer, double __arg_buffer_length)
{
    gm::byteio::BufferReader __br{__arg_buffer, static_cast<size_t>(__arg_buffer_length)};

    // field: recipient_id, type: UInt64
    std::uint64_t recipient_id = gm::wire::codec::readValue<std::uint64_t>(__br);

    // field: message_id, type: UInt64
    std::uint64_t message_id = gm::wire::codec::readValue<std::uint64_t>(__br);

    // field: callback, type: Function
    gm::wire::GMFunction callback = gm::wire::codec::readFunction(__br, &__dispatch_queue);

    discord_social_client_delete_user_message(recipient_id, message_id, callback);
    return 0;
}

GMEXPORT double __EXT_NATIVE__discord_social_client_get_channel_handle(char* __arg_buffer, double __arg_buffer_length, char* __ret_buffer, double __ret_buffer_length)
{
    gm::byteio::BufferReader __br{__arg_buffer, static_cast<size_t>(__arg_buffer_length)};

    // field: channel_id, type: UInt64
    std::uint64_t channel_id = gm::wire::codec::readValue<std::uint64_t>(__br);

    auto&& __result = discord_social_client_get_channel_handle(channel_id);
    gm::byteio::BufferWriter __bw{__ret_buffer, static_cast<size_t>(__ret_buffer_length)};

    // return: __result, type: optional<struct DiscordChannelHandle>
    gm::wire::codec::writeValue(__bw, __result);
    return 0;
}

GMEXPORT double __EXT_NATIVE__discord_social_client_get_message_handle(char* __arg_buffer, double __arg_buffer_length, char* __ret_buffer, double __ret_buffer_length)
{
    gm::byteio::BufferReader __br{__arg_buffer, static_cast<size_t>(__arg_buffer_length)};

    // field: message_id, type: UInt64
    std::uint64_t message_id = gm::wire::codec::readValue<std::uint64_t>(__br);

    auto&& __result = discord_social_client_get_message_handle(message_id);
    gm::byteio::BufferWriter __bw{__ret_buffer, static_cast<size_t>(__ret_buffer_length)};

    // return: __result, type: optional<struct DiscordMessageHandle>
    gm::wire::codec::writeValue(__bw, __result);
    return 0;
}

GMEXPORT double __EXT_NATIVE__discord_social_client_open_message_in_discord(char* __arg_buffer, double __arg_buffer_length)
{
    gm::byteio::BufferReader __br{__arg_buffer, static_cast<size_t>(__arg_buffer_length)};

    // field: message_id, type: UInt64
    std::uint64_t message_id = gm::wire::codec::readValue<std::uint64_t>(__br);

    // field: provisional_user_merge_required_callback, type: Function
    gm::wire::GMFunction provisional_user_merge_required_callback = gm::wire::codec::readFunction(__br, &__dispatch_queue);

    // field: open_message_in_discord_callback, type: Function
    gm::wire::GMFunction open_message_in_discord_callback = gm::wire::codec::readFunction(__br, &__dispatch_queue);

    discord_social_client_open_message_in_discord(message_id, provisional_user_merge_required_callback, open_message_in_discord_callback);
    return 0;
}

GMEXPORT double __EXT_NATIVE__discord_social_client_send_lobby_message(char* __arg_buffer, double __arg_buffer_length)
{
    gm::byteio::BufferReader __br{__arg_buffer, static_cast<size_t>(__arg_buffer_length)};

    // field: lobby_id, type: UInt64
    std::uint64_t lobby_id = gm::wire::codec::readValue<std::uint64_t>(__br);

    // field: content, type: String
    std::string_view content = gm::wire::codec::readValue<std::string_view>(__br);

    // field: callback, type: Function
    gm::wire::GMFunction callback = gm::wire::codec::readFunction(__br, &__dispatch_queue);

    discord_social_client_send_lobby_message(lobby_id, content, callback);
    return 0;
}

GMEXPORT double __EXT_NATIVE__discord_social_client_send_lobby_message_with_metadata(char* __arg_buffer, double __arg_buffer_length)
{
    gm::byteio::BufferReader __br{__arg_buffer, static_cast<size_t>(__arg_buffer_length)};

    // field: lobby_id, type: UInt64
    std::uint64_t lobby_id = gm::wire::codec::readValue<std::uint64_t>(__br);

    // field: content, type: String
    std::string_view content = gm::wire::codec::readValue<std::string_view>(__br);

    // field: metadata, type: AnyMap
    gm::wire::GMObjectView metadata = gm::wire::codec::readValue<gm::wire::GMObjectView>(__br);

    // field: callback, type: Function
    gm::wire::GMFunction callback = gm::wire::codec::readFunction(__br, &__dispatch_queue);

    discord_social_client_send_lobby_message_with_metadata(lobby_id, content, metadata, callback);
    return 0;
}

GMEXPORT double __EXT_NATIVE__discord_social_client_send_user_message(char* __arg_buffer, double __arg_buffer_length)
{
    gm::byteio::BufferReader __br{__arg_buffer, static_cast<size_t>(__arg_buffer_length)};

    // field: recipient_id, type: UInt64
    std::uint64_t recipient_id = gm::wire::codec::readValue<std::uint64_t>(__br);

    // field: content, type: String
    std::string_view content = gm::wire::codec::readValue<std::string_view>(__br);

    // field: callback, type: Function
    gm::wire::GMFunction callback = gm::wire::codec::readFunction(__br, &__dispatch_queue);

    discord_social_client_send_user_message(recipient_id, content, callback);
    return 0;
}

GMEXPORT double __EXT_NATIVE__discord_social_client_send_user_message_with_metadata(char* __arg_buffer, double __arg_buffer_length)
{
    gm::byteio::BufferReader __br{__arg_buffer, static_cast<size_t>(__arg_buffer_length)};

    // field: recipient_id, type: UInt64
    std::uint64_t recipient_id = gm::wire::codec::readValue<std::uint64_t>(__br);

    // field: content, type: String
    std::string_view content = gm::wire::codec::readValue<std::string_view>(__br);

    // field: metadata, type: AnyMap
    gm::wire::GMObjectView metadata = gm::wire::codec::readValue<gm::wire::GMObjectView>(__br);

    // field: callback, type: Function
    gm::wire::GMFunction callback = gm::wire::codec::readFunction(__br, &__dispatch_queue);

    discord_social_client_send_user_message_with_metadata(recipient_id, content, metadata, callback);
    return 0;
}

GMEXPORT double __EXT_NATIVE__discord_social_client_set_message_created_callback(char* __arg_buffer, double __arg_buffer_length)
{
    gm::byteio::BufferReader __br{__arg_buffer, static_cast<size_t>(__arg_buffer_length)};

    // field: callback, type: Function
    gm::wire::GMFunction callback = gm::wire::codec::readFunction(__br, &__dispatch_queue);

    discord_social_client_set_message_created_callback(callback);
    return 0;
}

GMEXPORT double __EXT_NATIVE__discord_social_client_set_message_deleted_callback(char* __arg_buffer, double __arg_buffer_length)
{
    gm::byteio::BufferReader __br{__arg_buffer, static_cast<size_t>(__arg_buffer_length)};

    // field: callback, type: Function
    gm::wire::GMFunction callback = gm::wire::codec::readFunction(__br, &__dispatch_queue);

    discord_social_client_set_message_deleted_callback(callback);
    return 0;
}

GMEXPORT double __EXT_NATIVE__discord_social_client_set_message_updated_callback(char* __arg_buffer, double __arg_buffer_length)
{
    gm::byteio::BufferReader __br{__arg_buffer, static_cast<size_t>(__arg_buffer_length)};

    // field: callback, type: Function
    gm::wire::GMFunction callback = gm::wire::codec::readFunction(__br, &__dispatch_queue);

    discord_social_client_set_message_updated_callback(callback);
    return 0;
}

GMEXPORT double __EXT_NATIVE__discord_social_client_set_showing_chat(double showing_chat)
{
    discord_social_client_set_showing_chat(static_cast<bool>(showing_chat));
    return 0;
}

GMEXPORT double __EXT_NATIVE__discord_social_client_edit_user_message(char* __arg_buffer, double __arg_buffer_length)
{
    gm::byteio::BufferReader __br{__arg_buffer, static_cast<size_t>(__arg_buffer_length)};

    // field: recipient_id, type: UInt64
    std::uint64_t recipient_id = gm::wire::codec::readValue<std::uint64_t>(__br);

    // field: message_id, type: UInt64
    std::uint64_t message_id = gm::wire::codec::readValue<std::uint64_t>(__br);

    // field: content, type: String
    std::string_view content = gm::wire::codec::readValue<std::string_view>(__br);

    // field: callback, type: Function
    gm::wire::GMFunction callback = gm::wire::codec::readFunction(__br, &__dispatch_queue);

    discord_social_client_edit_user_message(recipient_id, message_id, content, callback);
    return 0;
}

GMEXPORT double __EXT_NATIVE__discord_social_client_get_lobby_messages_with_limit(char* __arg_buffer, double __arg_buffer_length)
{
    gm::byteio::BufferReader __br{__arg_buffer, static_cast<size_t>(__arg_buffer_length)};

    // field: lobby_id, type: UInt64
    std::uint64_t lobby_id = gm::wire::codec::readValue<std::uint64_t>(__br);

    // field: limit, type: Int32
    std::int32_t limit = gm::wire::codec::readValue<std::int32_t>(__br);

    // field: callback, type: Function
    gm::wire::GMFunction callback = gm::wire::codec::readFunction(__br, &__dispatch_queue);

    discord_social_client_get_lobby_messages_with_limit(lobby_id, limit, callback);
    return 0;
}

GMEXPORT double __EXT_NATIVE__discord_social_client_get_user_message_summaries(char* __arg_buffer, double __arg_buffer_length)
{
    gm::byteio::BufferReader __br{__arg_buffer, static_cast<size_t>(__arg_buffer_length)};

    // field: callback, type: Function
    gm::wire::GMFunction callback = gm::wire::codec::readFunction(__br, &__dispatch_queue);

    discord_social_client_get_user_message_summaries(callback);
    return 0;
}

GMEXPORT double __EXT_NATIVE__discord_social_client_get_user_messages_with_limit(char* __arg_buffer, double __arg_buffer_length)
{
    gm::byteio::BufferReader __br{__arg_buffer, static_cast<size_t>(__arg_buffer_length)};

    // field: recipient_id, type: UInt64
    std::uint64_t recipient_id = gm::wire::codec::readValue<std::uint64_t>(__br);

    // field: limit, type: Int32
    std::int32_t limit = gm::wire::codec::readValue<std::int32_t>(__br);

    // field: callback, type: Function
    gm::wire::GMFunction callback = gm::wire::codec::readFunction(__br, &__dispatch_queue);

    discord_social_client_get_user_messages_with_limit(recipient_id, limit, callback);
    return 0;
}

GMEXPORT double __EXT_NATIVE__discord_social_client_add_log_callback(char* __arg_buffer, double __arg_buffer_length)
{
    gm::byteio::BufferReader __br{__arg_buffer, static_cast<size_t>(__arg_buffer_length)};

    // field: min_severity, type: enum DiscordLoggingSeverity
    gm_enums::DiscordLoggingSeverity min_severity = gm::wire::codec::readValue<gm_enums::DiscordLoggingSeverity>(__br);

    // field: callback, type: Function
    gm::wire::GMFunction callback = gm::wire::codec::readFunction(__br, &__dispatch_queue);

    discord_social_client_add_log_callback(min_severity, callback);
    return 0;
}

GMEXPORT double __EXT_NATIVE__discord_social_client_add_voice_log_callback(char* __arg_buffer, double __arg_buffer_length)
{
    gm::byteio::BufferReader __br{__arg_buffer, static_cast<size_t>(__arg_buffer_length)};

    // field: min_severity, type: enum DiscordLoggingSeverity
    gm_enums::DiscordLoggingSeverity min_severity = gm::wire::codec::readValue<gm_enums::DiscordLoggingSeverity>(__br);

    // field: callback, type: Function
    gm::wire::GMFunction callback = gm::wire::codec::readFunction(__br, &__dispatch_queue);

    discord_social_client_add_voice_log_callback(min_severity, callback);
    return 0;
}

GMEXPORT double __EXT_NATIVE__discord_social_client_connect()
{
    discord_social_client_connect();
    return 0;
}

GMEXPORT double __EXT_NATIVE__discord_social_client_disconnect()
{
    discord_social_client_disconnect();
    return 0;
}

GMEXPORT double __EXT_NATIVE__discord_social_client_get_status(char* __ret_buffer, double __ret_buffer_length)
{
    auto&& __result = discord_social_client_get_status();
    gm::byteio::BufferWriter __bw{__ret_buffer, static_cast<size_t>(__ret_buffer_length)};

    // return: __result, type: enum DiscordClientStatus
    gm::wire::codec::writeValue(__bw, __result);
    return 0;
}

GMEXPORT double __EXT_NATIVE__discord_social_client_set_log_dir(char* __arg_buffer, double __arg_buffer_length)
{
    gm::byteio::BufferReader __br{__arg_buffer, static_cast<size_t>(__arg_buffer_length)};

    // field: path, type: String
    std::string_view path = gm::wire::codec::readValue<std::string_view>(__br);

    // field: min_severity, type: enum DiscordLoggingSeverity
    gm_enums::DiscordLoggingSeverity min_severity = gm::wire::codec::readValue<gm_enums::DiscordLoggingSeverity>(__br);

    auto&& __result = discord_social_client_set_log_dir(path, min_severity);
    return static_cast<double>(__result);
}

GMEXPORT double __EXT_NATIVE__discord_social_client_set_status_changed_callback(char* __arg_buffer, double __arg_buffer_length)
{
    gm::byteio::BufferReader __br{__arg_buffer, static_cast<size_t>(__arg_buffer_length)};

    // field: callback, type: Function
    gm::wire::GMFunction callback = gm::wire::codec::readFunction(__br, &__dispatch_queue);

    discord_social_client_set_status_changed_callback(callback);
    return 0;
}

GMEXPORT double __EXT_NATIVE__discord_social_client_set_voice_log_dir(char* __arg_buffer, double __arg_buffer_length)
{
    gm::byteio::BufferReader __br{__arg_buffer, static_cast<size_t>(__arg_buffer_length)};

    // field: path, type: String
    std::string_view path = gm::wire::codec::readValue<std::string_view>(__br);

    // field: min_severity, type: enum DiscordLoggingSeverity
    gm_enums::DiscordLoggingSeverity min_severity = gm::wire::codec::readValue<gm_enums::DiscordLoggingSeverity>(__br);

    discord_social_client_set_voice_log_dir(path, min_severity);
    return 0;
}

GMEXPORT double __EXT_NATIVE__discord_social_client_create_or_join_lobby(char* __arg_buffer, double __arg_buffer_length)
{
    gm::byteio::BufferReader __br{__arg_buffer, static_cast<size_t>(__arg_buffer_length)};

    // field: secret, type: String
    std::string_view secret = gm::wire::codec::readValue<std::string_view>(__br);

    // field: callback, type: Function
    gm::wire::GMFunction callback = gm::wire::codec::readFunction(__br, &__dispatch_queue);

    discord_social_client_create_or_join_lobby(secret, callback);
    return 0;
}

GMEXPORT double __EXT_NATIVE__discord_social_client_create_or_join_lobby_with_metadata(char* __arg_buffer, double __arg_buffer_length)
{
    gm::byteio::BufferReader __br{__arg_buffer, static_cast<size_t>(__arg_buffer_length)};

    // field: secret, type: String
    std::string_view secret = gm::wire::codec::readValue<std::string_view>(__br);

    // field: lobby_metadata_struct, type: AnyMap
    gm::wire::GMObjectView lobby_metadata_struct = gm::wire::codec::readValue<gm::wire::GMObjectView>(__br);

    // field: member_metadata_struct, type: AnyMap
    gm::wire::GMObjectView member_metadata_struct = gm::wire::codec::readValue<gm::wire::GMObjectView>(__br);

    // field: callback, type: Function
    gm::wire::GMFunction callback = gm::wire::codec::readFunction(__br, &__dispatch_queue);

    discord_social_client_create_or_join_lobby_with_metadata(secret, lobby_metadata_struct, member_metadata_struct, callback);
    return 0;
}

GMEXPORT double __EXT_NATIVE__discord_social_client_get_guild_channels(char* __arg_buffer, double __arg_buffer_length)
{
    gm::byteio::BufferReader __br{__arg_buffer, static_cast<size_t>(__arg_buffer_length)};

    // field: guild_id, type: UInt64
    std::uint64_t guild_id = gm::wire::codec::readValue<std::uint64_t>(__br);

    // field: callback, type: Function
    gm::wire::GMFunction callback = gm::wire::codec::readFunction(__br, &__dispatch_queue);

    discord_social_client_get_guild_channels(guild_id, callback);
    return 0;
}

GMEXPORT double __EXT_NATIVE__discord_social_client_get_lobby_handle(char* __arg_buffer, double __arg_buffer_length, char* __ret_buffer, double __ret_buffer_length)
{
    gm::byteio::BufferReader __br{__arg_buffer, static_cast<size_t>(__arg_buffer_length)};

    // field: lobby_id, type: UInt64
    std::uint64_t lobby_id = gm::wire::codec::readValue<std::uint64_t>(__br);

    auto&& __result = discord_social_client_get_lobby_handle(lobby_id);
    gm::byteio::BufferWriter __bw{__ret_buffer, static_cast<size_t>(__ret_buffer_length)};

    // return: __result, type: optional<struct DiscordLobbyHandle>
    gm::wire::codec::writeValue(__bw, __result);
    return 0;
}

GMEXPORT double __EXT_NATIVE__discord_social_client_get_lobby_ids(char* __ret_buffer, double __ret_buffer_length)
{
    auto&& __result = discord_social_client_get_lobby_ids();
    gm::byteio::BufferWriter __bw{__ret_buffer, static_cast<size_t>(__ret_buffer_length)};

    // return: __result, type: UInt64[]
    gm::wire::codec::writeValue(__bw, __result);
    return 0;
}

GMEXPORT double __EXT_NATIVE__discord_social_client_get_user_guilds(char* __arg_buffer, double __arg_buffer_length)
{
    gm::byteio::BufferReader __br{__arg_buffer, static_cast<size_t>(__arg_buffer_length)};

    // field: callback, type: Function
    gm::wire::GMFunction callback = gm::wire::codec::readFunction(__br, &__dispatch_queue);

    discord_social_client_get_user_guilds(callback);
    return 0;
}

GMEXPORT double __EXT_NATIVE__discord_social_client_leave_lobby(char* __arg_buffer, double __arg_buffer_length)
{
    gm::byteio::BufferReader __br{__arg_buffer, static_cast<size_t>(__arg_buffer_length)};

    // field: lobby_id, type: UInt64
    std::uint64_t lobby_id = gm::wire::codec::readValue<std::uint64_t>(__br);

    // field: callback, type: Function
    gm::wire::GMFunction callback = gm::wire::codec::readFunction(__br, &__dispatch_queue);

    discord_social_client_leave_lobby(lobby_id, callback);
    return 0;
}

GMEXPORT double __EXT_NATIVE__discord_social_client_link_channel_to_lobby(char* __arg_buffer, double __arg_buffer_length)
{
    gm::byteio::BufferReader __br{__arg_buffer, static_cast<size_t>(__arg_buffer_length)};

    // field: lobby_id, type: UInt64
    std::uint64_t lobby_id = gm::wire::codec::readValue<std::uint64_t>(__br);

    // field: channel_id, type: UInt64
    std::uint64_t channel_id = gm::wire::codec::readValue<std::uint64_t>(__br);

    // field: callback, type: Function
    gm::wire::GMFunction callback = gm::wire::codec::readFunction(__br, &__dispatch_queue);

    discord_social_client_link_channel_to_lobby(lobby_id, channel_id, callback);
    return 0;
}

GMEXPORT double __EXT_NATIVE__discord_social_client_set_lobby_created_callback(char* __arg_buffer, double __arg_buffer_length)
{
    gm::byteio::BufferReader __br{__arg_buffer, static_cast<size_t>(__arg_buffer_length)};

    // field: callback, type: Function
    gm::wire::GMFunction callback = gm::wire::codec::readFunction(__br, &__dispatch_queue);

    discord_social_client_set_lobby_created_callback(callback);
    return 0;
}

GMEXPORT double __EXT_NATIVE__discord_social_client_set_lobby_deleted_callback(char* __arg_buffer, double __arg_buffer_length)
{
    gm::byteio::BufferReader __br{__arg_buffer, static_cast<size_t>(__arg_buffer_length)};

    // field: callback, type: Function
    gm::wire::GMFunction callback = gm::wire::codec::readFunction(__br, &__dispatch_queue);

    discord_social_client_set_lobby_deleted_callback(callback);
    return 0;
}

GMEXPORT double __EXT_NATIVE__discord_social_client_set_lobby_member_added_callback(char* __arg_buffer, double __arg_buffer_length)
{
    gm::byteio::BufferReader __br{__arg_buffer, static_cast<size_t>(__arg_buffer_length)};

    // field: callback, type: Function
    gm::wire::GMFunction callback = gm::wire::codec::readFunction(__br, &__dispatch_queue);

    discord_social_client_set_lobby_member_added_callback(callback);
    return 0;
}

GMEXPORT double __EXT_NATIVE__discord_social_client_set_lobby_member_removed_callback(char* __arg_buffer, double __arg_buffer_length)
{
    gm::byteio::BufferReader __br{__arg_buffer, static_cast<size_t>(__arg_buffer_length)};

    // field: callback, type: Function
    gm::wire::GMFunction callback = gm::wire::codec::readFunction(__br, &__dispatch_queue);

    discord_social_client_set_lobby_member_removed_callback(callback);
    return 0;
}

GMEXPORT double __EXT_NATIVE__discord_social_client_set_lobby_member_updated_callback(char* __arg_buffer, double __arg_buffer_length)
{
    gm::byteio::BufferReader __br{__arg_buffer, static_cast<size_t>(__arg_buffer_length)};

    // field: callback, type: Function
    gm::wire::GMFunction callback = gm::wire::codec::readFunction(__br, &__dispatch_queue);

    discord_social_client_set_lobby_member_updated_callback(callback);
    return 0;
}

GMEXPORT double __EXT_NATIVE__discord_social_client_set_lobby_updated_callback(char* __arg_buffer, double __arg_buffer_length)
{
    gm::byteio::BufferReader __br{__arg_buffer, static_cast<size_t>(__arg_buffer_length)};

    // field: callback, type: Function
    gm::wire::GMFunction callback = gm::wire::codec::readFunction(__br, &__dispatch_queue);

    discord_social_client_set_lobby_updated_callback(callback);
    return 0;
}

GMEXPORT double __EXT_NATIVE__discord_social_client_unlink_channel_from_lobby(char* __arg_buffer, double __arg_buffer_length)
{
    gm::byteio::BufferReader __br{__arg_buffer, static_cast<size_t>(__arg_buffer_length)};

    // field: lobby_id, type: UInt64
    std::uint64_t lobby_id = gm::wire::codec::readValue<std::uint64_t>(__br);

    // field: callback, type: Function
    gm::wire::GMFunction callback = gm::wire::codec::readFunction(__br, &__dispatch_queue);

    discord_social_client_unlink_channel_from_lobby(lobby_id, callback);
    return 0;
}

GMEXPORT double __EXT_NATIVE__discord_social_client_join_linked_lobby_guild(char* __arg_buffer, double __arg_buffer_length)
{
    gm::byteio::BufferReader __br{__arg_buffer, static_cast<size_t>(__arg_buffer_length)};

    // field: lobby_id, type: UInt64
    std::uint64_t lobby_id = gm::wire::codec::readValue<std::uint64_t>(__br);

    // field: provisional_user_merge_required_callback, type: Function
    gm::wire::GMFunction provisional_user_merge_required_callback = gm::wire::codec::readFunction(__br, &__dispatch_queue);

    // field: callback, type: Function
    gm::wire::GMFunction callback = gm::wire::codec::readFunction(__br, &__dispatch_queue);

    discord_social_client_join_linked_lobby_guild(lobby_id, provisional_user_merge_required_callback, callback);
    return 0;
}

GMEXPORT double __EXT_NATIVE__discord_social_client_accept_activity_invite(char* __arg_buffer, double __arg_buffer_length)
{
    gm::byteio::BufferReader __br{__arg_buffer, static_cast<size_t>(__arg_buffer_length)};

    // field: activity_invite, type: struct DiscordActivityInvite
    gm_structs::DiscordActivityInvite activity_invite = gm::wire::codec::readValue<gm_structs::DiscordActivityInvite>(__br);

    // field: callback, type: Function
    gm::wire::GMFunction callback = gm::wire::codec::readFunction(__br, &__dispatch_queue);

    discord_social_client_accept_activity_invite(activity_invite, callback);
    return 0;
}

GMEXPORT double __EXT_NATIVE__discord_social_client_clear_rich_presence()
{
    discord_social_client_clear_rich_presence();
    return 0;
}

GMEXPORT double __EXT_NATIVE__discord_social_client_register_launch_command(char* __arg_buffer, double __arg_buffer_length)
{
    gm::byteio::BufferReader __br{__arg_buffer, static_cast<size_t>(__arg_buffer_length)};

    // field: application_id, type: UInt64
    std::uint64_t application_id = gm::wire::codec::readValue<std::uint64_t>(__br);

    // field: command, type: String
    std::string_view command = gm::wire::codec::readValue<std::string_view>(__br);

    auto&& __result = discord_social_client_register_launch_command(application_id, command);
    return static_cast<double>(__result);
}

GMEXPORT double __EXT_NATIVE__discord_social_client_register_launch_steam_application(char* __arg_buffer, double __arg_buffer_length)
{
    gm::byteio::BufferReader __br{__arg_buffer, static_cast<size_t>(__arg_buffer_length)};

    // field: application_id, type: UInt64
    std::uint64_t application_id = gm::wire::codec::readValue<std::uint64_t>(__br);

    // field: steam_app_id, type: UInt32
    std::uint32_t steam_app_id = gm::wire::codec::readValue<std::uint32_t>(__br);

    auto&& __result = discord_social_client_register_launch_steam_application(application_id, steam_app_id);
    return static_cast<double>(__result);
}

GMEXPORT double __EXT_NATIVE__discord_social_client_send_activity_invite(char* __arg_buffer, double __arg_buffer_length)
{
    gm::byteio::BufferReader __br{__arg_buffer, static_cast<size_t>(__arg_buffer_length)};

    // field: user_id, type: UInt64
    std::uint64_t user_id = gm::wire::codec::readValue<std::uint64_t>(__br);

    // field: content, type: String
    std::string_view content = gm::wire::codec::readValue<std::string_view>(__br);

    // field: callback, type: Function
    gm::wire::GMFunction callback = gm::wire::codec::readFunction(__br, &__dispatch_queue);

    discord_social_client_send_activity_invite(user_id, content, callback);
    return 0;
}

GMEXPORT double __EXT_NATIVE__discord_social_client_send_activity_join_request(char* __arg_buffer, double __arg_buffer_length)
{
    gm::byteio::BufferReader __br{__arg_buffer, static_cast<size_t>(__arg_buffer_length)};

    // field: user_id, type: UInt64
    std::uint64_t user_id = gm::wire::codec::readValue<std::uint64_t>(__br);

    // field: callback, type: Function
    gm::wire::GMFunction callback = gm::wire::codec::readFunction(__br, &__dispatch_queue);

    discord_social_client_send_activity_join_request(user_id, callback);
    return 0;
}

GMEXPORT double __EXT_NATIVE__discord_social_client_send_activity_join_request_reply(char* __arg_buffer, double __arg_buffer_length)
{
    gm::byteio::BufferReader __br{__arg_buffer, static_cast<size_t>(__arg_buffer_length)};

    // field: activity_invite, type: struct DiscordActivityInvite
    gm_structs::DiscordActivityInvite activity_invite = gm::wire::codec::readValue<gm_structs::DiscordActivityInvite>(__br);

    // field: callback, type: Function
    gm::wire::GMFunction callback = gm::wire::codec::readFunction(__br, &__dispatch_queue);

    discord_social_client_send_activity_join_request_reply(activity_invite, callback);
    return 0;
}

GMEXPORT double __EXT_NATIVE__discord_social_client_set_activity_invite_created_callback(char* __arg_buffer, double __arg_buffer_length)
{
    gm::byteio::BufferReader __br{__arg_buffer, static_cast<size_t>(__arg_buffer_length)};

    // field: callback, type: Function
    gm::wire::GMFunction callback = gm::wire::codec::readFunction(__br, &__dispatch_queue);

    discord_social_client_set_activity_invite_created_callback(callback);
    return 0;
}

GMEXPORT double __EXT_NATIVE__discord_social_client_set_activity_invite_updated_callback(char* __arg_buffer, double __arg_buffer_length)
{
    gm::byteio::BufferReader __br{__arg_buffer, static_cast<size_t>(__arg_buffer_length)};

    // field: callback, type: Function
    gm::wire::GMFunction callback = gm::wire::codec::readFunction(__br, &__dispatch_queue);

    discord_social_client_set_activity_invite_updated_callback(callback);
    return 0;
}

GMEXPORT double __EXT_NATIVE__discord_social_client_set_activity_join_callback(char* __arg_buffer, double __arg_buffer_length)
{
    gm::byteio::BufferReader __br{__arg_buffer, static_cast<size_t>(__arg_buffer_length)};

    // field: callback, type: Function
    gm::wire::GMFunction callback = gm::wire::codec::readFunction(__br, &__dispatch_queue);

    discord_social_client_set_activity_join_callback(callback);
    return 0;
}

GMEXPORT double __EXT_NATIVE__discord_social_client_set_activity_join_with_application_callback(char* __arg_buffer, double __arg_buffer_length)
{
    gm::byteio::BufferReader __br{__arg_buffer, static_cast<size_t>(__arg_buffer_length)};

    // field: callback, type: Function
    gm::wire::GMFunction callback = gm::wire::codec::readFunction(__br, &__dispatch_queue);

    discord_social_client_set_activity_join_with_application_callback(callback);
    return 0;
}

GMEXPORT double __EXT_NATIVE__discord_social_client_set_online_status(char* __arg_buffer, double __arg_buffer_length)
{
    gm::byteio::BufferReader __br{__arg_buffer, static_cast<size_t>(__arg_buffer_length)};

    // field: status, type: enum DiscordClientStatus
    gm_enums::DiscordClientStatus status = gm::wire::codec::readValue<gm_enums::DiscordClientStatus>(__br);

    // field: callback, type: Function
    gm::wire::GMFunction callback = gm::wire::codec::readFunction(__br, &__dispatch_queue);

    discord_social_client_set_online_status(status, callback);
    return 0;
}

GMEXPORT double __EXT_NATIVE__discord_social_client_update_rich_presence(char* __arg_buffer, double __arg_buffer_length)
{
    gm::byteio::BufferReader __br{__arg_buffer, static_cast<size_t>(__arg_buffer_length)};

    // field: activity, type: struct DiscordActivity
    gm_structs::DiscordActivity activity = gm::wire::codec::readValue<gm_structs::DiscordActivity>(__br);

    // field: callback, type: Function
    gm::wire::GMFunction callback = gm::wire::codec::readFunction(__br, &__dispatch_queue);

    discord_social_client_update_rich_presence(activity, callback);
    return 0;
}

GMEXPORT double __EXT_NATIVE__discord_social_client_accept_discord_friend_request(char* __arg_buffer, double __arg_buffer_length)
{
    gm::byteio::BufferReader __br{__arg_buffer, static_cast<size_t>(__arg_buffer_length)};

    // field: user_id, type: UInt64
    std::uint64_t user_id = gm::wire::codec::readValue<std::uint64_t>(__br);

    // field: callback, type: Function
    gm::wire::GMFunction callback = gm::wire::codec::readFunction(__br, &__dispatch_queue);

    discord_social_client_accept_discord_friend_request(user_id, callback);
    return 0;
}

GMEXPORT double __EXT_NATIVE__discord_social_client_accept_game_friend_request(char* __arg_buffer, double __arg_buffer_length)
{
    gm::byteio::BufferReader __br{__arg_buffer, static_cast<size_t>(__arg_buffer_length)};

    // field: user_id, type: UInt64
    std::uint64_t user_id = gm::wire::codec::readValue<std::uint64_t>(__br);

    // field: callback, type: Function
    gm::wire::GMFunction callback = gm::wire::codec::readFunction(__br, &__dispatch_queue);

    discord_social_client_accept_game_friend_request(user_id, callback);
    return 0;
}

GMEXPORT double __EXT_NATIVE__discord_social_client_block_user(char* __arg_buffer, double __arg_buffer_length)
{
    gm::byteio::BufferReader __br{__arg_buffer, static_cast<size_t>(__arg_buffer_length)};

    // field: user_id, type: UInt64
    std::uint64_t user_id = gm::wire::codec::readValue<std::uint64_t>(__br);

    // field: callback, type: Function
    gm::wire::GMFunction callback = gm::wire::codec::readFunction(__br, &__dispatch_queue);

    discord_social_client_block_user(user_id, callback);
    return 0;
}

GMEXPORT double __EXT_NATIVE__discord_social_client_cancel_discord_friend_request(char* __arg_buffer, double __arg_buffer_length)
{
    gm::byteio::BufferReader __br{__arg_buffer, static_cast<size_t>(__arg_buffer_length)};

    // field: user_id, type: UInt64
    std::uint64_t user_id = gm::wire::codec::readValue<std::uint64_t>(__br);

    // field: callback, type: Function
    gm::wire::GMFunction callback = gm::wire::codec::readFunction(__br, &__dispatch_queue);

    discord_social_client_cancel_discord_friend_request(user_id, callback);
    return 0;
}

GMEXPORT double __EXT_NATIVE__discord_social_client_cancel_game_friend_request(char* __arg_buffer, double __arg_buffer_length)
{
    gm::byteio::BufferReader __br{__arg_buffer, static_cast<size_t>(__arg_buffer_length)};

    // field: user_id, type: UInt64
    std::uint64_t user_id = gm::wire::codec::readValue<std::uint64_t>(__br);

    // field: callback, type: Function
    gm::wire::GMFunction callback = gm::wire::codec::readFunction(__br, &__dispatch_queue);

    discord_social_client_cancel_game_friend_request(user_id, callback);
    return 0;
}

GMEXPORT double __EXT_NATIVE__discord_social_client_get_relationship_handle(char* __arg_buffer, double __arg_buffer_length, char* __ret_buffer, double __ret_buffer_length)
{
    gm::byteio::BufferReader __br{__arg_buffer, static_cast<size_t>(__arg_buffer_length)};

    // field: user_id, type: UInt64
    std::uint64_t user_id = gm::wire::codec::readValue<std::uint64_t>(__br);

    auto&& __result = discord_social_client_get_relationship_handle(user_id);
    gm::byteio::BufferWriter __bw{__ret_buffer, static_cast<size_t>(__ret_buffer_length)};

    // return: __result, type: struct DiscordRelationshipHandle
    gm::wire::codec::writeValue(__bw, __result);
    return 0;
}

GMEXPORT double __EXT_NATIVE__discord_social_client_get_relationships(char* __ret_buffer, double __ret_buffer_length)
{
    auto&& __result = discord_social_client_get_relationships();
    gm::byteio::BufferWriter __bw{__ret_buffer, static_cast<size_t>(__ret_buffer_length)};

    // return: __result, type: struct DiscordRelationshipHandle[]
    gm::wire::codec::writeValue(__bw, __result);
    return 0;
}

GMEXPORT double __EXT_NATIVE__discord_social_client_get_relationships_by_group(char* __arg_buffer, double __arg_buffer_length, char* __ret_buffer, double __ret_buffer_length)
{
    gm::byteio::BufferReader __br{__arg_buffer, static_cast<size_t>(__arg_buffer_length)};

    // field: group_type, type: enum DiscordRelationshipGroupType
    gm_enums::DiscordRelationshipGroupType group_type = gm::wire::codec::readValue<gm_enums::DiscordRelationshipGroupType>(__br);

    auto&& __result = discord_social_client_get_relationships_by_group(group_type);
    gm::byteio::BufferWriter __bw{__ret_buffer, static_cast<size_t>(__ret_buffer_length)};

    // return: __result, type: struct DiscordRelationshipHandle[]
    gm::wire::codec::writeValue(__bw, __result);
    return 0;
}

GMEXPORT double __EXT_NATIVE__discord_social_client_reject_discord_friend_request(char* __arg_buffer, double __arg_buffer_length)
{
    gm::byteio::BufferReader __br{__arg_buffer, static_cast<size_t>(__arg_buffer_length)};

    // field: user_id, type: UInt64
    std::uint64_t user_id = gm::wire::codec::readValue<std::uint64_t>(__br);

    // field: callback, type: Function
    gm::wire::GMFunction callback = gm::wire::codec::readFunction(__br, &__dispatch_queue);

    discord_social_client_reject_discord_friend_request(user_id, callback);
    return 0;
}

GMEXPORT double __EXT_NATIVE__discord_social_client_reject_game_friend_request(char* __arg_buffer, double __arg_buffer_length)
{
    gm::byteio::BufferReader __br{__arg_buffer, static_cast<size_t>(__arg_buffer_length)};

    // field: user_id, type: UInt64
    std::uint64_t user_id = gm::wire::codec::readValue<std::uint64_t>(__br);

    // field: callback, type: Function
    gm::wire::GMFunction callback = gm::wire::codec::readFunction(__br, &__dispatch_queue);

    discord_social_client_reject_game_friend_request(user_id, callback);
    return 0;
}

GMEXPORT double __EXT_NATIVE__discord_social_client_remove_discord_and_game_friend(char* __arg_buffer, double __arg_buffer_length)
{
    gm::byteio::BufferReader __br{__arg_buffer, static_cast<size_t>(__arg_buffer_length)};

    // field: user_id, type: UInt64
    std::uint64_t user_id = gm::wire::codec::readValue<std::uint64_t>(__br);

    // field: callback, type: Function
    gm::wire::GMFunction callback = gm::wire::codec::readFunction(__br, &__dispatch_queue);

    discord_social_client_remove_discord_and_game_friend(user_id, callback);
    return 0;
}

GMEXPORT double __EXT_NATIVE__discord_social_client_remove_game_friend(char* __arg_buffer, double __arg_buffer_length)
{
    gm::byteio::BufferReader __br{__arg_buffer, static_cast<size_t>(__arg_buffer_length)};

    // field: user_id, type: UInt64
    std::uint64_t user_id = gm::wire::codec::readValue<std::uint64_t>(__br);

    // field: callback, type: Function
    gm::wire::GMFunction callback = gm::wire::codec::readFunction(__br, &__dispatch_queue);

    discord_social_client_remove_game_friend(user_id, callback);
    return 0;
}

GMEXPORT double __EXT_NATIVE__discord_social_client_search_friends_by_username(char* search_str, char* __ret_buffer, double __ret_buffer_length)
{
    auto&& __result = discord_social_client_search_friends_by_username(search_str);
    gm::byteio::BufferWriter __bw{__ret_buffer, static_cast<size_t>(__ret_buffer_length)};

    // return: __result, type: struct DiscordUserHandle[]
    gm::wire::codec::writeValue(__bw, __result);
    return 0;
}

GMEXPORT double __EXT_NATIVE__discord_social_client_send_discord_friend_request(char* __arg_buffer, double __arg_buffer_length)
{
    gm::byteio::BufferReader __br{__arg_buffer, static_cast<size_t>(__arg_buffer_length)};

    // field: username, type: String
    std::string_view username = gm::wire::codec::readValue<std::string_view>(__br);

    // field: callback, type: Function
    gm::wire::GMFunction callback = gm::wire::codec::readFunction(__br, &__dispatch_queue);

    discord_social_client_send_discord_friend_request(username, callback);
    return 0;
}

GMEXPORT double __EXT_NATIVE__discord_social_client_send_discord_friend_request_by_id(char* __arg_buffer, double __arg_buffer_length)
{
    gm::byteio::BufferReader __br{__arg_buffer, static_cast<size_t>(__arg_buffer_length)};

    // field: user_id, type: UInt64
    std::uint64_t user_id = gm::wire::codec::readValue<std::uint64_t>(__br);

    // field: callback, type: Function
    gm::wire::GMFunction callback = gm::wire::codec::readFunction(__br, &__dispatch_queue);

    discord_social_client_send_discord_friend_request_by_id(user_id, callback);
    return 0;
}

GMEXPORT double __EXT_NATIVE__discord_social_client_send_game_friend_request(char* __arg_buffer, double __arg_buffer_length)
{
    gm::byteio::BufferReader __br{__arg_buffer, static_cast<size_t>(__arg_buffer_length)};

    // field: username, type: String
    std::string_view username = gm::wire::codec::readValue<std::string_view>(__br);

    // field: callback, type: Function
    gm::wire::GMFunction callback = gm::wire::codec::readFunction(__br, &__dispatch_queue);

    discord_social_client_send_game_friend_request(username, callback);
    return 0;
}

GMEXPORT double __EXT_NATIVE__discord_social_client_send_game_friend_request_by_id(char* __arg_buffer, double __arg_buffer_length)
{
    gm::byteio::BufferReader __br{__arg_buffer, static_cast<size_t>(__arg_buffer_length)};

    // field: user_id, type: UInt64
    std::uint64_t user_id = gm::wire::codec::readValue<std::uint64_t>(__br);

    // field: callback, type: Function
    gm::wire::GMFunction callback = gm::wire::codec::readFunction(__br, &__dispatch_queue);

    discord_social_client_send_game_friend_request_by_id(user_id, callback);
    return 0;
}

GMEXPORT double __EXT_NATIVE__discord_social_client_set_relationship_created_callback(char* __arg_buffer, double __arg_buffer_length)
{
    gm::byteio::BufferReader __br{__arg_buffer, static_cast<size_t>(__arg_buffer_length)};

    // field: callback, type: Function
    gm::wire::GMFunction callback = gm::wire::codec::readFunction(__br, &__dispatch_queue);

    discord_social_client_set_relationship_created_callback(callback);
    return 0;
}

GMEXPORT double __EXT_NATIVE__discord_social_client_set_relationship_deleted_callback(char* __arg_buffer, double __arg_buffer_length)
{
    gm::byteio::BufferReader __br{__arg_buffer, static_cast<size_t>(__arg_buffer_length)};

    // field: callback, type: Function
    gm::wire::GMFunction callback = gm::wire::codec::readFunction(__br, &__dispatch_queue);

    discord_social_client_set_relationship_deleted_callback(callback);
    return 0;
}

GMEXPORT double __EXT_NATIVE__discord_social_client_set_relationship_groups_updated_callback(char* __arg_buffer, double __arg_buffer_length)
{
    gm::byteio::BufferReader __br{__arg_buffer, static_cast<size_t>(__arg_buffer_length)};

    // field: callback, type: Function
    gm::wire::GMFunction callback = gm::wire::codec::readFunction(__br, &__dispatch_queue);

    discord_social_client_set_relationship_groups_updated_callback(callback);
    return 0;
}

GMEXPORT double __EXT_NATIVE__discord_social_client_unblock_user(char* __arg_buffer, double __arg_buffer_length)
{
    gm::byteio::BufferReader __br{__arg_buffer, static_cast<size_t>(__arg_buffer_length)};

    // field: user_id, type: UInt64
    std::uint64_t user_id = gm::wire::codec::readValue<std::uint64_t>(__br);

    // field: callback, type: Function
    gm::wire::GMFunction callback = gm::wire::codec::readFunction(__br, &__dispatch_queue);

    discord_social_client_unblock_user(user_id, callback);
    return 0;
}

GMEXPORT double __EXT_NATIVE__discord_social_client_get_current_user(char* __ret_buffer, double __ret_buffer_length)
{
    auto&& __result = discord_social_client_get_current_user();
    gm::byteio::BufferWriter __bw{__ret_buffer, static_cast<size_t>(__ret_buffer_length)};

    // return: __result, type: optional<struct DiscordUserHandle>
    gm::wire::codec::writeValue(__bw, __result);
    return 0;
}

GMEXPORT double __EXT_NATIVE__discord_social_client_get_discord_client_connected_user(char* __arg_buffer, double __arg_buffer_length)
{
    gm::byteio::BufferReader __br{__arg_buffer, static_cast<size_t>(__arg_buffer_length)};

    // field: application_id, type: UInt64
    std::uint64_t application_id = gm::wire::codec::readValue<std::uint64_t>(__br);

    // field: callback, type: Function
    gm::wire::GMFunction callback = gm::wire::codec::readFunction(__br, &__dispatch_queue);

    discord_social_client_get_discord_client_connected_user(application_id, callback);
    return 0;
}

GMEXPORT double __EXT_NATIVE__discord_social_client_get_user(char* __arg_buffer, double __arg_buffer_length, char* __ret_buffer, double __ret_buffer_length)
{
    gm::byteio::BufferReader __br{__arg_buffer, static_cast<size_t>(__arg_buffer_length)};

    // field: user_id, type: UInt64
    std::uint64_t user_id = gm::wire::codec::readValue<std::uint64_t>(__br);

    auto&& __result = discord_social_client_get_user(user_id);
    gm::byteio::BufferWriter __bw{__ret_buffer, static_cast<size_t>(__ret_buffer_length)};

    // return: __result, type: optional<struct DiscordUserHandle>
    gm::wire::codec::writeValue(__bw, __result);
    return 0;
}

GMEXPORT double __EXT_NATIVE__discord_social_client_set_user_updated_callback(char* __arg_buffer, double __arg_buffer_length)
{
    gm::byteio::BufferReader __br{__arg_buffer, static_cast<size_t>(__arg_buffer_length)};

    // field: callback, type: Function
    gm::wire::GMFunction callback = gm::wire::codec::readFunction(__br, &__dispatch_queue);

    discord_social_client_set_user_updated_callback(callback);
    return 0;
}

GMEXPORT char* __EXT_NATIVE__discord_social_client_error_to_string(char* __arg_buffer, double __arg_buffer_length)
{
    gm::byteio::BufferReader __br{__arg_buffer, static_cast<size_t>(__arg_buffer_length)};

    // field: error, type: enum DiscordClientError
    gm_enums::DiscordClientError error = gm::wire::codec::readValue<gm_enums::DiscordClientError>(__br);

    static std::string __result;
    __result = discord_social_client_error_to_string(error);
    return (char*)__result.c_str();
}

GMEXPORT char* __EXT_NATIVE__discord_social_client_get_default_audio_device_id()
{
    static std::string __result;
    __result = discord_social_client_get_default_audio_device_id();
    return (char*)__result.c_str();
}

GMEXPORT char* __EXT_NATIVE__discord_social_client_get_default_communication_scopes()
{
    static std::string __result;
    __result = discord_social_client_get_default_communication_scopes();
    return (char*)__result.c_str();
}

GMEXPORT char* __EXT_NATIVE__discord_social_client_get_default_presence_scopes()
{
    static std::string __result;
    __result = discord_social_client_get_default_presence_scopes();
    return (char*)__result.c_str();
}

GMEXPORT char* __EXT_NATIVE__discord_social_client_get_version_hash()
{
    static std::string __result;
    __result = discord_social_client_get_version_hash();
    return (char*)__result.c_str();
}

GMEXPORT double __EXT_NATIVE__discord_social_client_get_version_major()
{
    auto&& __result = discord_social_client_get_version_major();
    return static_cast<double>(__result);
}

GMEXPORT double __EXT_NATIVE__discord_social_client_get_version_minor()
{
    auto&& __result = discord_social_client_get_version_minor();
    return static_cast<double>(__result);
}

GMEXPORT double __EXT_NATIVE__discord_social_client_get_version_patch()
{
    auto&& __result = discord_social_client_get_version_patch();
    return static_cast<double>(__result);
}

GMEXPORT double __EXT_NATIVE__discord_social_client_get_application_id(char* __ret_buffer, double __ret_buffer_length)
{
    auto&& __result = discord_social_client_get_application_id();
    gm::byteio::BufferWriter __bw{__ret_buffer, static_cast<size_t>(__ret_buffer_length)};

    // return: __result, type: UInt64
    gm::wire::codec::writeValue(__bw, __result);
    return 0;
}

GMEXPORT double __EXT_NATIVE__discord_social_client_set_application_id(char* __arg_buffer, double __arg_buffer_length)
{
    gm::byteio::BufferReader __br{__arg_buffer, static_cast<size_t>(__arg_buffer_length)};

    // field: application_id, type: UInt64
    std::uint64_t application_id = gm::wire::codec::readValue<std::uint64_t>(__br);

    discord_social_client_set_application_id(application_id);
    return 0;
}

GMEXPORT double __EXT_NATIVE__discord_social_client_is_discord_app_installed(char* __arg_buffer, double __arg_buffer_length)
{
    gm::byteio::BufferReader __br{__arg_buffer, static_cast<size_t>(__arg_buffer_length)};

    // field: callback, type: Function
    gm::wire::GMFunction callback = gm::wire::codec::readFunction(__br, &__dispatch_queue);

    discord_social_client_is_discord_app_installed(callback);
    return 0;
}

GMEXPORT double __EXT_NATIVE__discord_social_client_open_connected_games_settings_in_discord(char* __arg_buffer, double __arg_buffer_length)
{
    gm::byteio::BufferReader __br{__arg_buffer, static_cast<size_t>(__arg_buffer_length)};

    // field: callback, type: Function
    gm::wire::GMFunction callback = gm::wire::codec::readFunction(__br, &__dispatch_queue);

    discord_social_client_open_connected_games_settings_in_discord(callback);
    return 0;
}

GMEXPORT char* __EXT_NATIVE__discord_social_client_status_to_string(char* __arg_buffer, double __arg_buffer_length)
{
    gm::byteio::BufferReader __br{__arg_buffer, static_cast<size_t>(__arg_buffer_length)};

    // field: status, type: enum DiscordClientStatus
    gm_enums::DiscordClientStatus status = gm::wire::codec::readValue<gm_enums::DiscordClientStatus>(__br);

    static std::string __result;
    __result = discord_social_client_status_to_string(status);
    return (char*)__result.c_str();
}

GMEXPORT char* __EXT_NATIVE__discord_social_client_thread_to_string(char* __arg_buffer, double __arg_buffer_length)
{
    gm::byteio::BufferReader __br{__arg_buffer, static_cast<size_t>(__arg_buffer_length)};

    // field: thread, type: enum DiscordClientThread
    gm_enums::DiscordClientThread thread = gm::wire::codec::readValue<gm_enums::DiscordClientThread>(__br);

    static std::string __result;
    __result = discord_social_client_thread_to_string(thread);
    return (char*)__result.c_str();
}

GMEXPORT double __EXT_NATIVE__discord_social_call_get_local_mute(char* __arg_buffer, double __arg_buffer_length)
{
    gm::byteio::BufferReader __br{__arg_buffer, static_cast<size_t>(__arg_buffer_length)};

    // field: channel_id, type: UInt64
    std::uint64_t channel_id = gm::wire::codec::readValue<std::uint64_t>(__br);

    // field: user_id, type: UInt64
    std::uint64_t user_id = gm::wire::codec::readValue<std::uint64_t>(__br);

    auto&& __result = discord_social_call_get_local_mute(channel_id, user_id);
    return static_cast<double>(__result);
}

GMEXPORT double __EXT_NATIVE__discord_social_call_get_participant_volume(char* __arg_buffer, double __arg_buffer_length)
{
    gm::byteio::BufferReader __br{__arg_buffer, static_cast<size_t>(__arg_buffer_length)};

    // field: channel_id, type: UInt64
    std::uint64_t channel_id = gm::wire::codec::readValue<std::uint64_t>(__br);

    // field: user_id, type: UInt64
    std::uint64_t user_id = gm::wire::codec::readValue<std::uint64_t>(__br);

    auto&& __result = discord_social_call_get_participant_volume(channel_id, user_id);
    return static_cast<double>(__result);
}

GMEXPORT double __EXT_NATIVE__discord_social_call_get_ptt_release_delay(char* __arg_buffer, double __arg_buffer_length)
{
    gm::byteio::BufferReader __br{__arg_buffer, static_cast<size_t>(__arg_buffer_length)};

    // field: channel_id, type: UInt64
    std::uint64_t channel_id = gm::wire::codec::readValue<std::uint64_t>(__br);

    auto&& __result = discord_social_call_get_ptt_release_delay(channel_id);
    return static_cast<double>(__result);
}

GMEXPORT double __EXT_NATIVE__discord_social_call_get_vad_threshold(char* __arg_buffer, double __arg_buffer_length, char* __ret_buffer, double __ret_buffer_length)
{
    gm::byteio::BufferReader __br{__arg_buffer, static_cast<size_t>(__arg_buffer_length)};

    // field: channel_id, type: UInt64
    std::uint64_t channel_id = gm::wire::codec::readValue<std::uint64_t>(__br);

    auto&& __result = discord_social_call_get_vad_threshold(channel_id);
    gm::byteio::BufferWriter __bw{__ret_buffer, static_cast<size_t>(__ret_buffer_length)};

    // return: __result, type: struct DiscordVADThresholdSettings
    gm::wire::codec::writeValue(__bw, __result);
    return 0;
}

GMEXPORT double __EXT_NATIVE__discord_social_call_get_voice_state_handle(char* __arg_buffer, double __arg_buffer_length, char* __ret_buffer, double __ret_buffer_length)
{
    gm::byteio::BufferReader __br{__arg_buffer, static_cast<size_t>(__arg_buffer_length)};

    // field: channel_id, type: UInt64
    std::uint64_t channel_id = gm::wire::codec::readValue<std::uint64_t>(__br);

    // field: user_id, type: UInt64
    std::uint64_t user_id = gm::wire::codec::readValue<std::uint64_t>(__br);

    auto&& __result = discord_social_call_get_voice_state_handle(channel_id, user_id);
    gm::byteio::BufferWriter __bw{__ret_buffer, static_cast<size_t>(__ret_buffer_length)};

    // return: __result, type: struct DiscordVoiceStateHandle
    gm::wire::codec::writeValue(__bw, __result);
    return 0;
}

GMEXPORT double __EXT_NATIVE__discord_social_call_set_audio_mode(char* __arg_buffer, double __arg_buffer_length)
{
    gm::byteio::BufferReader __br{__arg_buffer, static_cast<size_t>(__arg_buffer_length)};

    // field: channel_id, type: UInt64
    std::uint64_t channel_id = gm::wire::codec::readValue<std::uint64_t>(__br);

    // field: audio_mode, type: enum DiscordAudioModeType
    gm_enums::DiscordAudioModeType audio_mode = gm::wire::codec::readValue<gm_enums::DiscordAudioModeType>(__br);

    auto&& __result = discord_social_call_set_audio_mode(channel_id, audio_mode);
    return static_cast<double>(__result);
}

GMEXPORT double __EXT_NATIVE__discord_social_call_set_local_mute(char* __arg_buffer, double __arg_buffer_length)
{
    gm::byteio::BufferReader __br{__arg_buffer, static_cast<size_t>(__arg_buffer_length)};

    // field: channel_id, type: UInt64
    std::uint64_t channel_id = gm::wire::codec::readValue<std::uint64_t>(__br);

    // field: user_id, type: UInt64
    std::uint64_t user_id = gm::wire::codec::readValue<std::uint64_t>(__br);

    // field: mute, type: Bool
    bool mute = gm::wire::codec::readValue<bool>(__br);

    auto&& __result = discord_social_call_set_local_mute(channel_id, user_id, mute);
    return static_cast<double>(__result);
}

GMEXPORT double __EXT_NATIVE__discord_social_call_set_on_voice_state_changed_callback(char* __arg_buffer, double __arg_buffer_length)
{
    gm::byteio::BufferReader __br{__arg_buffer, static_cast<size_t>(__arg_buffer_length)};

    // field: channel_id, type: UInt64
    std::uint64_t channel_id = gm::wire::codec::readValue<std::uint64_t>(__br);

    // field: callback, type: Function
    gm::wire::GMFunction callback = gm::wire::codec::readFunction(__br, &__dispatch_queue);

    auto&& __result = discord_social_call_set_on_voice_state_changed_callback(channel_id, callback);
    return static_cast<double>(__result);
}

GMEXPORT double __EXT_NATIVE__discord_social_call_set_participant_changed_callback(char* __arg_buffer, double __arg_buffer_length)
{
    gm::byteio::BufferReader __br{__arg_buffer, static_cast<size_t>(__arg_buffer_length)};

    // field: channel_id, type: UInt64
    std::uint64_t channel_id = gm::wire::codec::readValue<std::uint64_t>(__br);

    // field: callback, type: Function
    gm::wire::GMFunction callback = gm::wire::codec::readFunction(__br, &__dispatch_queue);

    auto&& __result = discord_social_call_set_participant_changed_callback(channel_id, callback);
    return static_cast<double>(__result);
}

GMEXPORT double __EXT_NATIVE__discord_social_call_set_participant_volume(char* __arg_buffer, double __arg_buffer_length)
{
    gm::byteio::BufferReader __br{__arg_buffer, static_cast<size_t>(__arg_buffer_length)};

    // field: channel_id, type: UInt64
    std::uint64_t channel_id = gm::wire::codec::readValue<std::uint64_t>(__br);

    // field: user_id, type: UInt64
    std::uint64_t user_id = gm::wire::codec::readValue<std::uint64_t>(__br);

    // field: vol, type: Float32
    float vol = gm::wire::codec::readValue<float>(__br);

    auto&& __result = discord_social_call_set_participant_volume(channel_id, user_id, vol);
    return static_cast<double>(__result);
}

GMEXPORT double __EXT_NATIVE__discord_social_call_set_ptt_active(char* __arg_buffer, double __arg_buffer_length)
{
    gm::byteio::BufferReader __br{__arg_buffer, static_cast<size_t>(__arg_buffer_length)};

    // field: channel_id, type: UInt64
    std::uint64_t channel_id = gm::wire::codec::readValue<std::uint64_t>(__br);

    // field: active, type: Bool
    bool active = gm::wire::codec::readValue<bool>(__br);

    auto&& __result = discord_social_call_set_ptt_active(channel_id, active);
    return static_cast<double>(__result);
}

GMEXPORT double __EXT_NATIVE__discord_social_call_set_ptt_release_delay(char* __arg_buffer, double __arg_buffer_length)
{
    gm::byteio::BufferReader __br{__arg_buffer, static_cast<size_t>(__arg_buffer_length)};

    // field: channel_id, type: UInt64
    std::uint64_t channel_id = gm::wire::codec::readValue<std::uint64_t>(__br);

    // field: release_delay_ms, type: UInt32
    std::uint32_t release_delay_ms = gm::wire::codec::readValue<std::uint32_t>(__br);

    auto&& __result = discord_social_call_set_ptt_release_delay(channel_id, release_delay_ms);
    return static_cast<double>(__result);
}

GMEXPORT double __EXT_NATIVE__discord_social_call_set_self_deaf(char* __arg_buffer, double __arg_buffer_length)
{
    gm::byteio::BufferReader __br{__arg_buffer, static_cast<size_t>(__arg_buffer_length)};

    // field: channel_id, type: UInt64
    std::uint64_t channel_id = gm::wire::codec::readValue<std::uint64_t>(__br);

    // field: deaf, type: Bool
    bool deaf = gm::wire::codec::readValue<bool>(__br);

    auto&& __result = discord_social_call_set_self_deaf(channel_id, deaf);
    return static_cast<double>(__result);
}

GMEXPORT double __EXT_NATIVE__discord_social_call_set_self_mute(char* __arg_buffer, double __arg_buffer_length)
{
    gm::byteio::BufferReader __br{__arg_buffer, static_cast<size_t>(__arg_buffer_length)};

    // field: channel_id, type: UInt64
    std::uint64_t channel_id = gm::wire::codec::readValue<std::uint64_t>(__br);

    // field: mute, type: Bool
    bool mute = gm::wire::codec::readValue<bool>(__br);

    auto&& __result = discord_social_call_set_self_mute(channel_id, mute);
    return static_cast<double>(__result);
}

GMEXPORT double __EXT_NATIVE__discord_social_call_set_speaking_status_changed_callback(char* __arg_buffer, double __arg_buffer_length)
{
    gm::byteio::BufferReader __br{__arg_buffer, static_cast<size_t>(__arg_buffer_length)};

    // field: channel_id, type: UInt64
    std::uint64_t channel_id = gm::wire::codec::readValue<std::uint64_t>(__br);

    // field: callback, type: Function
    gm::wire::GMFunction callback = gm::wire::codec::readFunction(__br, &__dispatch_queue);

    auto&& __result = discord_social_call_set_speaking_status_changed_callback(channel_id, callback);
    return static_cast<double>(__result);
}

GMEXPORT double __EXT_NATIVE__discord_social_call_set_status_changed_callback(char* __arg_buffer, double __arg_buffer_length)
{
    gm::byteio::BufferReader __br{__arg_buffer, static_cast<size_t>(__arg_buffer_length)};

    // field: channel_id, type: UInt64
    std::uint64_t channel_id = gm::wire::codec::readValue<std::uint64_t>(__br);

    // field: callback, type: Function
    gm::wire::GMFunction callback = gm::wire::codec::readFunction(__br, &__dispatch_queue);

    auto&& __result = discord_social_call_set_status_changed_callback(channel_id, callback);
    return static_cast<double>(__result);
}

GMEXPORT double __EXT_NATIVE__discord_social_call_set_vad_threshold(char* __arg_buffer, double __arg_buffer_length)
{
    gm::byteio::BufferReader __br{__arg_buffer, static_cast<size_t>(__arg_buffer_length)};

    // field: channel_id, type: UInt64
    std::uint64_t channel_id = gm::wire::codec::readValue<std::uint64_t>(__br);

    // field: automatic, type: Bool
    bool automatic = gm::wire::codec::readValue<bool>(__br);

    // field: threshold, type: Float32
    float threshold = gm::wire::codec::readValue<float>(__br);

    auto&& __result = discord_social_call_set_vad_threshold(channel_id, automatic, threshold);
    return static_cast<double>(__result);
}

GMEXPORT double __EXT_NATIVE__discord_social_client_remove_device_change_callback()
{
    discord_social_client_remove_device_change_callback();
    return 0;
}

GMEXPORT double __EXT_NATIVE__discord_social_client_remove_no_audio_input_callback()
{
    discord_social_client_remove_no_audio_input_callback();
    return 0;
}

GMEXPORT double __EXT_NATIVE__discord_social_client_remove_voice_participant_changed_callback()
{
    discord_social_client_remove_voice_participant_changed_callback();
    return 0;
}

GMEXPORT double __EXT_NATIVE__discord_social_client_remove_authorize_device_screen_closed_callback()
{
    discord_social_client_remove_authorize_device_screen_closed_callback();
    return 0;
}

GMEXPORT double __EXT_NATIVE__discord_social_client_remove_token_expiration_callback()
{
    discord_social_client_remove_token_expiration_callback();
    return 0;
}

GMEXPORT double __EXT_NATIVE__discord_social_client_remove_message_created_callback()
{
    discord_social_client_remove_message_created_callback();
    return 0;
}

GMEXPORT double __EXT_NATIVE__discord_social_client_remove_message_deleted_callback()
{
    discord_social_client_remove_message_deleted_callback();
    return 0;
}

GMEXPORT double __EXT_NATIVE__discord_social_client_remove_message_updated_callback()
{
    discord_social_client_remove_message_updated_callback();
    return 0;
}

GMEXPORT double __EXT_NATIVE__discord_social_client_remove_log_callback()
{
    discord_social_client_remove_log_callback();
    return 0;
}

GMEXPORT double __EXT_NATIVE__discord_social_client_remove_status_changed_callback()
{
    discord_social_client_remove_status_changed_callback();
    return 0;
}

GMEXPORT double __EXT_NATIVE__discord_social_client_remove_lobby_created_callback()
{
    discord_social_client_remove_lobby_created_callback();
    return 0;
}

GMEXPORT double __EXT_NATIVE__discord_social_client_remove_lobby_deleted_callback()
{
    discord_social_client_remove_lobby_deleted_callback();
    return 0;
}

GMEXPORT double __EXT_NATIVE__discord_social_client_remove_lobby_member_added_callback()
{
    discord_social_client_remove_lobby_member_added_callback();
    return 0;
}

GMEXPORT double __EXT_NATIVE__discord_social_client_remove_lobby_member_removed_callback()
{
    discord_social_client_remove_lobby_member_removed_callback();
    return 0;
}

GMEXPORT double __EXT_NATIVE__discord_social_client_remove_lobby_member_updated_callback()
{
    discord_social_client_remove_lobby_member_updated_callback();
    return 0;
}

GMEXPORT double __EXT_NATIVE__discord_social_client_remove_lobby_updated_callback()
{
    discord_social_client_remove_lobby_updated_callback();
    return 0;
}

GMEXPORT double __EXT_NATIVE__discord_social_client_remove_activity_invite_created_callback()
{
    discord_social_client_remove_activity_invite_created_callback();
    return 0;
}

GMEXPORT double __EXT_NATIVE__discord_social_client_remove_activity_invite_updated_callback()
{
    discord_social_client_remove_activity_invite_updated_callback();
    return 0;
}

GMEXPORT double __EXT_NATIVE__discord_social_client_remove_activity_join_callback()
{
    discord_social_client_remove_activity_join_callback();
    return 0;
}

GMEXPORT double __EXT_NATIVE__discord_social_client_remove_activity_join_with_application_callback()
{
    discord_social_client_remove_activity_join_with_application_callback();
    return 0;
}

GMEXPORT double __EXT_NATIVE__discord_social_client_remove_authorize_request_callback()
{
    discord_social_client_remove_authorize_request_callback();
    return 0;
}

GMEXPORT double __EXT_NATIVE__discord_social_client_remove_relationship_created_callback()
{
    discord_social_client_remove_relationship_created_callback();
    return 0;
}

GMEXPORT double __EXT_NATIVE__discord_social_client_remove_relationship_deleted_callback()
{
    discord_social_client_remove_relationship_deleted_callback();
    return 0;
}

GMEXPORT double __EXT_NATIVE__discord_social_client_remove_relationship_groups_updated_callback()
{
    discord_social_client_remove_relationship_groups_updated_callback();
    return 0;
}

GMEXPORT double __EXT_NATIVE__discord_social_client_remove_user_updated_callback()
{
    discord_social_client_remove_user_updated_callback();
    return 0;
}

GMEXPORT double __EXT_NATIVE__discord_social_call_remove_on_voice_state_changed_callback(char* __arg_buffer, double __arg_buffer_length)
{
    gm::byteio::BufferReader __br{__arg_buffer, static_cast<size_t>(__arg_buffer_length)};

    // field: channel_id, type: UInt64
    std::uint64_t channel_id = gm::wire::codec::readValue<std::uint64_t>(__br);

    discord_social_call_remove_on_voice_state_changed_callback(channel_id);
    return 0;
}

GMEXPORT double __EXT_NATIVE__discord_social_call_remove_participant_changed_callback(char* __arg_buffer, double __arg_buffer_length)
{
    gm::byteio::BufferReader __br{__arg_buffer, static_cast<size_t>(__arg_buffer_length)};

    // field: channel_id, type: UInt64
    std::uint64_t channel_id = gm::wire::codec::readValue<std::uint64_t>(__br);

    discord_social_call_remove_participant_changed_callback(channel_id);
    return 0;
}

GMEXPORT double __EXT_NATIVE__discord_social_call_remove_speaking_status_changed_callback(char* __arg_buffer, double __arg_buffer_length)
{
    gm::byteio::BufferReader __br{__arg_buffer, static_cast<size_t>(__arg_buffer_length)};

    // field: channel_id, type: UInt64
    std::uint64_t channel_id = gm::wire::codec::readValue<std::uint64_t>(__br);

    discord_social_call_remove_speaking_status_changed_callback(channel_id);
    return 0;
}

GMEXPORT double __EXT_NATIVE__discord_social_call_remove_status_changed_callback(char* __arg_buffer, double __arg_buffer_length)
{
    gm::byteio::BufferReader __br{__arg_buffer, static_cast<size_t>(__arg_buffer_length)};

    // field: channel_id, type: UInt64
    std::uint64_t channel_id = gm::wire::codec::readValue<std::uint64_t>(__br);

    discord_social_call_remove_status_changed_callback(channel_id);
    return 0;
}

