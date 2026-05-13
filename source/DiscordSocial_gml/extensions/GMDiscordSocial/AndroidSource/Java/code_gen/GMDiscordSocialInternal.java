package ${YYAndroidPackageName};
import static com.gamemaker.ExtensionCore.ExtBridge.GMDiscordSocialBridge.*;
import java.lang.String;
import java.nio.ByteBuffer;

public class GMDiscordSocialInternal extends RunnerSocial {
    public double __EXT_NATIVE__GMDiscordSocial_invocation_handler(ByteBuffer __ret_buffer, double __ret_buffer_length)
    {
        return __EXT_JNI__GMDiscordSocial_invocation_handler(__ret_buffer, __ret_buffer_length);
    }
    public double __EXT_NATIVE__GMDiscordSocial_queue_buffer(ByteBuffer __arg_buffer, double __arg_buffer_length)
    {
        return __EXT_JNI__GMDiscordSocial_queue_buffer(__arg_buffer, __arg_buffer_length);
    }
    public double __EXT_NATIVE__discord_social_run_callbacks()
    {
        return __EXT_JNI__discord_social_run_callbacks();
    }
    public double __EXT_NATIVE__discord_social_init(ByteBuffer __arg_buffer, double __arg_buffer_length)
    {
        return __EXT_JNI__discord_social_init(__arg_buffer, __arg_buffer_length);
    }
    public double __EXT_NATIVE__discord_social_shutdown()
    {
        return __EXT_JNI__discord_social_shutdown();
    }
    public double __EXT_NATIVE__discord_social_client_end_call(ByteBuffer __arg_buffer, double __arg_buffer_length)
    {
        return __EXT_JNI__discord_social_client_end_call(__arg_buffer, __arg_buffer_length);
    }
    public double __EXT_NATIVE__discord_social_client_end_calls(ByteBuffer __arg_buffer, double __arg_buffer_length)
    {
        return __EXT_JNI__discord_social_client_end_calls(__arg_buffer, __arg_buffer_length);
    }
    public double __EXT_NATIVE__discord_social_client_get_call(ByteBuffer __arg_buffer, double __arg_buffer_length, ByteBuffer __ret_buffer, double __ret_buffer_length)
    {
        return __EXT_JNI__discord_social_client_get_call(__arg_buffer, __arg_buffer_length, __ret_buffer, __ret_buffer_length);
    }
    public double __EXT_NATIVE__discord_social_client_get_calls(ByteBuffer __ret_buffer, double __ret_buffer_length)
    {
        return __EXT_JNI__discord_social_client_get_calls(__ret_buffer, __ret_buffer_length);
    }
    public double __EXT_NATIVE__discord_social_client_get_current_input_device(ByteBuffer __arg_buffer, double __arg_buffer_length)
    {
        return __EXT_JNI__discord_social_client_get_current_input_device(__arg_buffer, __arg_buffer_length);
    }
    public double __EXT_NATIVE__discord_social_client_get_current_output_device(ByteBuffer __arg_buffer, double __arg_buffer_length)
    {
        return __EXT_JNI__discord_social_client_get_current_output_device(__arg_buffer, __arg_buffer_length);
    }
    public double __EXT_NATIVE__discord_social_client_get_input_devices(ByteBuffer __arg_buffer, double __arg_buffer_length)
    {
        return __EXT_JNI__discord_social_client_get_input_devices(__arg_buffer, __arg_buffer_length);
    }
    public double __EXT_NATIVE__discord_social_client_get_input_volume()
    {
        return __EXT_JNI__discord_social_client_get_input_volume();
    }
    public double __EXT_NATIVE__discord_social_client_get_output_devices(ByteBuffer __arg_buffer, double __arg_buffer_length)
    {
        return __EXT_JNI__discord_social_client_get_output_devices(__arg_buffer, __arg_buffer_length);
    }
    public double __EXT_NATIVE__discord_social_client_get_output_volume()
    {
        return __EXT_JNI__discord_social_client_get_output_volume();
    }
    public double __EXT_NATIVE__discord_social_client_get_self_deaf_all()
    {
        return __EXT_JNI__discord_social_client_get_self_deaf_all();
    }
    public double __EXT_NATIVE__discord_social_client_get_self_mute_all()
    {
        return __EXT_JNI__discord_social_client_get_self_mute_all();
    }
    public double __EXT_NATIVE__discord_social_client_set_automatic_gain_control(double on)
    {
        return __EXT_JNI__discord_social_client_set_automatic_gain_control(on);
    }
    public double __EXT_NATIVE__discord_social_client_set_device_change_callback(ByteBuffer __arg_buffer, double __arg_buffer_length)
    {
        return __EXT_JNI__discord_social_client_set_device_change_callback(__arg_buffer, __arg_buffer_length);
    }
    public double __EXT_NATIVE__discord_social_client_set_echo_cancellation(double on)
    {
        return __EXT_JNI__discord_social_client_set_echo_cancellation(on);
    }
    public double __EXT_NATIVE__discord_social_client_set_input_device(ByteBuffer __arg_buffer, double __arg_buffer_length)
    {
        return __EXT_JNI__discord_social_client_set_input_device(__arg_buffer, __arg_buffer_length);
    }
    public double __EXT_NATIVE__discord_social_client_set_input_volume(double vol)
    {
        return __EXT_JNI__discord_social_client_set_input_volume(vol);
    }
    public double __EXT_NATIVE__discord_social_client_set_no_audio_input_callback(ByteBuffer __arg_buffer, double __arg_buffer_length)
    {
        return __EXT_JNI__discord_social_client_set_no_audio_input_callback(__arg_buffer, __arg_buffer_length);
    }
    public double __EXT_NATIVE__discord_social_client_set_no_audio_input_threshold(double threshold)
    {
        return __EXT_JNI__discord_social_client_set_no_audio_input_threshold(threshold);
    }
    public double __EXT_NATIVE__discord_social_client_set_noise_suppression(double on)
    {
        return __EXT_JNI__discord_social_client_set_noise_suppression(on);
    }
    public double __EXT_NATIVE__discord_social_client_set_opus_hardware_coding(double encode, double decode)
    {
        return __EXT_JNI__discord_social_client_set_opus_hardware_coding(encode, decode);
    }
    public double __EXT_NATIVE__discord_social_client_set_output_device(ByteBuffer __arg_buffer, double __arg_buffer_length)
    {
        return __EXT_JNI__discord_social_client_set_output_device(__arg_buffer, __arg_buffer_length);
    }
    public double __EXT_NATIVE__discord_social_client_set_output_volume(double vol)
    {
        return __EXT_JNI__discord_social_client_set_output_volume(vol);
    }
    public double __EXT_NATIVE__discord_social_client_set_self_deaf_all(double deaf)
    {
        return __EXT_JNI__discord_social_client_set_self_deaf_all(deaf);
    }
    public double __EXT_NATIVE__discord_social_client_set_self_mute_all(double mute)
    {
        return __EXT_JNI__discord_social_client_set_self_mute_all(mute);
    }
    public double __EXT_NATIVE__discord_social_client_set_thread_priority(ByteBuffer __arg_buffer, double __arg_buffer_length)
    {
        return __EXT_JNI__discord_social_client_set_thread_priority(__arg_buffer, __arg_buffer_length);
    }
    public double __EXT_NATIVE__discord_social_client_set_voice_participant_changed_callback(ByteBuffer __arg_buffer, double __arg_buffer_length)
    {
        return __EXT_JNI__discord_social_client_set_voice_participant_changed_callback(__arg_buffer, __arg_buffer_length);
    }
    public double __EXT_NATIVE__discord_social_client_show_audio_route_picker()
    {
        return __EXT_JNI__discord_social_client_show_audio_route_picker();
    }
    public double __EXT_NATIVE__discord_social_client_start_call(ByteBuffer __arg_buffer, double __arg_buffer_length, ByteBuffer __ret_buffer, double __ret_buffer_length)
    {
        return __EXT_JNI__discord_social_client_start_call(__arg_buffer, __arg_buffer_length, __ret_buffer, __ret_buffer_length);
    }
    public double __EXT_NATIVE__discord_social_call_audio_should_mute(double should_mute)
    {
        return __EXT_JNI__discord_social_call_audio_should_mute(should_mute);
    }
    public double __EXT_NATIVE__discord_social_client_start_call_with_audio_callbacks(ByteBuffer __arg_buffer, double __arg_buffer_length, ByteBuffer __ret_buffer, double __ret_buffer_length)
    {
        return __EXT_JNI__discord_social_client_start_call_with_audio_callbacks(__arg_buffer, __arg_buffer_length, __ret_buffer, __ret_buffer_length);
    }
    public double __EXT_NATIVE__discord_social_call_fetch_received_data(ByteBuffer __arg_buffer, double __arg_buffer_length, ByteBuffer __ret_buffer, double __ret_buffer_length)
    {
        return __EXT_JNI__discord_social_call_fetch_received_data(__arg_buffer, __arg_buffer_length, __ret_buffer, __ret_buffer_length);
    }
    public double __EXT_NATIVE__discord_social_call_fetch_captured_data(ByteBuffer __arg_buffer, double __arg_buffer_length, ByteBuffer __ret_buffer, double __ret_buffer_length)
    {
        return __EXT_JNI__discord_social_call_fetch_captured_data(__arg_buffer, __arg_buffer_length, __ret_buffer, __ret_buffer_length);
    }
    public double __EXT_NATIVE__discord_social_client_abort_authorize()
    {
        return __EXT_JNI__discord_social_client_abort_authorize();
    }
    public double __EXT_NATIVE__discord_social_client_abort_get_token_from_device()
    {
        return __EXT_JNI__discord_social_client_abort_get_token_from_device();
    }
    public String __EXT_NATIVE__discord_social_client_create_authorization_code_verifier()
    {
        return __EXT_JNI__discord_social_client_create_authorization_code_verifier();
    }
    public double __EXT_NATIVE__discord_social_client_authorize(ByteBuffer __arg_buffer, double __arg_buffer_length)
    {
        return __EXT_JNI__discord_social_client_authorize(__arg_buffer, __arg_buffer_length);
    }
    public double __EXT_NATIVE__discord_social_client_close_authorize_device_screen()
    {
        return __EXT_JNI__discord_social_client_close_authorize_device_screen();
    }
    public double __EXT_NATIVE__discord_social_client_get_provisional_token(ByteBuffer __arg_buffer, double __arg_buffer_length)
    {
        return __EXT_JNI__discord_social_client_get_provisional_token(__arg_buffer, __arg_buffer_length);
    }
    public double __EXT_NATIVE__discord_social_client_get_token(ByteBuffer __arg_buffer, double __arg_buffer_length)
    {
        return __EXT_JNI__discord_social_client_get_token(__arg_buffer, __arg_buffer_length);
    }
    public double __EXT_NATIVE__discord_social_client_get_token_from_device(ByteBuffer __arg_buffer, double __arg_buffer_length)
    {
        return __EXT_JNI__discord_social_client_get_token_from_device(__arg_buffer, __arg_buffer_length);
    }
    public double __EXT_NATIVE__discord_social_client_get_token_from_device_provisional_merge(ByteBuffer __arg_buffer, double __arg_buffer_length)
    {
        return __EXT_JNI__discord_social_client_get_token_from_device_provisional_merge(__arg_buffer, __arg_buffer_length);
    }
    public double __EXT_NATIVE__discord_social_client_get_token_from_provisional_merge(ByteBuffer __arg_buffer, double __arg_buffer_length)
    {
        return __EXT_JNI__discord_social_client_get_token_from_provisional_merge(__arg_buffer, __arg_buffer_length);
    }
    public double __EXT_NATIVE__discord_social_client_is_authenticated()
    {
        return __EXT_JNI__discord_social_client_is_authenticated();
    }
    public double __EXT_NATIVE__discord_social_client_open_authorize_device_screen(ByteBuffer __arg_buffer, double __arg_buffer_length)
    {
        return __EXT_JNI__discord_social_client_open_authorize_device_screen(__arg_buffer, __arg_buffer_length);
    }
    public double __EXT_NATIVE__discord_social_client_provisional_user_merge_completed(double success)
    {
        return __EXT_JNI__discord_social_client_provisional_user_merge_completed(success);
    }
    public double __EXT_NATIVE__discord_social_client_refresh_token(ByteBuffer __arg_buffer, double __arg_buffer_length)
    {
        return __EXT_JNI__discord_social_client_refresh_token(__arg_buffer, __arg_buffer_length);
    }
    public double __EXT_NATIVE__discord_social_client_set_authorize_device_screen_closed_callback(ByteBuffer __arg_buffer, double __arg_buffer_length)
    {
        return __EXT_JNI__discord_social_client_set_authorize_device_screen_closed_callback(__arg_buffer, __arg_buffer_length);
    }
    public double __EXT_NATIVE__discord_social_client_set_game_window_pid(double pid)
    {
        return __EXT_JNI__discord_social_client_set_game_window_pid(pid);
    }
    public double __EXT_NATIVE__discord_social_client_set_token_expiration_callback(ByteBuffer __arg_buffer, double __arg_buffer_length)
    {
        return __EXT_JNI__discord_social_client_set_token_expiration_callback(__arg_buffer, __arg_buffer_length);
    }
    public double __EXT_NATIVE__discord_social_client_update_provisional_account_display_name(ByteBuffer __arg_buffer, double __arg_buffer_length)
    {
        return __EXT_JNI__discord_social_client_update_provisional_account_display_name(__arg_buffer, __arg_buffer_length);
    }
    public double __EXT_NATIVE__discord_social_client_update_token(ByteBuffer __arg_buffer, double __arg_buffer_length)
    {
        return __EXT_JNI__discord_social_client_update_token(__arg_buffer, __arg_buffer_length);
    }
    public double __EXT_NATIVE__discord_social_client_revoke_token(ByteBuffer __arg_buffer, double __arg_buffer_length)
    {
        return __EXT_JNI__discord_social_client_revoke_token(__arg_buffer, __arg_buffer_length);
    }
    public double __EXT_NATIVE__discord_social_client_exchange_child_token(ByteBuffer __arg_buffer, double __arg_buffer_length)
    {
        return __EXT_JNI__discord_social_client_exchange_child_token(__arg_buffer, __arg_buffer_length);
    }
    public double __EXT_NATIVE__discord_social_client_unmerge_into_provisional_account(ByteBuffer __arg_buffer, double __arg_buffer_length)
    {
        return __EXT_JNI__discord_social_client_unmerge_into_provisional_account(__arg_buffer, __arg_buffer_length);
    }
    public double __EXT_NATIVE__discord_social_client_register_authorize_request_callback(ByteBuffer __arg_buffer, double __arg_buffer_length)
    {
        return __EXT_JNI__discord_social_client_register_authorize_request_callback(__arg_buffer, __arg_buffer_length);
    }
    public double __EXT_NATIVE__discord_social_client_can_open_message_in_discord(ByteBuffer __arg_buffer, double __arg_buffer_length)
    {
        return __EXT_JNI__discord_social_client_can_open_message_in_discord(__arg_buffer, __arg_buffer_length);
    }
    public double __EXT_NATIVE__discord_social_client_delete_user_message(ByteBuffer __arg_buffer, double __arg_buffer_length)
    {
        return __EXT_JNI__discord_social_client_delete_user_message(__arg_buffer, __arg_buffer_length);
    }
    public double __EXT_NATIVE__discord_social_client_get_channel_handle(ByteBuffer __arg_buffer, double __arg_buffer_length, ByteBuffer __ret_buffer, double __ret_buffer_length)
    {
        return __EXT_JNI__discord_social_client_get_channel_handle(__arg_buffer, __arg_buffer_length, __ret_buffer, __ret_buffer_length);
    }
    public double __EXT_NATIVE__discord_social_client_get_message_handle(ByteBuffer __arg_buffer, double __arg_buffer_length, ByteBuffer __ret_buffer, double __ret_buffer_length)
    {
        return __EXT_JNI__discord_social_client_get_message_handle(__arg_buffer, __arg_buffer_length, __ret_buffer, __ret_buffer_length);
    }
    public double __EXT_NATIVE__discord_social_client_open_message_in_discord(ByteBuffer __arg_buffer, double __arg_buffer_length)
    {
        return __EXT_JNI__discord_social_client_open_message_in_discord(__arg_buffer, __arg_buffer_length);
    }
    public double __EXT_NATIVE__discord_social_client_send_lobby_message(ByteBuffer __arg_buffer, double __arg_buffer_length)
    {
        return __EXT_JNI__discord_social_client_send_lobby_message(__arg_buffer, __arg_buffer_length);
    }
    public double __EXT_NATIVE__discord_social_client_send_lobby_message_with_metadata(ByteBuffer __arg_buffer, double __arg_buffer_length)
    {
        return __EXT_JNI__discord_social_client_send_lobby_message_with_metadata(__arg_buffer, __arg_buffer_length);
    }
    public double __EXT_NATIVE__discord_social_client_send_user_message(ByteBuffer __arg_buffer, double __arg_buffer_length)
    {
        return __EXT_JNI__discord_social_client_send_user_message(__arg_buffer, __arg_buffer_length);
    }
    public double __EXT_NATIVE__discord_social_client_send_user_message_with_metadata(ByteBuffer __arg_buffer, double __arg_buffer_length)
    {
        return __EXT_JNI__discord_social_client_send_user_message_with_metadata(__arg_buffer, __arg_buffer_length);
    }
    public double __EXT_NATIVE__discord_social_client_set_message_created_callback(ByteBuffer __arg_buffer, double __arg_buffer_length)
    {
        return __EXT_JNI__discord_social_client_set_message_created_callback(__arg_buffer, __arg_buffer_length);
    }
    public double __EXT_NATIVE__discord_social_client_set_message_deleted_callback(ByteBuffer __arg_buffer, double __arg_buffer_length)
    {
        return __EXT_JNI__discord_social_client_set_message_deleted_callback(__arg_buffer, __arg_buffer_length);
    }
    public double __EXT_NATIVE__discord_social_client_set_message_updated_callback(ByteBuffer __arg_buffer, double __arg_buffer_length)
    {
        return __EXT_JNI__discord_social_client_set_message_updated_callback(__arg_buffer, __arg_buffer_length);
    }
    public double __EXT_NATIVE__discord_social_client_set_showing_chat(double showing_chat)
    {
        return __EXT_JNI__discord_social_client_set_showing_chat(showing_chat);
    }
    public double __EXT_NATIVE__discord_social_client_edit_user_message(ByteBuffer __arg_buffer, double __arg_buffer_length)
    {
        return __EXT_JNI__discord_social_client_edit_user_message(__arg_buffer, __arg_buffer_length);
    }
    public double __EXT_NATIVE__discord_social_client_get_lobby_messages_with_limit(ByteBuffer __arg_buffer, double __arg_buffer_length)
    {
        return __EXT_JNI__discord_social_client_get_lobby_messages_with_limit(__arg_buffer, __arg_buffer_length);
    }
    public double __EXT_NATIVE__discord_social_client_get_user_message_summaries(ByteBuffer __arg_buffer, double __arg_buffer_length)
    {
        return __EXT_JNI__discord_social_client_get_user_message_summaries(__arg_buffer, __arg_buffer_length);
    }
    public double __EXT_NATIVE__discord_social_client_get_user_messages_with_limit(ByteBuffer __arg_buffer, double __arg_buffer_length)
    {
        return __EXT_JNI__discord_social_client_get_user_messages_with_limit(__arg_buffer, __arg_buffer_length);
    }
    public double __EXT_NATIVE__discord_social_client_add_log_callback(ByteBuffer __arg_buffer, double __arg_buffer_length)
    {
        return __EXT_JNI__discord_social_client_add_log_callback(__arg_buffer, __arg_buffer_length);
    }
    public double __EXT_NATIVE__discord_social_client_add_voice_log_callback(ByteBuffer __arg_buffer, double __arg_buffer_length)
    {
        return __EXT_JNI__discord_social_client_add_voice_log_callback(__arg_buffer, __arg_buffer_length);
    }
    public double __EXT_NATIVE__discord_social_client_connect()
    {
        return __EXT_JNI__discord_social_client_connect();
    }
    public double __EXT_NATIVE__discord_social_client_disconnect()
    {
        return __EXT_JNI__discord_social_client_disconnect();
    }
    public double __EXT_NATIVE__discord_social_client_get_status(ByteBuffer __ret_buffer, double __ret_buffer_length)
    {
        return __EXT_JNI__discord_social_client_get_status(__ret_buffer, __ret_buffer_length);
    }
    public double __EXT_NATIVE__discord_social_client_set_log_dir(ByteBuffer __arg_buffer, double __arg_buffer_length)
    {
        return __EXT_JNI__discord_social_client_set_log_dir(__arg_buffer, __arg_buffer_length);
    }
    public double __EXT_NATIVE__discord_social_client_set_status_changed_callback(ByteBuffer __arg_buffer, double __arg_buffer_length)
    {
        return __EXT_JNI__discord_social_client_set_status_changed_callback(__arg_buffer, __arg_buffer_length);
    }
    public double __EXT_NATIVE__discord_social_client_set_voice_log_dir(ByteBuffer __arg_buffer, double __arg_buffer_length)
    {
        return __EXT_JNI__discord_social_client_set_voice_log_dir(__arg_buffer, __arg_buffer_length);
    }
    public double __EXT_NATIVE__discord_social_client_create_or_join_lobby(ByteBuffer __arg_buffer, double __arg_buffer_length)
    {
        return __EXT_JNI__discord_social_client_create_or_join_lobby(__arg_buffer, __arg_buffer_length);
    }
    public double __EXT_NATIVE__discord_social_client_create_or_join_lobby_with_metadata(ByteBuffer __arg_buffer, double __arg_buffer_length)
    {
        return __EXT_JNI__discord_social_client_create_or_join_lobby_with_metadata(__arg_buffer, __arg_buffer_length);
    }
    public double __EXT_NATIVE__discord_social_client_get_guild_channels(ByteBuffer __arg_buffer, double __arg_buffer_length)
    {
        return __EXT_JNI__discord_social_client_get_guild_channels(__arg_buffer, __arg_buffer_length);
    }
    public double __EXT_NATIVE__discord_social_client_get_lobby_handle(ByteBuffer __arg_buffer, double __arg_buffer_length, ByteBuffer __ret_buffer, double __ret_buffer_length)
    {
        return __EXT_JNI__discord_social_client_get_lobby_handle(__arg_buffer, __arg_buffer_length, __ret_buffer, __ret_buffer_length);
    }
    public double __EXT_NATIVE__discord_social_client_get_lobby_ids(ByteBuffer __ret_buffer, double __ret_buffer_length)
    {
        return __EXT_JNI__discord_social_client_get_lobby_ids(__ret_buffer, __ret_buffer_length);
    }
    public double __EXT_NATIVE__discord_social_client_get_user_guilds(ByteBuffer __arg_buffer, double __arg_buffer_length)
    {
        return __EXT_JNI__discord_social_client_get_user_guilds(__arg_buffer, __arg_buffer_length);
    }
    public double __EXT_NATIVE__discord_social_client_leave_lobby(ByteBuffer __arg_buffer, double __arg_buffer_length)
    {
        return __EXT_JNI__discord_social_client_leave_lobby(__arg_buffer, __arg_buffer_length);
    }
    public double __EXT_NATIVE__discord_social_client_link_channel_to_lobby(ByteBuffer __arg_buffer, double __arg_buffer_length)
    {
        return __EXT_JNI__discord_social_client_link_channel_to_lobby(__arg_buffer, __arg_buffer_length);
    }
    public double __EXT_NATIVE__discord_social_client_set_lobby_created_callback(ByteBuffer __arg_buffer, double __arg_buffer_length)
    {
        return __EXT_JNI__discord_social_client_set_lobby_created_callback(__arg_buffer, __arg_buffer_length);
    }
    public double __EXT_NATIVE__discord_social_client_set_lobby_deleted_callback(ByteBuffer __arg_buffer, double __arg_buffer_length)
    {
        return __EXT_JNI__discord_social_client_set_lobby_deleted_callback(__arg_buffer, __arg_buffer_length);
    }
    public double __EXT_NATIVE__discord_social_client_set_lobby_member_added_callback(ByteBuffer __arg_buffer, double __arg_buffer_length)
    {
        return __EXT_JNI__discord_social_client_set_lobby_member_added_callback(__arg_buffer, __arg_buffer_length);
    }
    public double __EXT_NATIVE__discord_social_client_set_lobby_member_removed_callback(ByteBuffer __arg_buffer, double __arg_buffer_length)
    {
        return __EXT_JNI__discord_social_client_set_lobby_member_removed_callback(__arg_buffer, __arg_buffer_length);
    }
    public double __EXT_NATIVE__discord_social_client_set_lobby_member_updated_callback(ByteBuffer __arg_buffer, double __arg_buffer_length)
    {
        return __EXT_JNI__discord_social_client_set_lobby_member_updated_callback(__arg_buffer, __arg_buffer_length);
    }
    public double __EXT_NATIVE__discord_social_client_set_lobby_updated_callback(ByteBuffer __arg_buffer, double __arg_buffer_length)
    {
        return __EXT_JNI__discord_social_client_set_lobby_updated_callback(__arg_buffer, __arg_buffer_length);
    }
    public double __EXT_NATIVE__discord_social_client_unlink_channel_from_lobby(ByteBuffer __arg_buffer, double __arg_buffer_length)
    {
        return __EXT_JNI__discord_social_client_unlink_channel_from_lobby(__arg_buffer, __arg_buffer_length);
    }
    public double __EXT_NATIVE__discord_social_client_join_linked_lobby_guild(ByteBuffer __arg_buffer, double __arg_buffer_length)
    {
        return __EXT_JNI__discord_social_client_join_linked_lobby_guild(__arg_buffer, __arg_buffer_length);
    }
    public double __EXT_NATIVE__discord_social_client_accept_activity_invite(ByteBuffer __arg_buffer, double __arg_buffer_length)
    {
        return __EXT_JNI__discord_social_client_accept_activity_invite(__arg_buffer, __arg_buffer_length);
    }
    public double __EXT_NATIVE__discord_social_client_clear_rich_presence()
    {
        return __EXT_JNI__discord_social_client_clear_rich_presence();
    }
    public double __EXT_NATIVE__discord_social_client_register_launch_command(ByteBuffer __arg_buffer, double __arg_buffer_length)
    {
        return __EXT_JNI__discord_social_client_register_launch_command(__arg_buffer, __arg_buffer_length);
    }
    public double __EXT_NATIVE__discord_social_client_register_launch_steam_application(ByteBuffer __arg_buffer, double __arg_buffer_length)
    {
        return __EXT_JNI__discord_social_client_register_launch_steam_application(__arg_buffer, __arg_buffer_length);
    }
    public double __EXT_NATIVE__discord_social_client_send_activity_invite(ByteBuffer __arg_buffer, double __arg_buffer_length)
    {
        return __EXT_JNI__discord_social_client_send_activity_invite(__arg_buffer, __arg_buffer_length);
    }
    public double __EXT_NATIVE__discord_social_client_send_activity_join_request(ByteBuffer __arg_buffer, double __arg_buffer_length)
    {
        return __EXT_JNI__discord_social_client_send_activity_join_request(__arg_buffer, __arg_buffer_length);
    }
    public double __EXT_NATIVE__discord_social_client_send_activity_join_request_reply(ByteBuffer __arg_buffer, double __arg_buffer_length)
    {
        return __EXT_JNI__discord_social_client_send_activity_join_request_reply(__arg_buffer, __arg_buffer_length);
    }
    public double __EXT_NATIVE__discord_social_client_set_activity_invite_created_callback(ByteBuffer __arg_buffer, double __arg_buffer_length)
    {
        return __EXT_JNI__discord_social_client_set_activity_invite_created_callback(__arg_buffer, __arg_buffer_length);
    }
    public double __EXT_NATIVE__discord_social_client_set_activity_invite_updated_callback(ByteBuffer __arg_buffer, double __arg_buffer_length)
    {
        return __EXT_JNI__discord_social_client_set_activity_invite_updated_callback(__arg_buffer, __arg_buffer_length);
    }
    public double __EXT_NATIVE__discord_social_client_set_activity_join_callback(ByteBuffer __arg_buffer, double __arg_buffer_length)
    {
        return __EXT_JNI__discord_social_client_set_activity_join_callback(__arg_buffer, __arg_buffer_length);
    }
    public double __EXT_NATIVE__discord_social_client_set_activity_join_with_application_callback(ByteBuffer __arg_buffer, double __arg_buffer_length)
    {
        return __EXT_JNI__discord_social_client_set_activity_join_with_application_callback(__arg_buffer, __arg_buffer_length);
    }
    public double __EXT_NATIVE__discord_social_client_set_online_status(ByteBuffer __arg_buffer, double __arg_buffer_length)
    {
        return __EXT_JNI__discord_social_client_set_online_status(__arg_buffer, __arg_buffer_length);
    }
    public double __EXT_NATIVE__discord_social_client_update_rich_presence(ByteBuffer __arg_buffer, double __arg_buffer_length)
    {
        return __EXT_JNI__discord_social_client_update_rich_presence(__arg_buffer, __arg_buffer_length);
    }
    public double __EXT_NATIVE__discord_social_client_accept_discord_friend_request(ByteBuffer __arg_buffer, double __arg_buffer_length)
    {
        return __EXT_JNI__discord_social_client_accept_discord_friend_request(__arg_buffer, __arg_buffer_length);
    }
    public double __EXT_NATIVE__discord_social_client_accept_game_friend_request(ByteBuffer __arg_buffer, double __arg_buffer_length)
    {
        return __EXT_JNI__discord_social_client_accept_game_friend_request(__arg_buffer, __arg_buffer_length);
    }
    public double __EXT_NATIVE__discord_social_client_block_user(ByteBuffer __arg_buffer, double __arg_buffer_length)
    {
        return __EXT_JNI__discord_social_client_block_user(__arg_buffer, __arg_buffer_length);
    }
    public double __EXT_NATIVE__discord_social_client_cancel_discord_friend_request(ByteBuffer __arg_buffer, double __arg_buffer_length)
    {
        return __EXT_JNI__discord_social_client_cancel_discord_friend_request(__arg_buffer, __arg_buffer_length);
    }
    public double __EXT_NATIVE__discord_social_client_cancel_game_friend_request(ByteBuffer __arg_buffer, double __arg_buffer_length)
    {
        return __EXT_JNI__discord_social_client_cancel_game_friend_request(__arg_buffer, __arg_buffer_length);
    }
    public double __EXT_NATIVE__discord_social_client_get_relationship_handle(ByteBuffer __arg_buffer, double __arg_buffer_length, ByteBuffer __ret_buffer, double __ret_buffer_length)
    {
        return __EXT_JNI__discord_social_client_get_relationship_handle(__arg_buffer, __arg_buffer_length, __ret_buffer, __ret_buffer_length);
    }
    public double __EXT_NATIVE__discord_social_client_get_relationships(ByteBuffer __ret_buffer, double __ret_buffer_length)
    {
        return __EXT_JNI__discord_social_client_get_relationships(__ret_buffer, __ret_buffer_length);
    }
    public double __EXT_NATIVE__discord_social_client_get_relationships_by_group(ByteBuffer __arg_buffer, double __arg_buffer_length, ByteBuffer __ret_buffer, double __ret_buffer_length)
    {
        return __EXT_JNI__discord_social_client_get_relationships_by_group(__arg_buffer, __arg_buffer_length, __ret_buffer, __ret_buffer_length);
    }
    public double __EXT_NATIVE__discord_social_client_reject_discord_friend_request(ByteBuffer __arg_buffer, double __arg_buffer_length)
    {
        return __EXT_JNI__discord_social_client_reject_discord_friend_request(__arg_buffer, __arg_buffer_length);
    }
    public double __EXT_NATIVE__discord_social_client_reject_game_friend_request(ByteBuffer __arg_buffer, double __arg_buffer_length)
    {
        return __EXT_JNI__discord_social_client_reject_game_friend_request(__arg_buffer, __arg_buffer_length);
    }
    public double __EXT_NATIVE__discord_social_client_remove_discord_and_game_friend(ByteBuffer __arg_buffer, double __arg_buffer_length)
    {
        return __EXT_JNI__discord_social_client_remove_discord_and_game_friend(__arg_buffer, __arg_buffer_length);
    }
    public double __EXT_NATIVE__discord_social_client_remove_game_friend(ByteBuffer __arg_buffer, double __arg_buffer_length)
    {
        return __EXT_JNI__discord_social_client_remove_game_friend(__arg_buffer, __arg_buffer_length);
    }
    public double __EXT_NATIVE__discord_social_client_search_friends_by_username(String search_str, ByteBuffer __ret_buffer, double __ret_buffer_length)
    {
        return __EXT_JNI__discord_social_client_search_friends_by_username(search_str, __ret_buffer, __ret_buffer_length);
    }
    public double __EXT_NATIVE__discord_social_client_send_discord_friend_request(ByteBuffer __arg_buffer, double __arg_buffer_length)
    {
        return __EXT_JNI__discord_social_client_send_discord_friend_request(__arg_buffer, __arg_buffer_length);
    }
    public double __EXT_NATIVE__discord_social_client_send_discord_friend_request_by_id(ByteBuffer __arg_buffer, double __arg_buffer_length)
    {
        return __EXT_JNI__discord_social_client_send_discord_friend_request_by_id(__arg_buffer, __arg_buffer_length);
    }
    public double __EXT_NATIVE__discord_social_client_send_game_friend_request(ByteBuffer __arg_buffer, double __arg_buffer_length)
    {
        return __EXT_JNI__discord_social_client_send_game_friend_request(__arg_buffer, __arg_buffer_length);
    }
    public double __EXT_NATIVE__discord_social_client_send_game_friend_request_by_id(ByteBuffer __arg_buffer, double __arg_buffer_length)
    {
        return __EXT_JNI__discord_social_client_send_game_friend_request_by_id(__arg_buffer, __arg_buffer_length);
    }
    public double __EXT_NATIVE__discord_social_client_set_relationship_created_callback(ByteBuffer __arg_buffer, double __arg_buffer_length)
    {
        return __EXT_JNI__discord_social_client_set_relationship_created_callback(__arg_buffer, __arg_buffer_length);
    }
    public double __EXT_NATIVE__discord_social_client_set_relationship_deleted_callback(ByteBuffer __arg_buffer, double __arg_buffer_length)
    {
        return __EXT_JNI__discord_social_client_set_relationship_deleted_callback(__arg_buffer, __arg_buffer_length);
    }
    public double __EXT_NATIVE__discord_social_client_set_relationship_groups_updated_callback(ByteBuffer __arg_buffer, double __arg_buffer_length)
    {
        return __EXT_JNI__discord_social_client_set_relationship_groups_updated_callback(__arg_buffer, __arg_buffer_length);
    }
    public double __EXT_NATIVE__discord_social_client_unblock_user(ByteBuffer __arg_buffer, double __arg_buffer_length)
    {
        return __EXT_JNI__discord_social_client_unblock_user(__arg_buffer, __arg_buffer_length);
    }
    public double __EXT_NATIVE__discord_social_client_get_current_user(ByteBuffer __ret_buffer, double __ret_buffer_length)
    {
        return __EXT_JNI__discord_social_client_get_current_user(__ret_buffer, __ret_buffer_length);
    }
    public double __EXT_NATIVE__discord_social_client_get_discord_client_connected_user(ByteBuffer __arg_buffer, double __arg_buffer_length)
    {
        return __EXT_JNI__discord_social_client_get_discord_client_connected_user(__arg_buffer, __arg_buffer_length);
    }
    public double __EXT_NATIVE__discord_social_client_get_user(ByteBuffer __arg_buffer, double __arg_buffer_length, ByteBuffer __ret_buffer, double __ret_buffer_length)
    {
        return __EXT_JNI__discord_social_client_get_user(__arg_buffer, __arg_buffer_length, __ret_buffer, __ret_buffer_length);
    }
    public double __EXT_NATIVE__discord_social_client_set_user_updated_callback(ByteBuffer __arg_buffer, double __arg_buffer_length)
    {
        return __EXT_JNI__discord_social_client_set_user_updated_callback(__arg_buffer, __arg_buffer_length);
    }
    public String __EXT_NATIVE__discord_social_client_error_to_string(ByteBuffer __arg_buffer, double __arg_buffer_length)
    {
        return __EXT_JNI__discord_social_client_error_to_string(__arg_buffer, __arg_buffer_length);
    }
    public String __EXT_NATIVE__discord_social_client_get_default_audio_device_id()
    {
        return __EXT_JNI__discord_social_client_get_default_audio_device_id();
    }
    public String __EXT_NATIVE__discord_social_client_get_default_communication_scopes()
    {
        return __EXT_JNI__discord_social_client_get_default_communication_scopes();
    }
    public String __EXT_NATIVE__discord_social_client_get_default_presence_scopes()
    {
        return __EXT_JNI__discord_social_client_get_default_presence_scopes();
    }
    public String __EXT_NATIVE__discord_social_client_get_version_hash()
    {
        return __EXT_JNI__discord_social_client_get_version_hash();
    }
    public double __EXT_NATIVE__discord_social_client_get_version_major()
    {
        return __EXT_JNI__discord_social_client_get_version_major();
    }
    public double __EXT_NATIVE__discord_social_client_get_version_minor()
    {
        return __EXT_JNI__discord_social_client_get_version_minor();
    }
    public double __EXT_NATIVE__discord_social_client_get_version_patch()
    {
        return __EXT_JNI__discord_social_client_get_version_patch();
    }
    public double __EXT_NATIVE__discord_social_client_get_application_id(ByteBuffer __ret_buffer, double __ret_buffer_length)
    {
        return __EXT_JNI__discord_social_client_get_application_id(__ret_buffer, __ret_buffer_length);
    }
    public double __EXT_NATIVE__discord_social_client_set_application_id(ByteBuffer __arg_buffer, double __arg_buffer_length)
    {
        return __EXT_JNI__discord_social_client_set_application_id(__arg_buffer, __arg_buffer_length);
    }
    public double __EXT_NATIVE__discord_social_client_is_discord_app_installed(ByteBuffer __arg_buffer, double __arg_buffer_length)
    {
        return __EXT_JNI__discord_social_client_is_discord_app_installed(__arg_buffer, __arg_buffer_length);
    }
    public double __EXT_NATIVE__discord_social_client_open_connected_games_settings_in_discord(ByteBuffer __arg_buffer, double __arg_buffer_length)
    {
        return __EXT_JNI__discord_social_client_open_connected_games_settings_in_discord(__arg_buffer, __arg_buffer_length);
    }
    public String __EXT_NATIVE__discord_social_client_status_to_string(ByteBuffer __arg_buffer, double __arg_buffer_length)
    {
        return __EXT_JNI__discord_social_client_status_to_string(__arg_buffer, __arg_buffer_length);
    }
    public String __EXT_NATIVE__discord_social_client_thread_to_string(ByteBuffer __arg_buffer, double __arg_buffer_length)
    {
        return __EXT_JNI__discord_social_client_thread_to_string(__arg_buffer, __arg_buffer_length);
    }
    public double __EXT_NATIVE__discord_social_call_get_local_mute(ByteBuffer __arg_buffer, double __arg_buffer_length)
    {
        return __EXT_JNI__discord_social_call_get_local_mute(__arg_buffer, __arg_buffer_length);
    }
    public double __EXT_NATIVE__discord_social_call_get_participant_volume(ByteBuffer __arg_buffer, double __arg_buffer_length)
    {
        return __EXT_JNI__discord_social_call_get_participant_volume(__arg_buffer, __arg_buffer_length);
    }
    public double __EXT_NATIVE__discord_social_call_get_ptt_release_delay(ByteBuffer __arg_buffer, double __arg_buffer_length)
    {
        return __EXT_JNI__discord_social_call_get_ptt_release_delay(__arg_buffer, __arg_buffer_length);
    }
    public double __EXT_NATIVE__discord_social_call_get_vad_threshold(ByteBuffer __arg_buffer, double __arg_buffer_length, ByteBuffer __ret_buffer, double __ret_buffer_length)
    {
        return __EXT_JNI__discord_social_call_get_vad_threshold(__arg_buffer, __arg_buffer_length, __ret_buffer, __ret_buffer_length);
    }
    public double __EXT_NATIVE__discord_social_call_get_voice_state_handle(ByteBuffer __arg_buffer, double __arg_buffer_length, ByteBuffer __ret_buffer, double __ret_buffer_length)
    {
        return __EXT_JNI__discord_social_call_get_voice_state_handle(__arg_buffer, __arg_buffer_length, __ret_buffer, __ret_buffer_length);
    }
    public double __EXT_NATIVE__discord_social_call_set_audio_mode(ByteBuffer __arg_buffer, double __arg_buffer_length)
    {
        return __EXT_JNI__discord_social_call_set_audio_mode(__arg_buffer, __arg_buffer_length);
    }
    public double __EXT_NATIVE__discord_social_call_set_local_mute(ByteBuffer __arg_buffer, double __arg_buffer_length)
    {
        return __EXT_JNI__discord_social_call_set_local_mute(__arg_buffer, __arg_buffer_length);
    }
    public double __EXT_NATIVE__discord_social_call_set_on_voice_state_changed_callback(ByteBuffer __arg_buffer, double __arg_buffer_length)
    {
        return __EXT_JNI__discord_social_call_set_on_voice_state_changed_callback(__arg_buffer, __arg_buffer_length);
    }
    public double __EXT_NATIVE__discord_social_call_set_participant_changed_callback(ByteBuffer __arg_buffer, double __arg_buffer_length)
    {
        return __EXT_JNI__discord_social_call_set_participant_changed_callback(__arg_buffer, __arg_buffer_length);
    }
    public double __EXT_NATIVE__discord_social_call_set_participant_volume(ByteBuffer __arg_buffer, double __arg_buffer_length)
    {
        return __EXT_JNI__discord_social_call_set_participant_volume(__arg_buffer, __arg_buffer_length);
    }
    public double __EXT_NATIVE__discord_social_call_set_ptt_active(ByteBuffer __arg_buffer, double __arg_buffer_length)
    {
        return __EXT_JNI__discord_social_call_set_ptt_active(__arg_buffer, __arg_buffer_length);
    }
    public double __EXT_NATIVE__discord_social_call_set_ptt_release_delay(ByteBuffer __arg_buffer, double __arg_buffer_length)
    {
        return __EXT_JNI__discord_social_call_set_ptt_release_delay(__arg_buffer, __arg_buffer_length);
    }
    public double __EXT_NATIVE__discord_social_call_set_self_deaf(ByteBuffer __arg_buffer, double __arg_buffer_length)
    {
        return __EXT_JNI__discord_social_call_set_self_deaf(__arg_buffer, __arg_buffer_length);
    }
    public double __EXT_NATIVE__discord_social_call_set_self_mute(ByteBuffer __arg_buffer, double __arg_buffer_length)
    {
        return __EXT_JNI__discord_social_call_set_self_mute(__arg_buffer, __arg_buffer_length);
    }
    public double __EXT_NATIVE__discord_social_call_set_speaking_status_changed_callback(ByteBuffer __arg_buffer, double __arg_buffer_length)
    {
        return __EXT_JNI__discord_social_call_set_speaking_status_changed_callback(__arg_buffer, __arg_buffer_length);
    }
    public double __EXT_NATIVE__discord_social_call_set_status_changed_callback(ByteBuffer __arg_buffer, double __arg_buffer_length)
    {
        return __EXT_JNI__discord_social_call_set_status_changed_callback(__arg_buffer, __arg_buffer_length);
    }
    public double __EXT_NATIVE__discord_social_call_set_vad_threshold(ByteBuffer __arg_buffer, double __arg_buffer_length)
    {
        return __EXT_JNI__discord_social_call_set_vad_threshold(__arg_buffer, __arg_buffer_length);
    }
    public double __EXT_NATIVE__discord_social_client_remove_device_change_callback()
    {
        return __EXT_JNI__discord_social_client_remove_device_change_callback();
    }
    public double __EXT_NATIVE__discord_social_client_remove_no_audio_input_callback()
    {
        return __EXT_JNI__discord_social_client_remove_no_audio_input_callback();
    }
    public double __EXT_NATIVE__discord_social_client_remove_voice_participant_changed_callback()
    {
        return __EXT_JNI__discord_social_client_remove_voice_participant_changed_callback();
    }
    public double __EXT_NATIVE__discord_social_client_remove_authorize_device_screen_closed_callback()
    {
        return __EXT_JNI__discord_social_client_remove_authorize_device_screen_closed_callback();
    }
    public double __EXT_NATIVE__discord_social_client_remove_token_expiration_callback()
    {
        return __EXT_JNI__discord_social_client_remove_token_expiration_callback();
    }
    public double __EXT_NATIVE__discord_social_client_remove_message_created_callback()
    {
        return __EXT_JNI__discord_social_client_remove_message_created_callback();
    }
    public double __EXT_NATIVE__discord_social_client_remove_message_deleted_callback()
    {
        return __EXT_JNI__discord_social_client_remove_message_deleted_callback();
    }
    public double __EXT_NATIVE__discord_social_client_remove_message_updated_callback()
    {
        return __EXT_JNI__discord_social_client_remove_message_updated_callback();
    }
    public double __EXT_NATIVE__discord_social_client_remove_log_callback()
    {
        return __EXT_JNI__discord_social_client_remove_log_callback();
    }
    public double __EXT_NATIVE__discord_social_client_remove_status_changed_callback()
    {
        return __EXT_JNI__discord_social_client_remove_status_changed_callback();
    }
    public double __EXT_NATIVE__discord_social_client_remove_lobby_created_callback()
    {
        return __EXT_JNI__discord_social_client_remove_lobby_created_callback();
    }
    public double __EXT_NATIVE__discord_social_client_remove_lobby_deleted_callback()
    {
        return __EXT_JNI__discord_social_client_remove_lobby_deleted_callback();
    }
    public double __EXT_NATIVE__discord_social_client_remove_lobby_member_added_callback()
    {
        return __EXT_JNI__discord_social_client_remove_lobby_member_added_callback();
    }
    public double __EXT_NATIVE__discord_social_client_remove_lobby_member_removed_callback()
    {
        return __EXT_JNI__discord_social_client_remove_lobby_member_removed_callback();
    }
    public double __EXT_NATIVE__discord_social_client_remove_lobby_member_updated_callback()
    {
        return __EXT_JNI__discord_social_client_remove_lobby_member_updated_callback();
    }
    public double __EXT_NATIVE__discord_social_client_remove_lobby_updated_callback()
    {
        return __EXT_JNI__discord_social_client_remove_lobby_updated_callback();
    }
    public double __EXT_NATIVE__discord_social_client_remove_activity_invite_created_callback()
    {
        return __EXT_JNI__discord_social_client_remove_activity_invite_created_callback();
    }
    public double __EXT_NATIVE__discord_social_client_remove_activity_invite_updated_callback()
    {
        return __EXT_JNI__discord_social_client_remove_activity_invite_updated_callback();
    }
    public double __EXT_NATIVE__discord_social_client_remove_activity_join_callback()
    {
        return __EXT_JNI__discord_social_client_remove_activity_join_callback();
    }
    public double __EXT_NATIVE__discord_social_client_remove_activity_join_with_application_callback()
    {
        return __EXT_JNI__discord_social_client_remove_activity_join_with_application_callback();
    }
    public double __EXT_NATIVE__discord_social_client_remove_authorize_request_callback()
    {
        return __EXT_JNI__discord_social_client_remove_authorize_request_callback();
    }
    public double __EXT_NATIVE__discord_social_client_remove_relationship_created_callback()
    {
        return __EXT_JNI__discord_social_client_remove_relationship_created_callback();
    }
    public double __EXT_NATIVE__discord_social_client_remove_relationship_deleted_callback()
    {
        return __EXT_JNI__discord_social_client_remove_relationship_deleted_callback();
    }
    public double __EXT_NATIVE__discord_social_client_remove_relationship_groups_updated_callback()
    {
        return __EXT_JNI__discord_social_client_remove_relationship_groups_updated_callback();
    }
    public double __EXT_NATIVE__discord_social_client_remove_user_updated_callback()
    {
        return __EXT_JNI__discord_social_client_remove_user_updated_callback();
    }
    public double __EXT_NATIVE__discord_social_call_remove_on_voice_state_changed_callback(ByteBuffer __arg_buffer, double __arg_buffer_length)
    {
        return __EXT_JNI__discord_social_call_remove_on_voice_state_changed_callback(__arg_buffer, __arg_buffer_length);
    }
    public double __EXT_NATIVE__discord_social_call_remove_participant_changed_callback(ByteBuffer __arg_buffer, double __arg_buffer_length)
    {
        return __EXT_JNI__discord_social_call_remove_participant_changed_callback(__arg_buffer, __arg_buffer_length);
    }
    public double __EXT_NATIVE__discord_social_call_remove_speaking_status_changed_callback(ByteBuffer __arg_buffer, double __arg_buffer_length)
    {
        return __EXT_JNI__discord_social_call_remove_speaking_status_changed_callback(__arg_buffer, __arg_buffer_length);
    }
    public double __EXT_NATIVE__discord_social_call_remove_status_changed_callback(ByteBuffer __arg_buffer, double __arg_buffer_length)
    {
        return __EXT_JNI__discord_social_call_remove_status_changed_callback(__arg_buffer, __arg_buffer_length);
    }
}