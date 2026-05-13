// ##### extgen :: Auto-generated file do not edit!! #####

#import "GMDiscordSocialInternal_ios.h"
#import "native/GMDiscordSocialInternal_exports.h"
#import <objc/runtime.h>


extern "C" const char* extOptGetString(char* _ext, char* _opt);

// Adapter: matches const signature expected by the C++ API
static const char* ExtOptGetString(const char* ext, const char* opt)
{
    return extOptGetString(const_cast<char*>(ext), const_cast<char*>(opt));
}

static BOOL GMIsSubclassOf(Class cls, Class base)
{
    for (Class c = cls; c != Nil; c = class_getSuperclass(c)) {
        if (c == base) return YES;
    }
    return NO;
}

static void GMInjectSelectorsIntoSubclass(Class subclass, Class base)
{
    // Build set of methods already defined on subclass
    unsigned subCount = 0;
    Method *subList = class_copyMethodList(subclass, &subCount);

    CFMutableSetRef owned = CFSetCreateMutable(kCFAllocatorDefault, 0, NULL);
    for (unsigned i = 0; i < subCount; ++i) {
        CFSetAddValue(owned, method_getName(subList[i]));
    }

    // Walk base class methods
    unsigned baseCount = 0;
    Method *baseList = class_copyMethodList(base, &baseCount);

    for (unsigned i = 0; i < baseCount; ++i) {
        SEL sel = method_getName(baseList[i]);
        const char *name = sel_getName(sel);

        // Only inject extension selectors (methods prefixed with __EXT_NATIVE__)
        if (!name || strncmp(name, "__EXT_NATIVE__", 13) != 0) continue;

        // Add only if subclass doesn't already have it
        if (!CFSetContainsValue(owned, sel)) {
            IMP imp = method_getImplementation(baseList[i]);
            const char *types = method_getTypeEncoding(baseList[i]);
            if (class_addMethod(subclass, sel, imp, types)) {
                CFSetAddValue(owned, sel);
            }
        }
    }

    if (subList) free(subList);
    if (baseList) free(baseList);
    if (owned) CFRelease(owned);
}

@implementation GMDiscordSocialInternal

+ (void)load
{
    // Find all loaded classes
    int num = objc_getClassList(NULL, 0);
    if (num <= 0) return;

    Class *classes = (Class *)malloc(sizeof(Class) * (unsigned)num);
    num = objc_getClassList(classes, num);

    Class base = [GMDiscordSocialInternal class];

    for (int i = 0; i < num; ++i) {
        Class cls = classes[i];
        if (cls == base) continue;

        // We only care about direct or indirect subclasses
        if (GMIsSubclassOf(cls, base)) {
            GMInjectSelectorsIntoSubclass(cls, base);
        }
    }

    free(classes);

    gm::details::GMRTRunnerInterface ri{};
    ri.ExtOptGetString = &ExtOptGetString;
    GMExtensionInitialise(&ri, sizeof(ri));
}

- (double)__EXT_NATIVE__discord_social_run_callbacks
{
    return __EXT_NATIVE__discord_social_run_callbacks();
}
- (double)__EXT_NATIVE__discord_social_init:(char*)__arg_buffer arg1:(double)__arg_buffer_length
{
    return __EXT_NATIVE__discord_social_init(__arg_buffer, __arg_buffer_length);
}
- (double)__EXT_NATIVE__discord_social_shutdown
{
    return __EXT_NATIVE__discord_social_shutdown();
}
- (double)__EXT_NATIVE__discord_social_client_end_call:(char*)__arg_buffer arg1:(double)__arg_buffer_length
{
    return __EXT_NATIVE__discord_social_client_end_call(__arg_buffer, __arg_buffer_length);
}
- (double)__EXT_NATIVE__discord_social_client_end_calls:(char*)__arg_buffer arg1:(double)__arg_buffer_length
{
    return __EXT_NATIVE__discord_social_client_end_calls(__arg_buffer, __arg_buffer_length);
}
- (double)__EXT_NATIVE__discord_social_client_get_call:(char*)__arg_buffer arg1:(double)__arg_buffer_length arg2:(char*)__ret_buffer arg3:(double)__ret_buffer_length
{
    return __EXT_NATIVE__discord_social_client_get_call(__arg_buffer, __arg_buffer_length, __ret_buffer, __ret_buffer_length);
}
- (double)__EXT_NATIVE__discord_social_client_get_calls:(char*)__ret_buffer arg1:(double)__ret_buffer_length
{
    return __EXT_NATIVE__discord_social_client_get_calls(__ret_buffer, __ret_buffer_length);
}
- (double)__EXT_NATIVE__discord_social_client_get_current_input_device:(char*)__arg_buffer arg1:(double)__arg_buffer_length
{
    return __EXT_NATIVE__discord_social_client_get_current_input_device(__arg_buffer, __arg_buffer_length);
}
- (double)__EXT_NATIVE__discord_social_client_get_current_output_device:(char*)__arg_buffer arg1:(double)__arg_buffer_length
{
    return __EXT_NATIVE__discord_social_client_get_current_output_device(__arg_buffer, __arg_buffer_length);
}
- (double)__EXT_NATIVE__discord_social_client_get_input_devices:(char*)__arg_buffer arg1:(double)__arg_buffer_length
{
    return __EXT_NATIVE__discord_social_client_get_input_devices(__arg_buffer, __arg_buffer_length);
}
- (double)__EXT_NATIVE__discord_social_client_get_input_volume
{
    return __EXT_NATIVE__discord_social_client_get_input_volume();
}
- (double)__EXT_NATIVE__discord_social_client_get_output_devices:(char*)__arg_buffer arg1:(double)__arg_buffer_length
{
    return __EXT_NATIVE__discord_social_client_get_output_devices(__arg_buffer, __arg_buffer_length);
}
- (double)__EXT_NATIVE__discord_social_client_get_output_volume
{
    return __EXT_NATIVE__discord_social_client_get_output_volume();
}
- (double)__EXT_NATIVE__discord_social_client_get_self_deaf_all
{
    return __EXT_NATIVE__discord_social_client_get_self_deaf_all();
}
- (double)__EXT_NATIVE__discord_social_client_get_self_mute_all
{
    return __EXT_NATIVE__discord_social_client_get_self_mute_all();
}
- (double)__EXT_NATIVE__discord_social_client_set_automatic_gain_control:(double)on
{
    return __EXT_NATIVE__discord_social_client_set_automatic_gain_control(on);
}
- (double)__EXT_NATIVE__discord_social_client_set_device_change_callback:(char*)__arg_buffer arg1:(double)__arg_buffer_length
{
    return __EXT_NATIVE__discord_social_client_set_device_change_callback(__arg_buffer, __arg_buffer_length);
}
- (double)__EXT_NATIVE__discord_social_client_set_echo_cancellation:(double)on
{
    return __EXT_NATIVE__discord_social_client_set_echo_cancellation(on);
}
- (double)__EXT_NATIVE__discord_social_client_set_input_device:(char*)__arg_buffer arg1:(double)__arg_buffer_length
{
    return __EXT_NATIVE__discord_social_client_set_input_device(__arg_buffer, __arg_buffer_length);
}
- (double)__EXT_NATIVE__discord_social_client_set_input_volume:(double)vol
{
    return __EXT_NATIVE__discord_social_client_set_input_volume(vol);
}
- (double)__EXT_NATIVE__discord_social_client_set_no_audio_input_callback:(char*)__arg_buffer arg1:(double)__arg_buffer_length
{
    return __EXT_NATIVE__discord_social_client_set_no_audio_input_callback(__arg_buffer, __arg_buffer_length);
}
- (double)__EXT_NATIVE__discord_social_client_set_no_audio_input_threshold:(double)threshold
{
    return __EXT_NATIVE__discord_social_client_set_no_audio_input_threshold(threshold);
}
- (double)__EXT_NATIVE__discord_social_client_set_noise_suppression:(double)on
{
    return __EXT_NATIVE__discord_social_client_set_noise_suppression(on);
}
- (double)__EXT_NATIVE__discord_social_client_set_opus_hardware_coding:(double)encode arg1:(double)decode
{
    return __EXT_NATIVE__discord_social_client_set_opus_hardware_coding(encode, decode);
}
- (double)__EXT_NATIVE__discord_social_client_set_output_device:(char*)__arg_buffer arg1:(double)__arg_buffer_length
{
    return __EXT_NATIVE__discord_social_client_set_output_device(__arg_buffer, __arg_buffer_length);
}
- (double)__EXT_NATIVE__discord_social_client_set_output_volume:(double)vol
{
    return __EXT_NATIVE__discord_social_client_set_output_volume(vol);
}
- (double)__EXT_NATIVE__discord_social_client_set_self_deaf_all:(double)deaf
{
    return __EXT_NATIVE__discord_social_client_set_self_deaf_all(deaf);
}
- (double)__EXT_NATIVE__discord_social_client_set_self_mute_all:(double)mute
{
    return __EXT_NATIVE__discord_social_client_set_self_mute_all(mute);
}
- (double)__EXT_NATIVE__discord_social_client_set_thread_priority:(char*)__arg_buffer arg1:(double)__arg_buffer_length
{
    return __EXT_NATIVE__discord_social_client_set_thread_priority(__arg_buffer, __arg_buffer_length);
}
- (double)__EXT_NATIVE__discord_social_client_set_voice_participant_changed_callback:(char*)__arg_buffer arg1:(double)__arg_buffer_length
{
    return __EXT_NATIVE__discord_social_client_set_voice_participant_changed_callback(__arg_buffer, __arg_buffer_length);
}
- (double)__EXT_NATIVE__discord_social_client_show_audio_route_picker
{
    return __EXT_NATIVE__discord_social_client_show_audio_route_picker();
}
- (double)__EXT_NATIVE__discord_social_client_start_call:(char*)__arg_buffer arg1:(double)__arg_buffer_length arg2:(char*)__ret_buffer arg3:(double)__ret_buffer_length
{
    return __EXT_NATIVE__discord_social_client_start_call(__arg_buffer, __arg_buffer_length, __ret_buffer, __ret_buffer_length);
}
- (double)__EXT_NATIVE__discord_social_call_audio_should_mute:(double)should_mute
{
    return __EXT_NATIVE__discord_social_call_audio_should_mute(should_mute);
}
- (double)__EXT_NATIVE__discord_social_client_start_call_with_audio_callbacks:(char*)__arg_buffer arg1:(double)__arg_buffer_length arg2:(char*)__ret_buffer arg3:(double)__ret_buffer_length
{
    return __EXT_NATIVE__discord_social_client_start_call_with_audio_callbacks(__arg_buffer, __arg_buffer_length, __ret_buffer, __ret_buffer_length);
}
- (double)__EXT_NATIVE__discord_social_call_fetch_received_data:(char*)__arg_buffer arg1:(double)__arg_buffer_length arg2:(char*)__ret_buffer arg3:(double)__ret_buffer_length
{
    return __EXT_NATIVE__discord_social_call_fetch_received_data(__arg_buffer, __arg_buffer_length, __ret_buffer, __ret_buffer_length);
}
- (double)__EXT_NATIVE__discord_social_call_fetch_captured_data:(char*)__arg_buffer arg1:(double)__arg_buffer_length arg2:(char*)__ret_buffer arg3:(double)__ret_buffer_length
{
    return __EXT_NATIVE__discord_social_call_fetch_captured_data(__arg_buffer, __arg_buffer_length, __ret_buffer, __ret_buffer_length);
}
- (double)__EXT_NATIVE__discord_social_client_abort_authorize
{
    return __EXT_NATIVE__discord_social_client_abort_authorize();
}
- (double)__EXT_NATIVE__discord_social_client_abort_get_token_from_device
{
    return __EXT_NATIVE__discord_social_client_abort_get_token_from_device();
}
- (char*)__EXT_NATIVE__discord_social_client_create_authorization_code_verifier
{
    return __EXT_NATIVE__discord_social_client_create_authorization_code_verifier();
}
- (double)__EXT_NATIVE__discord_social_client_authorize:(char*)__arg_buffer arg1:(double)__arg_buffer_length
{
    return __EXT_NATIVE__discord_social_client_authorize(__arg_buffer, __arg_buffer_length);
}
- (double)__EXT_NATIVE__discord_social_client_close_authorize_device_screen
{
    return __EXT_NATIVE__discord_social_client_close_authorize_device_screen();
}
- (double)__EXT_NATIVE__discord_social_client_get_provisional_token:(char*)__arg_buffer arg1:(double)__arg_buffer_length
{
    return __EXT_NATIVE__discord_social_client_get_provisional_token(__arg_buffer, __arg_buffer_length);
}
- (double)__EXT_NATIVE__discord_social_client_get_token:(char*)__arg_buffer arg1:(double)__arg_buffer_length
{
    return __EXT_NATIVE__discord_social_client_get_token(__arg_buffer, __arg_buffer_length);
}
- (double)__EXT_NATIVE__discord_social_client_get_token_from_device:(char*)__arg_buffer arg1:(double)__arg_buffer_length
{
    return __EXT_NATIVE__discord_social_client_get_token_from_device(__arg_buffer, __arg_buffer_length);
}
- (double)__EXT_NATIVE__discord_social_client_get_token_from_device_provisional_merge:(char*)__arg_buffer arg1:(double)__arg_buffer_length
{
    return __EXT_NATIVE__discord_social_client_get_token_from_device_provisional_merge(__arg_buffer, __arg_buffer_length);
}
- (double)__EXT_NATIVE__discord_social_client_get_token_from_provisional_merge:(char*)__arg_buffer arg1:(double)__arg_buffer_length
{
    return __EXT_NATIVE__discord_social_client_get_token_from_provisional_merge(__arg_buffer, __arg_buffer_length);
}
- (double)__EXT_NATIVE__discord_social_client_is_authenticated
{
    return __EXT_NATIVE__discord_social_client_is_authenticated();
}
- (double)__EXT_NATIVE__discord_social_client_open_authorize_device_screen:(char*)__arg_buffer arg1:(double)__arg_buffer_length
{
    return __EXT_NATIVE__discord_social_client_open_authorize_device_screen(__arg_buffer, __arg_buffer_length);
}
- (double)__EXT_NATIVE__discord_social_client_provisional_user_merge_completed:(double)success
{
    return __EXT_NATIVE__discord_social_client_provisional_user_merge_completed(success);
}
- (double)__EXT_NATIVE__discord_social_client_refresh_token:(char*)__arg_buffer arg1:(double)__arg_buffer_length
{
    return __EXT_NATIVE__discord_social_client_refresh_token(__arg_buffer, __arg_buffer_length);
}
- (double)__EXT_NATIVE__discord_social_client_set_authorize_device_screen_closed_callback:(char*)__arg_buffer arg1:(double)__arg_buffer_length
{
    return __EXT_NATIVE__discord_social_client_set_authorize_device_screen_closed_callback(__arg_buffer, __arg_buffer_length);
}
- (double)__EXT_NATIVE__discord_social_client_set_game_window_pid:(double)pid
{
    return __EXT_NATIVE__discord_social_client_set_game_window_pid(pid);
}
- (double)__EXT_NATIVE__discord_social_client_set_token_expiration_callback:(char*)__arg_buffer arg1:(double)__arg_buffer_length
{
    return __EXT_NATIVE__discord_social_client_set_token_expiration_callback(__arg_buffer, __arg_buffer_length);
}
- (double)__EXT_NATIVE__discord_social_client_update_provisional_account_display_name:(char*)__arg_buffer arg1:(double)__arg_buffer_length
{
    return __EXT_NATIVE__discord_social_client_update_provisional_account_display_name(__arg_buffer, __arg_buffer_length);
}
- (double)__EXT_NATIVE__discord_social_client_update_token:(char*)__arg_buffer arg1:(double)__arg_buffer_length
{
    return __EXT_NATIVE__discord_social_client_update_token(__arg_buffer, __arg_buffer_length);
}
- (double)__EXT_NATIVE__discord_social_client_revoke_token:(char*)__arg_buffer arg1:(double)__arg_buffer_length
{
    return __EXT_NATIVE__discord_social_client_revoke_token(__arg_buffer, __arg_buffer_length);
}
- (double)__EXT_NATIVE__discord_social_client_exchange_child_token:(char*)__arg_buffer arg1:(double)__arg_buffer_length
{
    return __EXT_NATIVE__discord_social_client_exchange_child_token(__arg_buffer, __arg_buffer_length);
}
- (double)__EXT_NATIVE__discord_social_client_unmerge_into_provisional_account:(char*)__arg_buffer arg1:(double)__arg_buffer_length
{
    return __EXT_NATIVE__discord_social_client_unmerge_into_provisional_account(__arg_buffer, __arg_buffer_length);
}
- (double)__EXT_NATIVE__discord_social_client_register_authorize_request_callback:(char*)__arg_buffer arg1:(double)__arg_buffer_length
{
    return __EXT_NATIVE__discord_social_client_register_authorize_request_callback(__arg_buffer, __arg_buffer_length);
}
- (double)__EXT_NATIVE__discord_social_client_can_open_message_in_discord:(char*)__arg_buffer arg1:(double)__arg_buffer_length
{
    return __EXT_NATIVE__discord_social_client_can_open_message_in_discord(__arg_buffer, __arg_buffer_length);
}
- (double)__EXT_NATIVE__discord_social_client_delete_user_message:(char*)__arg_buffer arg1:(double)__arg_buffer_length
{
    return __EXT_NATIVE__discord_social_client_delete_user_message(__arg_buffer, __arg_buffer_length);
}
- (double)__EXT_NATIVE__discord_social_client_get_channel_handle:(char*)__arg_buffer arg1:(double)__arg_buffer_length arg2:(char*)__ret_buffer arg3:(double)__ret_buffer_length
{
    return __EXT_NATIVE__discord_social_client_get_channel_handle(__arg_buffer, __arg_buffer_length, __ret_buffer, __ret_buffer_length);
}
- (double)__EXT_NATIVE__discord_social_client_get_message_handle:(char*)__arg_buffer arg1:(double)__arg_buffer_length arg2:(char*)__ret_buffer arg3:(double)__ret_buffer_length
{
    return __EXT_NATIVE__discord_social_client_get_message_handle(__arg_buffer, __arg_buffer_length, __ret_buffer, __ret_buffer_length);
}
- (double)__EXT_NATIVE__discord_social_client_open_message_in_discord:(char*)__arg_buffer arg1:(double)__arg_buffer_length
{
    return __EXT_NATIVE__discord_social_client_open_message_in_discord(__arg_buffer, __arg_buffer_length);
}
- (double)__EXT_NATIVE__discord_social_client_send_lobby_message:(char*)__arg_buffer arg1:(double)__arg_buffer_length
{
    return __EXT_NATIVE__discord_social_client_send_lobby_message(__arg_buffer, __arg_buffer_length);
}
- (double)__EXT_NATIVE__discord_social_client_send_lobby_message_with_metadata:(char*)__arg_buffer arg1:(double)__arg_buffer_length
{
    return __EXT_NATIVE__discord_social_client_send_lobby_message_with_metadata(__arg_buffer, __arg_buffer_length);
}
- (double)__EXT_NATIVE__discord_social_client_send_user_message:(char*)__arg_buffer arg1:(double)__arg_buffer_length
{
    return __EXT_NATIVE__discord_social_client_send_user_message(__arg_buffer, __arg_buffer_length);
}
- (double)__EXT_NATIVE__discord_social_client_send_user_message_with_metadata:(char*)__arg_buffer arg1:(double)__arg_buffer_length
{
    return __EXT_NATIVE__discord_social_client_send_user_message_with_metadata(__arg_buffer, __arg_buffer_length);
}
- (double)__EXT_NATIVE__discord_social_client_set_message_created_callback:(char*)__arg_buffer arg1:(double)__arg_buffer_length
{
    return __EXT_NATIVE__discord_social_client_set_message_created_callback(__arg_buffer, __arg_buffer_length);
}
- (double)__EXT_NATIVE__discord_social_client_set_message_deleted_callback:(char*)__arg_buffer arg1:(double)__arg_buffer_length
{
    return __EXT_NATIVE__discord_social_client_set_message_deleted_callback(__arg_buffer, __arg_buffer_length);
}
- (double)__EXT_NATIVE__discord_social_client_set_message_updated_callback:(char*)__arg_buffer arg1:(double)__arg_buffer_length
{
    return __EXT_NATIVE__discord_social_client_set_message_updated_callback(__arg_buffer, __arg_buffer_length);
}
- (double)__EXT_NATIVE__discord_social_client_set_showing_chat:(double)showing_chat
{
    return __EXT_NATIVE__discord_social_client_set_showing_chat(showing_chat);
}
- (double)__EXT_NATIVE__discord_social_client_edit_user_message:(char*)__arg_buffer arg1:(double)__arg_buffer_length
{
    return __EXT_NATIVE__discord_social_client_edit_user_message(__arg_buffer, __arg_buffer_length);
}
- (double)__EXT_NATIVE__discord_social_client_get_lobby_messages_with_limit:(char*)__arg_buffer arg1:(double)__arg_buffer_length
{
    return __EXT_NATIVE__discord_social_client_get_lobby_messages_with_limit(__arg_buffer, __arg_buffer_length);
}
- (double)__EXT_NATIVE__discord_social_client_get_user_message_summaries:(char*)__arg_buffer arg1:(double)__arg_buffer_length
{
    return __EXT_NATIVE__discord_social_client_get_user_message_summaries(__arg_buffer, __arg_buffer_length);
}
- (double)__EXT_NATIVE__discord_social_client_get_user_messages_with_limit:(char*)__arg_buffer arg1:(double)__arg_buffer_length
{
    return __EXT_NATIVE__discord_social_client_get_user_messages_with_limit(__arg_buffer, __arg_buffer_length);
}
- (double)__EXT_NATIVE__discord_social_client_add_log_callback:(char*)__arg_buffer arg1:(double)__arg_buffer_length
{
    return __EXT_NATIVE__discord_social_client_add_log_callback(__arg_buffer, __arg_buffer_length);
}
- (double)__EXT_NATIVE__discord_social_client_add_voice_log_callback:(char*)__arg_buffer arg1:(double)__arg_buffer_length
{
    return __EXT_NATIVE__discord_social_client_add_voice_log_callback(__arg_buffer, __arg_buffer_length);
}
- (double)__EXT_NATIVE__discord_social_client_connect
{
    return __EXT_NATIVE__discord_social_client_connect();
}
- (double)__EXT_NATIVE__discord_social_client_disconnect
{
    return __EXT_NATIVE__discord_social_client_disconnect();
}
- (double)__EXT_NATIVE__discord_social_client_get_status:(char*)__ret_buffer arg1:(double)__ret_buffer_length
{
    return __EXT_NATIVE__discord_social_client_get_status(__ret_buffer, __ret_buffer_length);
}
- (double)__EXT_NATIVE__discord_social_client_set_log_dir:(char*)__arg_buffer arg1:(double)__arg_buffer_length
{
    return __EXT_NATIVE__discord_social_client_set_log_dir(__arg_buffer, __arg_buffer_length);
}
- (double)__EXT_NATIVE__discord_social_client_set_status_changed_callback:(char*)__arg_buffer arg1:(double)__arg_buffer_length
{
    return __EXT_NATIVE__discord_social_client_set_status_changed_callback(__arg_buffer, __arg_buffer_length);
}
- (double)__EXT_NATIVE__discord_social_client_set_voice_log_dir:(char*)__arg_buffer arg1:(double)__arg_buffer_length
{
    return __EXT_NATIVE__discord_social_client_set_voice_log_dir(__arg_buffer, __arg_buffer_length);
}
- (double)__EXT_NATIVE__discord_social_client_create_or_join_lobby:(char*)__arg_buffer arg1:(double)__arg_buffer_length
{
    return __EXT_NATIVE__discord_social_client_create_or_join_lobby(__arg_buffer, __arg_buffer_length);
}
- (double)__EXT_NATIVE__discord_social_client_create_or_join_lobby_with_metadata:(char*)__arg_buffer arg1:(double)__arg_buffer_length
{
    return __EXT_NATIVE__discord_social_client_create_or_join_lobby_with_metadata(__arg_buffer, __arg_buffer_length);
}
- (double)__EXT_NATIVE__discord_social_client_get_guild_channels:(char*)__arg_buffer arg1:(double)__arg_buffer_length
{
    return __EXT_NATIVE__discord_social_client_get_guild_channels(__arg_buffer, __arg_buffer_length);
}
- (double)__EXT_NATIVE__discord_social_client_get_lobby_handle:(char*)__arg_buffer arg1:(double)__arg_buffer_length arg2:(char*)__ret_buffer arg3:(double)__ret_buffer_length
{
    return __EXT_NATIVE__discord_social_client_get_lobby_handle(__arg_buffer, __arg_buffer_length, __ret_buffer, __ret_buffer_length);
}
- (double)__EXT_NATIVE__discord_social_client_get_lobby_ids:(char*)__ret_buffer arg1:(double)__ret_buffer_length
{
    return __EXT_NATIVE__discord_social_client_get_lobby_ids(__ret_buffer, __ret_buffer_length);
}
- (double)__EXT_NATIVE__discord_social_client_get_user_guilds:(char*)__arg_buffer arg1:(double)__arg_buffer_length
{
    return __EXT_NATIVE__discord_social_client_get_user_guilds(__arg_buffer, __arg_buffer_length);
}
- (double)__EXT_NATIVE__discord_social_client_leave_lobby:(char*)__arg_buffer arg1:(double)__arg_buffer_length
{
    return __EXT_NATIVE__discord_social_client_leave_lobby(__arg_buffer, __arg_buffer_length);
}
- (double)__EXT_NATIVE__discord_social_client_link_channel_to_lobby:(char*)__arg_buffer arg1:(double)__arg_buffer_length
{
    return __EXT_NATIVE__discord_social_client_link_channel_to_lobby(__arg_buffer, __arg_buffer_length);
}
- (double)__EXT_NATIVE__discord_social_client_set_lobby_created_callback:(char*)__arg_buffer arg1:(double)__arg_buffer_length
{
    return __EXT_NATIVE__discord_social_client_set_lobby_created_callback(__arg_buffer, __arg_buffer_length);
}
- (double)__EXT_NATIVE__discord_social_client_set_lobby_deleted_callback:(char*)__arg_buffer arg1:(double)__arg_buffer_length
{
    return __EXT_NATIVE__discord_social_client_set_lobby_deleted_callback(__arg_buffer, __arg_buffer_length);
}
- (double)__EXT_NATIVE__discord_social_client_set_lobby_member_added_callback:(char*)__arg_buffer arg1:(double)__arg_buffer_length
{
    return __EXT_NATIVE__discord_social_client_set_lobby_member_added_callback(__arg_buffer, __arg_buffer_length);
}
- (double)__EXT_NATIVE__discord_social_client_set_lobby_member_removed_callback:(char*)__arg_buffer arg1:(double)__arg_buffer_length
{
    return __EXT_NATIVE__discord_social_client_set_lobby_member_removed_callback(__arg_buffer, __arg_buffer_length);
}
- (double)__EXT_NATIVE__discord_social_client_set_lobby_member_updated_callback:(char*)__arg_buffer arg1:(double)__arg_buffer_length
{
    return __EXT_NATIVE__discord_social_client_set_lobby_member_updated_callback(__arg_buffer, __arg_buffer_length);
}
- (double)__EXT_NATIVE__discord_social_client_set_lobby_updated_callback:(char*)__arg_buffer arg1:(double)__arg_buffer_length
{
    return __EXT_NATIVE__discord_social_client_set_lobby_updated_callback(__arg_buffer, __arg_buffer_length);
}
- (double)__EXT_NATIVE__discord_social_client_unlink_channel_from_lobby:(char*)__arg_buffer arg1:(double)__arg_buffer_length
{
    return __EXT_NATIVE__discord_social_client_unlink_channel_from_lobby(__arg_buffer, __arg_buffer_length);
}
- (double)__EXT_NATIVE__discord_social_client_join_linked_lobby_guild:(char*)__arg_buffer arg1:(double)__arg_buffer_length
{
    return __EXT_NATIVE__discord_social_client_join_linked_lobby_guild(__arg_buffer, __arg_buffer_length);
}
- (double)__EXT_NATIVE__discord_social_client_accept_activity_invite:(char*)__arg_buffer arg1:(double)__arg_buffer_length
{
    return __EXT_NATIVE__discord_social_client_accept_activity_invite(__arg_buffer, __arg_buffer_length);
}
- (double)__EXT_NATIVE__discord_social_client_clear_rich_presence
{
    return __EXT_NATIVE__discord_social_client_clear_rich_presence();
}
- (double)__EXT_NATIVE__discord_social_client_register_launch_command:(char*)__arg_buffer arg1:(double)__arg_buffer_length
{
    return __EXT_NATIVE__discord_social_client_register_launch_command(__arg_buffer, __arg_buffer_length);
}
- (double)__EXT_NATIVE__discord_social_client_register_launch_steam_application:(char*)__arg_buffer arg1:(double)__arg_buffer_length
{
    return __EXT_NATIVE__discord_social_client_register_launch_steam_application(__arg_buffer, __arg_buffer_length);
}
- (double)__EXT_NATIVE__discord_social_client_send_activity_invite:(char*)__arg_buffer arg1:(double)__arg_buffer_length
{
    return __EXT_NATIVE__discord_social_client_send_activity_invite(__arg_buffer, __arg_buffer_length);
}
- (double)__EXT_NATIVE__discord_social_client_send_activity_join_request:(char*)__arg_buffer arg1:(double)__arg_buffer_length
{
    return __EXT_NATIVE__discord_social_client_send_activity_join_request(__arg_buffer, __arg_buffer_length);
}
- (double)__EXT_NATIVE__discord_social_client_send_activity_join_request_reply:(char*)__arg_buffer arg1:(double)__arg_buffer_length
{
    return __EXT_NATIVE__discord_social_client_send_activity_join_request_reply(__arg_buffer, __arg_buffer_length);
}
- (double)__EXT_NATIVE__discord_social_client_set_activity_invite_created_callback:(char*)__arg_buffer arg1:(double)__arg_buffer_length
{
    return __EXT_NATIVE__discord_social_client_set_activity_invite_created_callback(__arg_buffer, __arg_buffer_length);
}
- (double)__EXT_NATIVE__discord_social_client_set_activity_invite_updated_callback:(char*)__arg_buffer arg1:(double)__arg_buffer_length
{
    return __EXT_NATIVE__discord_social_client_set_activity_invite_updated_callback(__arg_buffer, __arg_buffer_length);
}
- (double)__EXT_NATIVE__discord_social_client_set_activity_join_callback:(char*)__arg_buffer arg1:(double)__arg_buffer_length
{
    return __EXT_NATIVE__discord_social_client_set_activity_join_callback(__arg_buffer, __arg_buffer_length);
}
- (double)__EXT_NATIVE__discord_social_client_set_activity_join_with_application_callback:(char*)__arg_buffer arg1:(double)__arg_buffer_length
{
    return __EXT_NATIVE__discord_social_client_set_activity_join_with_application_callback(__arg_buffer, __arg_buffer_length);
}
- (double)__EXT_NATIVE__discord_social_client_set_online_status:(char*)__arg_buffer arg1:(double)__arg_buffer_length
{
    return __EXT_NATIVE__discord_social_client_set_online_status(__arg_buffer, __arg_buffer_length);
}
- (double)__EXT_NATIVE__discord_social_client_update_rich_presence:(char*)__arg_buffer arg1:(double)__arg_buffer_length
{
    return __EXT_NATIVE__discord_social_client_update_rich_presence(__arg_buffer, __arg_buffer_length);
}
- (double)__EXT_NATIVE__discord_social_client_accept_discord_friend_request:(char*)__arg_buffer arg1:(double)__arg_buffer_length
{
    return __EXT_NATIVE__discord_social_client_accept_discord_friend_request(__arg_buffer, __arg_buffer_length);
}
- (double)__EXT_NATIVE__discord_social_client_accept_game_friend_request:(char*)__arg_buffer arg1:(double)__arg_buffer_length
{
    return __EXT_NATIVE__discord_social_client_accept_game_friend_request(__arg_buffer, __arg_buffer_length);
}
- (double)__EXT_NATIVE__discord_social_client_block_user:(char*)__arg_buffer arg1:(double)__arg_buffer_length
{
    return __EXT_NATIVE__discord_social_client_block_user(__arg_buffer, __arg_buffer_length);
}
- (double)__EXT_NATIVE__discord_social_client_cancel_discord_friend_request:(char*)__arg_buffer arg1:(double)__arg_buffer_length
{
    return __EXT_NATIVE__discord_social_client_cancel_discord_friend_request(__arg_buffer, __arg_buffer_length);
}
- (double)__EXT_NATIVE__discord_social_client_cancel_game_friend_request:(char*)__arg_buffer arg1:(double)__arg_buffer_length
{
    return __EXT_NATIVE__discord_social_client_cancel_game_friend_request(__arg_buffer, __arg_buffer_length);
}
- (double)__EXT_NATIVE__discord_social_client_get_relationship_handle:(char*)__arg_buffer arg1:(double)__arg_buffer_length arg2:(char*)__ret_buffer arg3:(double)__ret_buffer_length
{
    return __EXT_NATIVE__discord_social_client_get_relationship_handle(__arg_buffer, __arg_buffer_length, __ret_buffer, __ret_buffer_length);
}
- (double)__EXT_NATIVE__discord_social_client_get_relationships:(char*)__ret_buffer arg1:(double)__ret_buffer_length
{
    return __EXT_NATIVE__discord_social_client_get_relationships(__ret_buffer, __ret_buffer_length);
}
- (double)__EXT_NATIVE__discord_social_client_get_relationships_by_group:(char*)__arg_buffer arg1:(double)__arg_buffer_length arg2:(char*)__ret_buffer arg3:(double)__ret_buffer_length
{
    return __EXT_NATIVE__discord_social_client_get_relationships_by_group(__arg_buffer, __arg_buffer_length, __ret_buffer, __ret_buffer_length);
}
- (double)__EXT_NATIVE__discord_social_client_reject_discord_friend_request:(char*)__arg_buffer arg1:(double)__arg_buffer_length
{
    return __EXT_NATIVE__discord_social_client_reject_discord_friend_request(__arg_buffer, __arg_buffer_length);
}
- (double)__EXT_NATIVE__discord_social_client_reject_game_friend_request:(char*)__arg_buffer arg1:(double)__arg_buffer_length
{
    return __EXT_NATIVE__discord_social_client_reject_game_friend_request(__arg_buffer, __arg_buffer_length);
}
- (double)__EXT_NATIVE__discord_social_client_remove_discord_and_game_friend:(char*)__arg_buffer arg1:(double)__arg_buffer_length
{
    return __EXT_NATIVE__discord_social_client_remove_discord_and_game_friend(__arg_buffer, __arg_buffer_length);
}
- (double)__EXT_NATIVE__discord_social_client_remove_game_friend:(char*)__arg_buffer arg1:(double)__arg_buffer_length
{
    return __EXT_NATIVE__discord_social_client_remove_game_friend(__arg_buffer, __arg_buffer_length);
}
- (double)__EXT_NATIVE__discord_social_client_search_friends_by_username:(char*)search_str arg1:(char*)__ret_buffer arg2:(double)__ret_buffer_length
{
    return __EXT_NATIVE__discord_social_client_search_friends_by_username(search_str, __ret_buffer, __ret_buffer_length);
}
- (double)__EXT_NATIVE__discord_social_client_send_discord_friend_request:(char*)__arg_buffer arg1:(double)__arg_buffer_length
{
    return __EXT_NATIVE__discord_social_client_send_discord_friend_request(__arg_buffer, __arg_buffer_length);
}
- (double)__EXT_NATIVE__discord_social_client_send_discord_friend_request_by_id:(char*)__arg_buffer arg1:(double)__arg_buffer_length
{
    return __EXT_NATIVE__discord_social_client_send_discord_friend_request_by_id(__arg_buffer, __arg_buffer_length);
}
- (double)__EXT_NATIVE__discord_social_client_send_game_friend_request:(char*)__arg_buffer arg1:(double)__arg_buffer_length
{
    return __EXT_NATIVE__discord_social_client_send_game_friend_request(__arg_buffer, __arg_buffer_length);
}
- (double)__EXT_NATIVE__discord_social_client_send_game_friend_request_by_id:(char*)__arg_buffer arg1:(double)__arg_buffer_length
{
    return __EXT_NATIVE__discord_social_client_send_game_friend_request_by_id(__arg_buffer, __arg_buffer_length);
}
- (double)__EXT_NATIVE__discord_social_client_set_relationship_created_callback:(char*)__arg_buffer arg1:(double)__arg_buffer_length
{
    return __EXT_NATIVE__discord_social_client_set_relationship_created_callback(__arg_buffer, __arg_buffer_length);
}
- (double)__EXT_NATIVE__discord_social_client_set_relationship_deleted_callback:(char*)__arg_buffer arg1:(double)__arg_buffer_length
{
    return __EXT_NATIVE__discord_social_client_set_relationship_deleted_callback(__arg_buffer, __arg_buffer_length);
}
- (double)__EXT_NATIVE__discord_social_client_set_relationship_groups_updated_callback:(char*)__arg_buffer arg1:(double)__arg_buffer_length
{
    return __EXT_NATIVE__discord_social_client_set_relationship_groups_updated_callback(__arg_buffer, __arg_buffer_length);
}
- (double)__EXT_NATIVE__discord_social_client_unblock_user:(char*)__arg_buffer arg1:(double)__arg_buffer_length
{
    return __EXT_NATIVE__discord_social_client_unblock_user(__arg_buffer, __arg_buffer_length);
}
- (double)__EXT_NATIVE__discord_social_client_get_current_user:(char*)__ret_buffer arg1:(double)__ret_buffer_length
{
    return __EXT_NATIVE__discord_social_client_get_current_user(__ret_buffer, __ret_buffer_length);
}
- (double)__EXT_NATIVE__discord_social_client_get_discord_client_connected_user:(char*)__arg_buffer arg1:(double)__arg_buffer_length
{
    return __EXT_NATIVE__discord_social_client_get_discord_client_connected_user(__arg_buffer, __arg_buffer_length);
}
- (double)__EXT_NATIVE__discord_social_client_get_user:(char*)__arg_buffer arg1:(double)__arg_buffer_length arg2:(char*)__ret_buffer arg3:(double)__ret_buffer_length
{
    return __EXT_NATIVE__discord_social_client_get_user(__arg_buffer, __arg_buffer_length, __ret_buffer, __ret_buffer_length);
}
- (double)__EXT_NATIVE__discord_social_client_set_user_updated_callback:(char*)__arg_buffer arg1:(double)__arg_buffer_length
{
    return __EXT_NATIVE__discord_social_client_set_user_updated_callback(__arg_buffer, __arg_buffer_length);
}
- (char*)__EXT_NATIVE__discord_social_client_error_to_string:(char*)__arg_buffer arg1:(double)__arg_buffer_length
{
    return __EXT_NATIVE__discord_social_client_error_to_string(__arg_buffer, __arg_buffer_length);
}
- (char*)__EXT_NATIVE__discord_social_client_get_default_audio_device_id
{
    return __EXT_NATIVE__discord_social_client_get_default_audio_device_id();
}
- (char*)__EXT_NATIVE__discord_social_client_get_default_communication_scopes
{
    return __EXT_NATIVE__discord_social_client_get_default_communication_scopes();
}
- (char*)__EXT_NATIVE__discord_social_client_get_default_presence_scopes
{
    return __EXT_NATIVE__discord_social_client_get_default_presence_scopes();
}
- (char*)__EXT_NATIVE__discord_social_client_get_version_hash
{
    return __EXT_NATIVE__discord_social_client_get_version_hash();
}
- (double)__EXT_NATIVE__discord_social_client_get_version_major
{
    return __EXT_NATIVE__discord_social_client_get_version_major();
}
- (double)__EXT_NATIVE__discord_social_client_get_version_minor
{
    return __EXT_NATIVE__discord_social_client_get_version_minor();
}
- (double)__EXT_NATIVE__discord_social_client_get_version_patch
{
    return __EXT_NATIVE__discord_social_client_get_version_patch();
}
- (double)__EXT_NATIVE__discord_social_client_get_application_id:(char*)__ret_buffer arg1:(double)__ret_buffer_length
{
    return __EXT_NATIVE__discord_social_client_get_application_id(__ret_buffer, __ret_buffer_length);
}
- (double)__EXT_NATIVE__discord_social_client_set_application_id:(char*)__arg_buffer arg1:(double)__arg_buffer_length
{
    return __EXT_NATIVE__discord_social_client_set_application_id(__arg_buffer, __arg_buffer_length);
}
- (double)__EXT_NATIVE__discord_social_client_is_discord_app_installed:(char*)__arg_buffer arg1:(double)__arg_buffer_length
{
    return __EXT_NATIVE__discord_social_client_is_discord_app_installed(__arg_buffer, __arg_buffer_length);
}
- (double)__EXT_NATIVE__discord_social_client_open_connected_games_settings_in_discord:(char*)__arg_buffer arg1:(double)__arg_buffer_length
{
    return __EXT_NATIVE__discord_social_client_open_connected_games_settings_in_discord(__arg_buffer, __arg_buffer_length);
}
- (char*)__EXT_NATIVE__discord_social_client_status_to_string:(char*)__arg_buffer arg1:(double)__arg_buffer_length
{
    return __EXT_NATIVE__discord_social_client_status_to_string(__arg_buffer, __arg_buffer_length);
}
- (char*)__EXT_NATIVE__discord_social_client_thread_to_string:(char*)__arg_buffer arg1:(double)__arg_buffer_length
{
    return __EXT_NATIVE__discord_social_client_thread_to_string(__arg_buffer, __arg_buffer_length);
}
- (double)__EXT_NATIVE__discord_social_call_get_local_mute:(char*)__arg_buffer arg1:(double)__arg_buffer_length
{
    return __EXT_NATIVE__discord_social_call_get_local_mute(__arg_buffer, __arg_buffer_length);
}
- (double)__EXT_NATIVE__discord_social_call_get_participant_volume:(char*)__arg_buffer arg1:(double)__arg_buffer_length
{
    return __EXT_NATIVE__discord_social_call_get_participant_volume(__arg_buffer, __arg_buffer_length);
}
- (double)__EXT_NATIVE__discord_social_call_get_ptt_release_delay:(char*)__arg_buffer arg1:(double)__arg_buffer_length
{
    return __EXT_NATIVE__discord_social_call_get_ptt_release_delay(__arg_buffer, __arg_buffer_length);
}
- (double)__EXT_NATIVE__discord_social_call_get_vad_threshold:(char*)__arg_buffer arg1:(double)__arg_buffer_length arg2:(char*)__ret_buffer arg3:(double)__ret_buffer_length
{
    return __EXT_NATIVE__discord_social_call_get_vad_threshold(__arg_buffer, __arg_buffer_length, __ret_buffer, __ret_buffer_length);
}
- (double)__EXT_NATIVE__discord_social_call_get_voice_state_handle:(char*)__arg_buffer arg1:(double)__arg_buffer_length arg2:(char*)__ret_buffer arg3:(double)__ret_buffer_length
{
    return __EXT_NATIVE__discord_social_call_get_voice_state_handle(__arg_buffer, __arg_buffer_length, __ret_buffer, __ret_buffer_length);
}
- (double)__EXT_NATIVE__discord_social_call_set_audio_mode:(char*)__arg_buffer arg1:(double)__arg_buffer_length
{
    return __EXT_NATIVE__discord_social_call_set_audio_mode(__arg_buffer, __arg_buffer_length);
}
- (double)__EXT_NATIVE__discord_social_call_set_local_mute:(char*)__arg_buffer arg1:(double)__arg_buffer_length
{
    return __EXT_NATIVE__discord_social_call_set_local_mute(__arg_buffer, __arg_buffer_length);
}
- (double)__EXT_NATIVE__discord_social_call_set_on_voice_state_changed_callback:(char*)__arg_buffer arg1:(double)__arg_buffer_length
{
    return __EXT_NATIVE__discord_social_call_set_on_voice_state_changed_callback(__arg_buffer, __arg_buffer_length);
}
- (double)__EXT_NATIVE__discord_social_call_set_participant_changed_callback:(char*)__arg_buffer arg1:(double)__arg_buffer_length
{
    return __EXT_NATIVE__discord_social_call_set_participant_changed_callback(__arg_buffer, __arg_buffer_length);
}
- (double)__EXT_NATIVE__discord_social_call_set_participant_volume:(char*)__arg_buffer arg1:(double)__arg_buffer_length
{
    return __EXT_NATIVE__discord_social_call_set_participant_volume(__arg_buffer, __arg_buffer_length);
}
- (double)__EXT_NATIVE__discord_social_call_set_ptt_active:(char*)__arg_buffer arg1:(double)__arg_buffer_length
{
    return __EXT_NATIVE__discord_social_call_set_ptt_active(__arg_buffer, __arg_buffer_length);
}
- (double)__EXT_NATIVE__discord_social_call_set_ptt_release_delay:(char*)__arg_buffer arg1:(double)__arg_buffer_length
{
    return __EXT_NATIVE__discord_social_call_set_ptt_release_delay(__arg_buffer, __arg_buffer_length);
}
- (double)__EXT_NATIVE__discord_social_call_set_self_deaf:(char*)__arg_buffer arg1:(double)__arg_buffer_length
{
    return __EXT_NATIVE__discord_social_call_set_self_deaf(__arg_buffer, __arg_buffer_length);
}
- (double)__EXT_NATIVE__discord_social_call_set_self_mute:(char*)__arg_buffer arg1:(double)__arg_buffer_length
{
    return __EXT_NATIVE__discord_social_call_set_self_mute(__arg_buffer, __arg_buffer_length);
}
- (double)__EXT_NATIVE__discord_social_call_set_speaking_status_changed_callback:(char*)__arg_buffer arg1:(double)__arg_buffer_length
{
    return __EXT_NATIVE__discord_social_call_set_speaking_status_changed_callback(__arg_buffer, __arg_buffer_length);
}
- (double)__EXT_NATIVE__discord_social_call_set_status_changed_callback:(char*)__arg_buffer arg1:(double)__arg_buffer_length
{
    return __EXT_NATIVE__discord_social_call_set_status_changed_callback(__arg_buffer, __arg_buffer_length);
}
- (double)__EXT_NATIVE__discord_social_call_set_vad_threshold:(char*)__arg_buffer arg1:(double)__arg_buffer_length
{
    return __EXT_NATIVE__discord_social_call_set_vad_threshold(__arg_buffer, __arg_buffer_length);
}
- (double)__EXT_NATIVE__discord_social_client_remove_device_change_callback
{
    return __EXT_NATIVE__discord_social_client_remove_device_change_callback();
}
- (double)__EXT_NATIVE__discord_social_client_remove_no_audio_input_callback
{
    return __EXT_NATIVE__discord_social_client_remove_no_audio_input_callback();
}
- (double)__EXT_NATIVE__discord_social_client_remove_voice_participant_changed_callback
{
    return __EXT_NATIVE__discord_social_client_remove_voice_participant_changed_callback();
}
- (double)__EXT_NATIVE__discord_social_client_remove_authorize_device_screen_closed_callback
{
    return __EXT_NATIVE__discord_social_client_remove_authorize_device_screen_closed_callback();
}
- (double)__EXT_NATIVE__discord_social_client_remove_token_expiration_callback
{
    return __EXT_NATIVE__discord_social_client_remove_token_expiration_callback();
}
- (double)__EXT_NATIVE__discord_social_client_remove_message_created_callback
{
    return __EXT_NATIVE__discord_social_client_remove_message_created_callback();
}
- (double)__EXT_NATIVE__discord_social_client_remove_message_deleted_callback
{
    return __EXT_NATIVE__discord_social_client_remove_message_deleted_callback();
}
- (double)__EXT_NATIVE__discord_social_client_remove_message_updated_callback
{
    return __EXT_NATIVE__discord_social_client_remove_message_updated_callback();
}
- (double)__EXT_NATIVE__discord_social_client_remove_log_callback
{
    return __EXT_NATIVE__discord_social_client_remove_log_callback();
}
- (double)__EXT_NATIVE__discord_social_client_remove_status_changed_callback
{
    return __EXT_NATIVE__discord_social_client_remove_status_changed_callback();
}
- (double)__EXT_NATIVE__discord_social_client_remove_lobby_created_callback
{
    return __EXT_NATIVE__discord_social_client_remove_lobby_created_callback();
}
- (double)__EXT_NATIVE__discord_social_client_remove_lobby_deleted_callback
{
    return __EXT_NATIVE__discord_social_client_remove_lobby_deleted_callback();
}
- (double)__EXT_NATIVE__discord_social_client_remove_lobby_member_added_callback
{
    return __EXT_NATIVE__discord_social_client_remove_lobby_member_added_callback();
}
- (double)__EXT_NATIVE__discord_social_client_remove_lobby_member_removed_callback
{
    return __EXT_NATIVE__discord_social_client_remove_lobby_member_removed_callback();
}
- (double)__EXT_NATIVE__discord_social_client_remove_lobby_member_updated_callback
{
    return __EXT_NATIVE__discord_social_client_remove_lobby_member_updated_callback();
}
- (double)__EXT_NATIVE__discord_social_client_remove_lobby_updated_callback
{
    return __EXT_NATIVE__discord_social_client_remove_lobby_updated_callback();
}
- (double)__EXT_NATIVE__discord_social_client_remove_activity_invite_created_callback
{
    return __EXT_NATIVE__discord_social_client_remove_activity_invite_created_callback();
}
- (double)__EXT_NATIVE__discord_social_client_remove_activity_invite_updated_callback
{
    return __EXT_NATIVE__discord_social_client_remove_activity_invite_updated_callback();
}
- (double)__EXT_NATIVE__discord_social_client_remove_activity_join_callback
{
    return __EXT_NATIVE__discord_social_client_remove_activity_join_callback();
}
- (double)__EXT_NATIVE__discord_social_client_remove_activity_join_with_application_callback
{
    return __EXT_NATIVE__discord_social_client_remove_activity_join_with_application_callback();
}
- (double)__EXT_NATIVE__discord_social_client_remove_authorize_request_callback
{
    return __EXT_NATIVE__discord_social_client_remove_authorize_request_callback();
}
- (double)__EXT_NATIVE__discord_social_client_remove_relationship_created_callback
{
    return __EXT_NATIVE__discord_social_client_remove_relationship_created_callback();
}
- (double)__EXT_NATIVE__discord_social_client_remove_relationship_deleted_callback
{
    return __EXT_NATIVE__discord_social_client_remove_relationship_deleted_callback();
}
- (double)__EXT_NATIVE__discord_social_client_remove_relationship_groups_updated_callback
{
    return __EXT_NATIVE__discord_social_client_remove_relationship_groups_updated_callback();
}
- (double)__EXT_NATIVE__discord_social_client_remove_user_updated_callback
{
    return __EXT_NATIVE__discord_social_client_remove_user_updated_callback();
}
- (double)__EXT_NATIVE__discord_social_call_remove_on_voice_state_changed_callback:(char*)__arg_buffer arg1:(double)__arg_buffer_length
{
    return __EXT_NATIVE__discord_social_call_remove_on_voice_state_changed_callback(__arg_buffer, __arg_buffer_length);
}
- (double)__EXT_NATIVE__discord_social_call_remove_participant_changed_callback:(char*)__arg_buffer arg1:(double)__arg_buffer_length
{
    return __EXT_NATIVE__discord_social_call_remove_participant_changed_callback(__arg_buffer, __arg_buffer_length);
}
- (double)__EXT_NATIVE__discord_social_call_remove_speaking_status_changed_callback:(char*)__arg_buffer arg1:(double)__arg_buffer_length
{
    return __EXT_NATIVE__discord_social_call_remove_speaking_status_changed_callback(__arg_buffer, __arg_buffer_length);
}
- (double)__EXT_NATIVE__discord_social_call_remove_status_changed_callback:(char*)__arg_buffer arg1:(double)__arg_buffer_length
{
    return __EXT_NATIVE__discord_social_call_remove_status_changed_callback(__arg_buffer, __arg_buffer_length);
}
- (double)__EXT_NATIVE__GMDiscordSocial_invocation_handler:(char*)__arg_buffer arg1:(double)__arg_buffer_length
{
    return __EXT_NATIVE__GMDiscordSocial_invocation_handler(__arg_buffer, __arg_buffer_length);
}
- (double)__EXT_NATIVE__GMDiscordSocial_queue_buffer:(char*)__arg_buffer arg1:(double)__arg_buffer_length
{
    return __EXT_NATIVE__GMDiscordSocial_queue_buffer(__arg_buffer, __arg_buffer_length);
}
@end

