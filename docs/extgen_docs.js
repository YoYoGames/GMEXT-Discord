/**
 * @function_partial discord_social_run_callbacks
 * @function_end 
 */

/**
 * @function_partial discord_social_init
 * @param {Struct.DiscordClientCreateOptions} [options]
 * @function_end 
 */

/**
 * @function_partial discord_social_shutdown
 * @function_end 
 */

/**
 * @function_partial discord_social_client_end_call
 * @param {Real} channel_id
 * @param {Function} callback
 * @function_end 
 */

/**
 * @function_partial discord_social_client_end_calls
 * @param {Function} callback
 * @function_end 
 */

/**
 * @function_partial discord_social_client_get_call
 * @param {Real} channel_id
 * @returns {Struct.DiscordCall} 
 * @function_end 
 */

/**
 * @function_partial discord_social_client_get_calls
 * @returns {Array[Struct.DiscordCall]} 
 * @function_end 
 */

/**
 * @function_partial discord_social_client_get_current_input_device
 * @param {Function} callback
 * @function_end 
 */

/**
 * @function_partial discord_social_client_get_current_output_device
 * @param {Function} callback
 * @function_end 
 */

/**
 * @function_partial discord_social_client_get_input_devices
 * @param {Function} callback
 * @function_end 
 */

/**
 * @function_partial discord_social_client_get_input_volume
 * @returns {Real} 
 * @function_end 
 */

/**
 * @function_partial discord_social_client_get_output_devices
 * @param {Function} callback
 * @function_end 
 */

/**
 * @function_partial discord_social_client_get_output_volume
 * @returns {Real} 
 * @function_end 
 */

/**
 * @function_partial discord_social_client_get_self_deaf_all
 * @returns {Bool} 
 * @function_end 
 */

/**
 * @function_partial discord_social_client_get_self_mute_all
 * @returns {Bool} 
 * @function_end 
 */

/**
 * @function_partial discord_social_client_set_automatic_gain_control
 * @param {Bool} on
 * @function_end 
 */

/**
 * @function_partial discord_social_client_set_device_change_callback
 * @param {Function} callback
 * @function_end 
 */

/**
 * @function_partial discord_social_client_set_echo_cancellation
 * @param {Bool} on
 * @function_end 
 */

/**
 * @function_partial discord_social_client_set_input_device
 * @param {String} device_id
 * @param {Function} callback
 * @function_end 
 */

/**
 * @function_partial discord_social_client_set_input_volume
 * @param {Real} vol
 * @function_end 
 */

/**
 * @function_partial discord_social_client_set_no_audio_input_callback
 * @param {Function} callback
 * @function_end 
 */

/**
 * @function_partial discord_social_client_set_no_audio_input_threshold
 * @param {Real} threshold
 * @function_end 
 */

/**
 * @function_partial discord_social_client_set_noise_suppression
 * @param {Bool} on
 * @function_end 
 */

/**
 * @function_partial discord_social_client_set_opus_hardware_coding
 * @param {Bool} encode
 * @param {Bool} decode
 * @function_end 
 */

/**
 * @function_partial discord_social_client_set_output_device
 * @param {String} device_id
 * @param {Function} callback
 * @function_end 
 */

/**
 * @function_partial discord_social_client_set_output_volume
 * @param {Real} vol
 * @function_end 
 */

/**
 * @function_partial discord_social_client_set_self_deaf_all
 * @param {Bool} deaf
 * @function_end 
 */

/**
 * @function_partial discord_social_client_set_self_mute_all
 * @param {Bool} mute
 * @function_end 
 */

/**
 * @function_partial discord_social_client_set_thread_priority
 * @param {Enum.DiscordClientThread} thread
 * @param {Real} priority
 * @function_end 
 */

/**
 * @function_partial discord_social_client_set_voice_participant_changed_callback
 * @param {Function} callback
 * @function_end 
 */

/**
 * @function_partial discord_social_client_show_audio_route_picker
 * @returns {Bool} 
 * @function_end 
 */

/**
 * @function_partial discord_social_client_start_call
 * @param {Real} channel_id
 * @returns {Struct.DiscordCall} 
 * @function_end 
 */

/**
 * @function_partial discord_social_call_audio_should_mute
 * @param {Bool} should_mute
 * @function_end 
 */

/**
 * @function_partial discord_social_client_start_call_with_audio_callbacks
 * @param {Real} lobby_id
 * @param {Function} received_callback
 * @param {Function} captured_callback
 * @returns {Struct.DiscordCall} 
 * @function_end 
 */

/**
 * @function_partial discord_social_call_fetch_received_data
 * @param {Real} lobby_id
 * @param {Real} user_id
 * @param {Buffer} out_buffer
 * @returns {Real} 
 * @function_end 
 */

/**
 * @function_partial discord_social_call_fetch_captured_data
 * @param {Real} lobby_id
 * @param {Buffer} out_buffer
 * @returns {Real} 
 * @function_end 
 */

/**
 * @function_partial discord_social_client_abort_authorize
 * @function_end 
 */

/**
 * @function_partial discord_social_client_abort_get_token_from_device
 * @function_end 
 */

/**
 * @function_partial discord_social_client_create_authorization_code_verifier
 * @returns {String} 
 * @function_end 
 */

/**
 * @function_partial discord_social_client_authorize
 * @param {Struct.DiscordAuthorizationArgs} args
 * @param {Function} callback
 * @function_end 
 */

/**
 * @function_partial discord_social_client_close_authorize_device_screen
 * @function_end 
 */

/**
 * @function_partial discord_social_client_get_provisional_token
 * @param {Real} application_id
 * @param {Enum.DiscordAuthenticationExternalAuthType} token_type
 * @param {String} token
 * @param {Function} callback
 * @function_end 
 */

/**
 * @function_partial discord_social_client_get_token
 * @param {Real} application_id
 * @param {String} code
 * @param {String} code_verifier
 * @param {String} redirect_uri
 * @param {Function} callback
 * @function_end 
 */

/**
 * @function_partial discord_social_client_get_token_from_device
 * @param {Real} client_id
 * @param {String} scopes
 * @param {Function} callback
 * @function_end 
 */

/**
 * @function_partial discord_social_client_get_token_from_device_provisional_merge
 * @param {Real} client_id
 * @param {String} scopes
 * @param {Enum.DiscordAuthenticationExternalAuthType} external_auth_type
 * @param {String} external_auth_token
 * @param {Function} callback
 * @function_end 
 */

/**
 * @function_partial discord_social_client_get_token_from_provisional_merge
 * @param {Real} application_id
 * @param {String} code
 * @param {String} code_verifier
 * @param {String} redirect_uri
 * @param {Enum.DiscordAuthenticationExternalAuthType} external_auth_type
 * @param {String} external_auth_token
 * @param {Function} callback
 * @function_end 
 */

/**
 * @function_partial discord_social_client_is_authenticated
 * @returns {Bool} 
 * @function_end 
 */

/**
 * @function_partial discord_social_client_open_authorize_device_screen
 * @param {Real} client_id
 * @param {String} user_code
 * @function_end 
 */

/**
 * @function_partial discord_social_client_provisional_user_merge_completed
 * @param {Bool} success
 * @function_end 
 */

/**
 * @function_partial discord_social_client_refresh_token
 * @param {Real} application_id
 * @param {String} refresh_token
 * @param {Function} callback
 * @function_end 
 */

/**
 * @function_partial discord_social_client_set_authorize_device_screen_closed_callback
 * @param {Function} callback
 * @function_end 
 */

/**
 * @function_partial discord_social_client_set_game_window_pid
 * @param {Real} pid
 * @function_end 
 */

/**
 * @function_partial discord_social_client_set_token_expiration_callback
 * @param {Function} callback
 * @function_end 
 */

/**
 * @function_partial discord_social_client_update_provisional_account_display_name
 * @param {String} name
 * @param {Function} callback
 * @function_end 
 */

/**
 * @function_partial discord_social_client_update_token
 * @param {Enum.DiscordAuthorizationTokenType} token_type
 * @param {String} token
 * @param {Function} callback
 * @function_end 
 */

/**
 * @function_partial discord_social_client_revoke_token
 * @param {Real} application_id
 * @param {String} token
 * @param {Function} callback
 * @function_end 
 */

/**
 * @function_partial discord_social_client_exchange_child_token
 * @param {String} parent_application_token
 * @param {Real} child_application_id
 * @param {Function} callback
 * @function_end 
 */

/**
 * @function_partial discord_social_client_unmerge_into_provisional_account
 * @param {Real} application_id
 * @param {Enum.DiscordAuthenticationExternalAuthType} external_auth_type
 * @param {String} external_auth_token
 * @param {Function} callback
 * @function_end 
 */

/**
 * @function_partial discord_social_client_register_authorize_request_callback
 * @param {Function} callback
 * @function_end 
 */

/**
 * @function_partial discord_social_client_can_open_message_in_discord
 * @param {Real} message_id
 * @returns {Bool} 
 * @function_end 
 */

/**
 * @function_partial discord_social_client_delete_user_message
 * @param {Real} recipient_id
 * @param {Real} message_id
 * @param {Function} callback
 * @function_end 
 */

/**
 * @function_partial discord_social_client_get_channel_handle
 * @param {Real} channel_id
 * @returns {Struct.DiscordChannelHandle} 
 * @function_end 
 */

/**
 * @function_partial discord_social_client_get_message_handle
 * @param {Real} message_id
 * @returns {Struct.DiscordMessageHandle} 
 * @function_end 
 */

/**
 * @function_partial discord_social_client_open_message_in_discord
 * @param {Real} message_id
 * @param {Function} provisional_user_merge_required_callback
 * @param {Function} open_message_in_discord_callback
 * @function_end 
 */

/**
 * @function_partial discord_social_client_send_lobby_message
 * @param {Real} lobby_id
 * @param {String} content
 * @param {Function} callback
 * @function_end 
 */

/**
 * @function_partial discord_social_client_send_lobby_message_with_metadata
 * @param {Real} lobby_id
 * @param {String} content
 * @param {Struct} metadata
 * @param {Function} callback
 * @function_end 
 */

/**
 * @function_partial discord_social_client_send_user_message
 * @param {Real} recipient_id
 * @param {String} content
 * @param {Function} callback
 * @function_end 
 */

/**
 * @function_partial discord_social_client_send_user_message_with_metadata
 * @param {Real} recipient_id
 * @param {String} content
 * @param {Struct} metadata
 * @param {Function} callback
 * @function_end 
 */

/**
 * @function_partial discord_social_client_set_message_created_callback
 * @param {Function} callback
 * @function_end 
 */

/**
 * @function_partial discord_social_client_set_message_deleted_callback
 * @param {Function} callback
 * @function_end 
 */

/**
 * @function_partial discord_social_client_set_message_updated_callback
 * @param {Function} callback
 * @function_end 
 */

/**
 * @function_partial discord_social_client_set_showing_chat
 * @param {Bool} showing_chat
 * @function_end 
 */

/**
 * @function_partial discord_social_client_edit_user_message
 * @param {Real} recipient_id
 * @param {Real} message_id
 * @param {String} content
 * @param {Function} callback
 * @function_end 
 */

/**
 * @function_partial discord_social_client_get_lobby_messages_with_limit
 * @param {Real} lobby_id
 * @param {Real} limit
 * @param {Function} callback
 * @function_end 
 */

/**
 * @function_partial discord_social_client_get_user_message_summaries
 * @param {Function} callback
 * @function_end 
 */

/**
 * @function_partial discord_social_client_get_user_messages_with_limit
 * @param {Real} recipient_id
 * @param {Real} limit
 * @param {Function} callback
 * @function_end 
 */

/**
 * @function_partial discord_social_client_add_log_callback
 * @param {Enum.DiscordLoggingSeverity} min_severity
 * @param {Function} callback
 * @function_end 
 */

/**
 * @function_partial discord_social_client_add_voice_log_callback
 * @param {Enum.DiscordLoggingSeverity} min_severity
 * @param {Function} callback
 * @function_end 
 */

/**
 * @function_partial discord_social_client_connect
 * @function_end 
 */

/**
 * @function_partial discord_social_client_disconnect
 * @function_end 
 */

/**
 * @function_partial discord_social_client_get_status
 * @returns {Enum.DiscordClientStatus} 
 * @function_end 
 */

/**
 * @function_partial discord_social_client_set_log_dir
 * @param {String} path
 * @param {Enum.DiscordLoggingSeverity} min_severity
 * @returns {Bool} 
 * @function_end 
 */

/**
 * @function_partial discord_social_client_set_status_changed_callback
 * @param {Function} callback
 * @function_end 
 */

/**
 * @function_partial discord_social_client_set_voice_log_dir
 * @param {String} path
 * @param {Enum.DiscordLoggingSeverity} min_severity
 * @function_end 
 */

/**
 * @function_partial discord_social_client_create_or_join_lobby
 * @param {String} secret
 * @param {Function} callback
 * @function_end 
 */

/**
 * @function_partial discord_social_client_create_or_join_lobby_with_metadata
 * @param {String} secret
 * @param {Struct} lobby_metadata_struct
 * @param {Struct} member_metadata_struct
 * @param {Function} callback
 * @function_end 
 */

/**
 * @function_partial discord_social_client_get_guild_channels
 * @param {Real} guild_id
 * @param {Function} callback
 * @function_end 
 */

/**
 * @function_partial discord_social_client_get_lobby_handle
 * @param {Real} lobby_id
 * @returns {Struct.DiscordLobbyHandle} 
 * @function_end 
 */

/**
 * @function_partial discord_social_client_get_lobby_ids
 * @returns {Array[Real]} 
 * @function_end 
 */

/**
 * @function_partial discord_social_client_get_user_guilds
 * @param {Function} callback
 * @function_end 
 */

/**
 * @function_partial discord_social_client_leave_lobby
 * @param {Real} lobby_id
 * @param {Function} callback
 * @function_end 
 */

/**
 * @function_partial discord_social_client_link_channel_to_lobby
 * @param {Real} lobby_id
 * @param {Real} channel_id
 * @param {Function} callback
 * @function_end 
 */

/**
 * @function_partial discord_social_client_set_lobby_created_callback
 * @param {Function} callback
 * @function_end 
 */

/**
 * @function_partial discord_social_client_set_lobby_deleted_callback
 * @param {Function} callback
 * @function_end 
 */

/**
 * @function_partial discord_social_client_set_lobby_member_added_callback
 * @param {Function} callback
 * @function_end 
 */

/**
 * @function_partial discord_social_client_set_lobby_member_removed_callback
 * @param {Function} callback
 * @function_end 
 */

/**
 * @function_partial discord_social_client_set_lobby_member_updated_callback
 * @param {Function} callback
 * @function_end 
 */

/**
 * @function_partial discord_social_client_set_lobby_updated_callback
 * @param {Function} callback
 * @function_end 
 */

/**
 * @function_partial discord_social_client_unlink_channel_from_lobby
 * @param {Real} lobby_id
 * @param {Function} callback
 * @function_end 
 */

/**
 * @function_partial discord_social_client_join_linked_lobby_guild
 * @param {Real} lobby_id
 * @param {Function} provisional_user_merge_required_callback
 * @param {Function} callback
 * @function_end 
 */

/**
 * @function_partial discord_social_client_accept_activity_invite
 * @param {Struct.DiscordActivityInvite} activity_invite
 * @param {Function} callback
 * @function_end 
 */

/**
 * @function_partial discord_social_client_clear_rich_presence
 * @function_end 
 */

/**
 * @function_partial discord_social_client_register_launch_command
 * @param {Real} application_id
 * @param {String} command
 * @returns {Bool} 
 * @function_end 
 */

/**
 * @function_partial discord_social_client_register_launch_steam_application
 * @param {Real} application_id
 * @param {Real} steam_app_id
 * @returns {Bool} 
 * @function_end 
 */

/**
 * @function_partial discord_social_client_send_activity_invite
 * @param {Real} user_id
 * @param {String} content
 * @param {Function} callback
 * @function_end 
 */

/**
 * @function_partial discord_social_client_send_activity_join_request
 * @param {Real} user_id
 * @param {Function} callback
 * @function_end 
 */

/**
 * @function_partial discord_social_client_send_activity_join_request_reply
 * @param {Struct.DiscordActivityInvite} activity_invite
 * @param {Function} callback
 * @function_end 
 */

/**
 * @function_partial discord_social_client_set_activity_invite_created_callback
 * @param {Function} callback
 * @function_end 
 */

/**
 * @function_partial discord_social_client_set_activity_invite_updated_callback
 * @param {Function} callback
 * @function_end 
 */

/**
 * @function_partial discord_social_client_set_activity_join_callback
 * @param {Function} callback
 * @function_end 
 */

/**
 * @function_partial discord_social_client_set_activity_join_with_application_callback
 * @param {Function} callback
 * @function_end 
 */

/**
 * @function_partial discord_social_client_set_online_status
 * @param {Enum.DiscordClientStatus} status
 * @param {Function} callback
 * @function_end 
 */

/**
 * @function_partial discord_social_client_update_rich_presence
 * @param {Struct.DiscordActivity} activity
 * @param {Function} callback
 * @function_end 
 */

/**
 * @function_partial discord_social_client_accept_discord_friend_request
 * @param {Real} user_id
 * @param {Function} callback
 * @function_end 
 */

/**
 * @function_partial discord_social_client_accept_game_friend_request
 * @param {Real} user_id
 * @param {Function} callback
 * @function_end 
 */

/**
 * @function_partial discord_social_client_block_user
 * @param {Real} user_id
 * @param {Function} callback
 * @function_end 
 */

/**
 * @function_partial discord_social_client_cancel_discord_friend_request
 * @param {Real} user_id
 * @param {Function} callback
 * @function_end 
 */

/**
 * @function_partial discord_social_client_cancel_game_friend_request
 * @param {Real} user_id
 * @param {Function} callback
 * @function_end 
 */

/**
 * @function_partial discord_social_client_get_relationship_handle
 * @param {Real} user_id
 * @returns {Struct.DiscordRelationshipHandle} 
 * @function_end 
 */

/**
 * @function_partial discord_social_client_get_relationships
 * @returns {Array[Struct.DiscordRelationshipHandle]} 
 * @function_end 
 */

/**
 * @function_partial discord_social_client_get_relationships_by_group
 * @param {Enum.DiscordRelationshipGroupType} group_type
 * @returns {Array[Struct.DiscordRelationshipHandle]} 
 * @function_end 
 */

/**
 * @function_partial discord_social_client_reject_discord_friend_request
 * @param {Real} user_id
 * @param {Function} callback
 * @function_end 
 */

/**
 * @function_partial discord_social_client_reject_game_friend_request
 * @param {Real} user_id
 * @param {Function} callback
 * @function_end 
 */

/**
 * @function_partial discord_social_client_remove_discord_and_game_friend
 * @param {Real} user_id
 * @param {Function} callback
 * @function_end 
 */

/**
 * @function_partial discord_social_client_remove_game_friend
 * @param {Real} user_id
 * @param {Function} callback
 * @function_end 
 */

/**
 * @function_partial discord_social_client_search_friends_by_username
 * @param {String} search_str
 * @returns {Array[Struct.DiscordUserHandle]} 
 * @function_end 
 */

/**
 * @function_partial discord_social_client_send_discord_friend_request
 * @param {String} username
 * @param {Function} callback
 * @function_end 
 */

/**
 * @function_partial discord_social_client_send_discord_friend_request_by_id
 * @param {Real} user_id
 * @param {Function} callback
 * @function_end 
 */

/**
 * @function_partial discord_social_client_send_game_friend_request
 * @param {String} username
 * @param {Function} callback
 * @function_end 
 */

/**
 * @function_partial discord_social_client_send_game_friend_request_by_id
 * @param {Real} user_id
 * @param {Function} callback
 * @function_end 
 */

/**
 * @function_partial discord_social_client_set_relationship_created_callback
 * @param {Function} callback
 * @function_end 
 */

/**
 * @function_partial discord_social_client_set_relationship_deleted_callback
 * @param {Function} callback
 * @function_end 
 */

/**
 * @function_partial discord_social_client_set_relationship_groups_updated_callback
 * @param {Function} callback
 * @function_end 
 */

/**
 * @function_partial discord_social_client_unblock_user
 * @param {Real} user_id
 * @param {Function} callback
 * @function_end 
 */

/**
 * @function_partial discord_social_client_get_current_user
 * @returns {Struct.DiscordUserHandle} 
 * @function_end 
 */

/**
 * @function_partial discord_social_client_get_discord_client_connected_user
 * @param {Real} application_id
 * @param {Function} callback
 * @function_end 
 */

/**
 * @function_partial discord_social_client_get_user
 * @param {Real} user_id
 * @returns {Struct.DiscordUserHandle} 
 * @function_end 
 */

/**
 * @function_partial discord_social_client_set_user_updated_callback
 * @param {Function} callback
 * @function_end 
 */

/**
 * @function_partial discord_social_client_error_to_string
 * @param {Enum.DiscordClientError} error
 * @returns {String} 
 * @function_end 
 */

/**
 * @function_partial discord_social_client_get_default_audio_device_id
 * @returns {String} 
 * @function_end 
 */

/**
 * @function_partial discord_social_client_get_default_communication_scopes
 * @returns {String} 
 * @function_end 
 */

/**
 * @function_partial discord_social_client_get_default_presence_scopes
 * @returns {String} 
 * @function_end 
 */

/**
 * @function_partial discord_social_client_get_version_hash
 * @returns {String} 
 * @function_end 
 */

/**
 * @function_partial discord_social_client_get_version_major
 * @returns {Real} 
 * @function_end 
 */

/**
 * @function_partial discord_social_client_get_version_minor
 * @returns {Real} 
 * @function_end 
 */

/**
 * @function_partial discord_social_client_get_version_patch
 * @returns {Real} 
 * @function_end 
 */

/**
 * @function_partial discord_social_client_get_application_id
 * @returns {Real} 
 * @function_end 
 */

/**
 * @function_partial discord_social_client_set_application_id
 * @param {Real} application_id
 * @function_end 
 */

/**
 * @function_partial discord_social_client_is_discord_app_installed
 * @param {Function} callback
 * @function_end 
 */

/**
 * @function_partial discord_social_client_open_connected_games_settings_in_discord
 * @param {Function} callback
 * @function_end 
 */

/**
 * @function_partial discord_social_client_status_to_string
 * @param {Enum.DiscordClientStatus} status
 * @returns {String} 
 * @function_end 
 */

/**
 * @function_partial discord_social_client_thread_to_string
 * @param {Enum.DiscordClientThread} thread
 * @returns {String} 
 * @function_end 
 */

/**
 * @function_partial discord_social_call_get_local_mute
 * @param {Real} channel_id
 * @param {Real} user_id
 * @returns {Bool} 
 * @function_end 
 */

/**
 * @function_partial discord_social_call_get_participant_volume
 * @param {Real} channel_id
 * @param {Real} user_id
 * @returns {Real} 
 * @function_end 
 */

/**
 * @function_partial discord_social_call_get_ptt_release_delay
 * @param {Real} channel_id
 * @returns {Real} 
 * @function_end 
 */

/**
 * @function_partial discord_social_call_get_vad_threshold
 * @param {Real} channel_id
 * @returns {Struct.DiscordVADThresholdSettings} 
 * @function_end 
 */

/**
 * @function_partial discord_social_call_get_voice_state_handle
 * @param {Real} channel_id
 * @param {Real} user_id
 * @returns {Struct.DiscordVoiceStateHandle} 
 * @function_end 
 */

/**
 * @function_partial discord_social_call_set_audio_mode
 * @param {Real} channel_id
 * @param {Enum.DiscordAudioModeType} audio_mode
 * @returns {Bool} 
 * @function_end 
 */

/**
 * @function_partial discord_social_call_set_local_mute
 * @param {Real} channel_id
 * @param {Real} user_id
 * @param {Bool} mute
 * @returns {Bool} 
 * @function_end 
 */

/**
 * @function_partial discord_social_call_set_on_voice_state_changed_callback
 * @param {Real} channel_id
 * @param {Function} callback
 * @returns {Bool} 
 * @function_end 
 */

/**
 * @function_partial discord_social_call_set_participant_changed_callback
 * @param {Real} channel_id
 * @param {Function} callback
 * @returns {Bool} 
 * @function_end 
 */

/**
 * @function_partial discord_social_call_set_participant_volume
 * @param {Real} channel_id
 * @param {Real} user_id
 * @param {Real} vol
 * @returns {Bool} 
 * @function_end 
 */

/**
 * @function_partial discord_social_call_set_ptt_active
 * @param {Real} channel_id
 * @param {Bool} active
 * @returns {Bool} 
 * @function_end 
 */

/**
 * @function_partial discord_social_call_set_ptt_release_delay
 * @param {Real} channel_id
 * @param {Real} release_delay_ms
 * @returns {Bool} 
 * @function_end 
 */

/**
 * @function_partial discord_social_call_set_self_deaf
 * @param {Real} channel_id
 * @param {Bool} deaf
 * @returns {Bool} 
 * @function_end 
 */

/**
 * @function_partial discord_social_call_set_self_mute
 * @param {Real} channel_id
 * @param {Bool} mute
 * @returns {Bool} 
 * @function_end 
 */

/**
 * @function_partial discord_social_call_set_speaking_status_changed_callback
 * @param {Real} channel_id
 * @param {Function} callback
 * @returns {Bool} 
 * @function_end 
 */

/**
 * @function_partial discord_social_call_set_status_changed_callback
 * @param {Real} channel_id
 * @param {Function} callback
 * @returns {Bool} 
 * @function_end 
 */

/**
 * @function_partial discord_social_call_set_vad_threshold
 * @param {Real} channel_id
 * @param {Bool} automatic
 * @param {Real} threshold
 * @returns {Bool} 
 * @function_end 
 */

/**
 * @function_partial discord_social_client_remove_device_change_callback
 * @function_end 
 */

/**
 * @function_partial discord_social_client_remove_no_audio_input_callback
 * @function_end 
 */

/**
 * @function_partial discord_social_client_remove_voice_participant_changed_callback
 * @function_end 
 */

/**
 * @function_partial discord_social_client_remove_authorize_device_screen_closed_callback
 * @function_end 
 */

/**
 * @function_partial discord_social_client_remove_token_expiration_callback
 * @function_end 
 */

/**
 * @function_partial discord_social_client_remove_message_created_callback
 * @function_end 
 */

/**
 * @function_partial discord_social_client_remove_message_deleted_callback
 * @function_end 
 */

/**
 * @function_partial discord_social_client_remove_message_updated_callback
 * @function_end 
 */

/**
 * @function_partial discord_social_client_remove_log_callback
 * @function_end 
 */

/**
 * @function_partial discord_social_client_remove_status_changed_callback
 * @function_end 
 */

/**
 * @function_partial discord_social_client_remove_lobby_created_callback
 * @function_end 
 */

/**
 * @function_partial discord_social_client_remove_lobby_deleted_callback
 * @function_end 
 */

/**
 * @function_partial discord_social_client_remove_lobby_member_added_callback
 * @function_end 
 */

/**
 * @function_partial discord_social_client_remove_lobby_member_removed_callback
 * @function_end 
 */

/**
 * @function_partial discord_social_client_remove_lobby_member_updated_callback
 * @function_end 
 */

/**
 * @function_partial discord_social_client_remove_lobby_updated_callback
 * @function_end 
 */

/**
 * @function_partial discord_social_client_remove_activity_invite_created_callback
 * @function_end 
 */

/**
 * @function_partial discord_social_client_remove_activity_invite_updated_callback
 * @function_end 
 */

/**
 * @function_partial discord_social_client_remove_activity_join_callback
 * @function_end 
 */

/**
 * @function_partial discord_social_client_remove_activity_join_with_application_callback
 * @function_end 
 */

/**
 * @function_partial discord_social_client_remove_authorize_request_callback
 * @function_end 
 */

/**
 * @function_partial discord_social_client_remove_relationship_created_callback
 * @function_end 
 */

/**
 * @function_partial discord_social_client_remove_relationship_deleted_callback
 * @function_end 
 */

/**
 * @function_partial discord_social_client_remove_relationship_groups_updated_callback
 * @function_end 
 */

/**
 * @function_partial discord_social_client_remove_user_updated_callback
 * @function_end 
 */

/**
 * @function_partial discord_social_call_remove_on_voice_state_changed_callback
 * @param {Real} channel_id
 * @function_end 
 */

/**
 * @function_partial discord_social_call_remove_participant_changed_callback
 * @param {Real} channel_id
 * @function_end 
 */

/**
 * @function_partial discord_social_call_remove_speaking_status_changed_callback
 * @param {Real} channel_id
 * @function_end 
 */

/**
 * @function_partial discord_social_call_remove_status_changed_callback
 * @param {Real} channel_id
 * @function_end 
 */

/**
 * @struct_partial DiscordActivityInvite
 * @member {Enum.ActivityActionTypes} type
 * @member {Real} sender_id
 * @member {Real} application_id
 * @member {Real} parent_application_id
 * @member {Real} channel_id
 * @member {Real} message_id
 * @member {Bool} is_valid
 * @member {String} party_id
 * @member {String} session_id
 * @struct_end 
 */

/**
 * @struct_partial DiscordAudioDevice
 * @member {String} id
 * @member {String} name
 * @member {Bool} is_default
 * @struct_end 
 */

/**
 * @struct_partial DiscordRelationshipSnapshot
 * @member {Real} id
 * @member {Enum.DiscordRelationshipType} discord_relationship_type
 * @member {Enum.DiscordRelationshipType} game_relationship_type
 * @member {Bool} is_spam_request
 * @struct_end 
 */

/**
 * @struct_partial DiscordGuildMinimal
 * @member {Real} id
 * @member {String} name
 * @struct_end 
 */

/**
 * @struct_partial DiscordLinkedLobby
 * @member {Real} application_id
 * @member {Real} lobby_id
 * @struct_end 
 */

/**
 * @struct_partial DiscordClientResult
 * @member {String} error
 * @member {Real} error_code
 * @member {Bool} successful
 * @member {Bool} retryable
 * @member {String} response_body
 * @member {Real} status
 * @member {Enum.DiscordErrorType} type
 * @member {Real} retry_after
 * @struct_end 
 */

/**
 * @struct_partial DiscordChannelHandle
 * @member {Real} channel_id
 * @member {String} name
 * @member {Real} type
 * @member {Array[Real]} recipients
 * @struct_end 
 */

/**
 * @struct_partial DiscordAdditionalContent
 * @member {Enum.DiscordAdditionalContentType} type
 * @member {String} title
 * @member {Real} count
 * @struct_end 
 */

/**
 * @struct_partial DiscordLinkedChannel
 * @member {Real} id
 * @member {Real} guild_id
 * @member {String} name
 * @struct_end 
 */

/**
 * @struct_partial DiscordVoiceStateHandle
 * @member {Bool} self_deaf
 * @member {Bool} self_mute
 * @struct_end 
 */

/**
 * @struct_partial DiscordActivityParty
 * @member {String} activity_party_id
 * @member {Real} [current_size]
 * @member {Real} [max_size]
 * @member {Enum.DiscordActivityPartyPrivacy} privacy
 * @struct_end 
 */

/**
 * @struct_partial DiscordActivitySecrets
 * @member {String} join
 * @struct_end 
 */

/**
 * @struct_partial DiscordActivityAssets
 * @member {String} [large_image]
 * @member {String} [large_text]
 * @member {String} [large_url]
 * @member {String} [small_image]
 * @member {String} [small_text]
 * @member {String} [small_url]
 * @member {String} [invite_cover_image]
 * @struct_end 
 */

/**
 * @struct_partial DiscordActivityButton
 * @member {String} label
 * @member {String} url
 * @struct_end 
 */

/**
 * @struct_partial DiscordActivityTimestamps
 * @member {Real} [start]
 * @member {Real} [end]
 * @struct_end 
 */

/**
 * @struct_partial DiscordUserApplicationProfileHandle
 * @member {String} avatar_hash
 * @member {String} metadata
 * @member {String} [provider_id]
 * @member {String} provider_issued_user_id
 * @member {Real} provider_type
 * @member {String} username
 * @struct_end 
 */

/**
 * @struct_partial DiscordUserMessageSummary
 * @member {Real} user_id
 * @member {Real} last_message_id
 * @struct_end 
 */

/**
 * @struct_partial DiscordVADThresholdSettings
 * @member {Bool} automatic
 * @member {Real} vad_threshold
 * @struct_end 
 */

/**
 * @struct_partial DiscordAuthorizationArgs
 * @member {Real} [client_id]
 * @member {String} [scopes]
 * @member {String} [state]
 * @member {String} [nonce]
 * @member {Bool} [use_code_challenge]
 * @struct_end 
 */

/**
 * @struct_partial DiscordClientCreateOptions
 * @member {String} api_base
 * @member {String} web_base
 * @member {Enum.DiscordAudioSystem} experimental_audio_system
 * @member {Bool} experimental_android_prevent_comms_for_bluetooth
 * @member {Real} [cpu_affinity_mask]
 * @struct_end 
 */

/**
 * @struct_partial DiscordGuildChannel
 * @member {Real} id
 * @member {Bool} is_linkable
 * @member {Bool} is_fully_public
 * @member {Bool} is_viewable_and_writeable_by_all_members
 * @member {Struct.DiscordLinkedLobby} [linked_lobby]
 * @member {String} name
 * @member {Real} [parent_id]
 * @member {Real} position
 * @member {Enum.DiscordChannelType} type
 * @struct_end 
 */

/**
 * @struct_partial DiscordCallVoiceStateEntry
 * @member {Real} user_id
 * @member {Struct.DiscordVoiceStateHandle} voice_state_handle
 * @struct_end 
 */

/**
 * @struct_partial DiscordActivity
 * @member {Enum.DiscordActivityTypes} type
 * @member {String} [details]
 * @member {String} [state]
 * @member {String} name
 * @member {Enum.DiscordStatusDisplayTypes} [status_display_type]
 * @member {String} [state_url]
 * @member {String} [details_url]
 * @member {Real} [application_id]
 * @member {Real} [parent_application_id]
 * @member {Struct.DiscordActivityAssets} [assets]
 * @member {Struct.DiscordActivityTimestamps} [timestamps]
 * @member {Enum.DiscordActivityGamePlatforms} [supported_platforms]
 * @member {Struct.DiscordActivityParty} [party]
 * @member {Struct.DiscordActivitySecrets} [secrets]
 * @member {Array[Struct.DiscordActivityButton]} buttons
 * @struct_end 
 */

/**
 * @struct_partial DiscordCall
 * @member {Enum.DiscordAudioModeType} audio_mode
 * @member {Real} channel_id
 * @member {Real} guild_id
 * @member {Array[Real]} participants
 * @member {Bool} ptt_active
 * @member {Real} ptt_release_delay
 * @member {Bool} self_deaf
 * @member {Bool} self_mute
 * @member {Struct.DiscordVADThresholdSettings} vad_threshold
 * @member {Enum.DiscordCallStatus} status
 * @struct_end 
 */

/**
 * @struct_partial DiscordCallInfoHandle
 * @member {Real} channel_id
 * @member {Real} guild_id
 * @member {Array[Real]} participants
 * @member {Array[Struct.DiscordCallVoiceStateEntry]} voice_state_handles
 * @struct_end 
 */

/**
 * @struct_partial DiscordUserHandle
 * @member {Real} id
 * @member {String} username
 * @member {String} display_name
 * @member {String} [avatar]
 * @member {Enum.DiscordAvatarType} avatar_type
 * @member {String} avatar_type_string
 * @member {String} avatar_url
 * @member {String} [global_name]
 * @member {Bool} is_provisional
 * @member {Enum.DiscordStatusType} status
 * @member {Struct.DiscordActivity} [game_activity]
 * @member {Struct.DiscordRelationshipSnapshot} [relationship]
 * @member {Array[Struct.DiscordUserApplicationProfileHandle]} user_application_profiles
 * @struct_end 
 */

/**
 * @struct_partial DiscordRelationshipHandle
 * @member {Real} id
 * @member {Enum.DiscordRelationshipType} discord_relationship_type
 * @member {Enum.DiscordRelationshipType} game_relationship_type
 * @member {Bool} is_spam_request
 * @member {Struct.DiscordUserHandle} [user]
 * @struct_end 
 */

/**
 * @struct_partial DiscordLobbyMemberHandle
 * @member {Real} id
 * @member {Bool} can_link_lobby
 * @member {Bool} connected
 * @member {Struct.DiscordUserHandle} [user]
 * @member {Struct} metadata
 * @struct_end 
 */

/**
 * @struct_partial DiscordLobbyHandle
 * @member {Real} id
 * @member {Array[Real]} lobby_member_ids
 * @member {Array[Struct.DiscordLobbyMemberHandle]} lobby_members
 * @member {Struct.DiscordCallInfoHandle} [call_info_handle]
 * @member {Struct.DiscordLinkedChannel} [linked_channel]
 * @member {Struct} metadata
 * @struct_end 
 */

/**
 * @struct_partial DiscordMessageHandle
 * @member {Real} id
 * @member {Struct.DiscordUserHandle} [author]
 * @member {Real} author_id
 * @member {Struct.DiscordChannelHandle} [channel]
 * @member {Real} channel_id
 * @member {Enum.DiscordDisclosureTypes} [disclosure_type]
 * @member {Struct.DiscordLobbyHandle} [lobby]
 * @member {String} content
 * @member {Real} edited_timestamp
 * @member {Struct} metadata
 * @member {Struct.DiscordAdditionalContent} [additional_content]
 * @member {String} raw_content
 * @member {Struct.DiscordUserHandle} recipient
 * @member {Real} recipient_id
 * @member {Bool} sent_from_game
 * @member {Real} sent_timestamp
 * @member {Real} [application_id]
 * @member {Struct} moderation_metadata
 * @struct_end 
 */

/**
 * @enum_partial DiscordCallError
 * @member None
 * @member SignalingConnectionFailed
 * @member SignalingUnexpectedClose
 * @member VoiceConnectionFailed
 * @member JoinTimeout
 * @member Forbidden
 * @enum_end 
 */

/**
 * @enum_partial DiscordCallStatus
 * @member Disconnected
 * @member Joining
 * @member Connecting
 * @member SignalingConnected
 * @member Connected
 * @member Reconnecting
 * @member Disconnecting
 * @enum_end 
 */

/**
 * @enum_partial DiscordAvatarType
 * @member Gif
 * @member Webp
 * @member Png
 * @member Jpeg
 * @enum_end 
 */

/**
 * @enum_partial DiscordAdditionalContentType
 * @member Other
 * @member Attachment
 * @member Poll
 * @member VoiceMessage
 * @member Thread
 * @member Embed
 * @member Sticker
 * @enum_end 
 */

/**
 * @enum_partial DiscordErrorType
 * @member None
 * @member NetworkError
 * @member HTTPError
 * @member ClientNotReady
 * @member Disabled
 * @member ClientDestroyed
 * @member ValidationError
 * @member Aborted
 * @member AuthorizationFailed
 * @member RPCError
 * @enum_end 
 */

/**
 * @enum_partial DiscordChannelType
 * @member GuildText
 * @member Dm
 * @member GuildVoice
 * @member GroupDm
 * @member GuildCategory
 * @member GuildNews
 * @member GuildStore
 * @member GuildNewsThread
 * @member GuildPublicThread
 * @member GuildPrivateThread
 * @member GuildStageVoice
 * @member GuildDirectory
 * @member GuildForum
 * @member GuildMedia
 * @member Lobby
 * @member EphemeralDm
 * @enum_end 
 */

/**
 * @enum_partial DiscordStatusDisplayTypes
 * @member Name
 * @member State
 * @member Details
 * @enum_end 
 */

/**
 * @enum_partial DiscordActivityGamePlatforms
 * @member Desktop
 * @member Xbox
 * @member Samsung
 * @member IOS
 * @member Android
 * @member Embedded
 * @member PS4
 * @member PS5
 * @enum_end 
 */

/**
 * @enum_partial DiscordAuthenticationExternalAuthType
 * @member OIDC
 * @member EpicOnlineServicesAccessToken
 * @member EpicOnlineServicesIdToken
 * @member SteamSessionTicket
 * @enum_end 
 */

/**
 * @enum_partial DiscordStatusType
 * @member Online
 * @member Offline
 * @member Blocked
 * @member Idle
 * @member Dnd
 * @member Invisible
 * @member Streaming
 * @member Unknown
 * @enum_end 
 */

/**
 * @enum_partial DiscordActivityTypes
 * @member Playing
 * @member Streaming
 * @member Listening
 * @member Watching
 * @member CustomStatus
 * @member Competing
 * @member HangStatus
 * @enum_end 
 */

/**
 * @enum_partial DiscordRelationshipType
 * @member None
 * @member Friend
 * @member Blocked
 * @member PendingIncoming
 * @member PendingOutgoing
 * @member Implicit
 * @member Suggestion
 * @enum_end 
 */

/**
 * @enum_partial DiscordRelationshipGroupType
 * @member OnlinePlayingGame
 * @member OnlineElsewhere
 * @member Offline
 * @enum_end 
 */

/**
 * @enum_partial DiscordDisclosureTypes
 * @member MessageDataVisibleOnDiscord
 * @enum_end 
 */

/**
 * @enum_partial DiscordActivityPartyPrivacy
 * @member Private
 * @member Public
 * @enum_end 
 */

/**
 * @enum_partial DiscordClientThread
 * @member Client
 * @member Voice
 * @member Network
 * @enum_end 
 */

/**
 * @enum_partial DiscordClientStatus
 * @member Disconnected
 * @member Connecting
 * @member Connected
 * @member Ready
 * @member Reconnecting
 * @member Disconnecting
 * @member HttpWait
 * @enum_end 
 */

/**
 * @enum_partial ActivityActionTypes
 * @member Invalid
 * @member Join
 * @member JoinRequest
 * @enum_end 
 */

/**
 * @enum_partial DiscordLoggingSeverity
 * @member Verbose
 * @member Info
 * @member Warning
 * @member Error
 * @member None
 * @enum_end 
 */

/**
 * @enum_partial DiscordClientError
 * @member None
 * @member ConnectionFailed
 * @member UnexpectedClose
 * @member ConnectionCanceled
 * @enum_end 
 */

/**
 * @enum_partial DiscordAuthorizationTokenType
 * @member User
 * @member Bearer
 * @enum_end 
 */

/**
 * @enum_partial DiscordAudioModeType
 * @member ModeUninit
 * @member ModeVAD
 * @member ModePTT
 * @enum_end 
 */

/**
 * @enum_partial DiscordAudioSystem
 * @member Standard
 * @member Game
 * @enum_end 
 */

/**
 * @const_partial macros
 * @const_end 
 */

