// Modules

/**
 * @module call
 * @title Call
 * @desc **Discord Class**: [discordpp::Call](https://discord.com/developers/docs/social-sdk/classdiscordpp_1_1Call.html)
 * 
 * The Call module contains functions to manage an active voice session in a Lobby.
 * 
 * @section_func
 * @desc These are the functions in the Call module:
 * @ref discord_social_call_*
 * @section_end
 * 
 * @module_end
 */

// Functions

/**
 * @function discord_social_call_set_audio_mode
 * @desc **Discord Function**: [discordpp::Call::SetAudioMode()](https://discord.com/developers/docs/social-sdk/classdiscordpp_1_1Call.html#ae6613253763877950408d29f4d68d13f)
 * 
 * This function sets whether to use voice auto detection or push to talk for the current user on this call.
 * 
 * If using push to talk you should call ${function.discord_social_call_set_ptt_active} whenever the user presses their confused push to talk key.
 * 
 * @param {Real} channel_id The channel ID.
 * @param {Enum.DiscordAudioModeType} audio_mode The audio mode type.
 * 
 * @returns {Bool}
 * 
 * @function_end
 */

/**
 * @function discord_social_call_set_local_mute
 * @desc **Discord Function**: [discordpp::Call::SetLocalMute()](https://discord.com/developers/docs/social-sdk/classdiscordpp_1_1Call.html#aaf8e7728b15da5d1be8d8b4258225171)
 * 
 * This function locally mutes the given user ID, so that the current user cannot hear them anymore.
 * 
 * Does not affect whether the given user is muted for any other connected clients.
 * 
 * @param {Real} channel_id The channel ID.
 * @param {Real} user_id The user ID.
 * @param {Bool} mute Whether to mute the user (`true`) or not (`false`).
 * 
 * @returns {Bool}
 * 
 * @function_end
 */

/**
 * @function discord_social_call_get_local_mute
 * @desc **Discord Function**: [discordpp::Call::GetLocalMute](https://discord.com/developers/docs/social-sdk/classdiscordpp_1_1Call.html#ae71f2a124c13e20f55bf1e6dee5017c3)
 * 
 * This function returns whether the current user has locally muted the given `user_id` for themselves.
 * 
 * @param {Real} channel_id The channel ID.
 * @param {Real} user_id The user ID to check.
 * 
 * @returns {Bool}
 * @function_end 
 */

/**
 * @function discord_social_call_get_voice_state_handle
 * @desc **Discord Function**: [discordpp::Call::GetVoiceStateHandle](https://discord.com/developers/docs/social-sdk/classdiscordpp_1_1Call.html#a5b162505a2a076a14ff977ba0377f7a2)
 * 
 * This function returns a reference to the VoiceStateHandle for the user ID of the given call participant.
 * 
 * The [VoiceStateHandle](https://discord.com/developers/docs/social-sdk/classdiscordpp_1_1VoiceStateHandle.html) allows other users to know if the target user has muted or deafened themselves.
 * 
 * @param {Real} channel_id The channel ID.
 * @param {Real} user_id The user ID.
 * 
 * @returns {Struct.DiscordVoiceStateHandle}
 * 
 * @function_end
 */

/**
 * @function discord_social_call_set_on_voice_state_changed_callback
 * @desc **Discord Function**: [discordpp::Call::SetOnVoiceStateChangedCallback()](https://discord.com/developers/docs/social-sdk/classdiscordpp_1_1Call.html#a257a02bdfd79a6443eb810cb687e098a)
 * 
 * This function sets a callback function to generally be invoked whenever a field on a VoiceStateHandle object for a user would have changed.
 * 
 * For example when a user mutes themselves, all other connected clients will invoke the VoiceStateChanged callback, because the "self mute" field will be `true` now. The callback is generally not invoked when users join or leave channels.
 * 
 * @param {Real} channel_id The channel ID.
 * @param {Function} callback The callback function to use.
 * 
 * @returns {Bool}
 * 
 * @event callback
 * @desc Triggered when a field on a VoiceStateHandle object for a user would have changed.
 * @member {Real} user_id The user ID.
 * @event_end
 * 
 * @function_end
 */

/**
 * @function discord_social_call_set_participant_changed_callback
 * @desc **Discord Function**: [discordpp::Call::SetParticipantChangedCallback()](https://discord.com/developers/docs/social-sdk/classdiscordpp_1_1Call.html#acb20d338a04abec2369217f41c22c0e5)
 * 
 * This function sets a callback function to be invoked whenever some joins or leaves a voice call.
 * 
 * @param {Real} channel_id The channel ID.
 * @param {Function} callback The callback function to use.
 * 
 * @returns {Bool}
 * 
 * @event callback
 * @desc Triggered when someone joins or leaves a voice call.
 * @member {Real} user_id The user ID.
 * @member {Bool} added `true` if the participant was added, `false` otherwise.
 * @event_end
 * 
 * @function_end
 */

/**
 * @function discord_social_call_set_participant_volume
 * @desc **Discord Function**: [discordpp::Call::SetParticipantVolume()](https://discord.com/developers/docs/social-sdk/classdiscordpp_1_1Call.html#ad974fadbe89c453e4d8a3f9824e21ceb)
 * 
 * This function locally changes the playout volume of the given user ID.
 * 
 * Does not affect the volume of this user for any other connected clients. The range of volume is [0, 200], where 100 indicate default audio volume of the playback device.
 * 
 * @param {Real} channel_id The channel ID.
 * @param {Real} user_id The user ID.
 * @param {Real} vol The volume.
 * 
 * @returns {Bool}
 * 
 * @function_end
 */

/**
 * @function discord_social_call_get_participant_volume
 * @desc **Discord Function**: [discordpp::Call::GetParticipantVolume](https://discord.com/developers/docs/social-sdk/classdiscordpp_1_1Call.html#aeff7fa60c6029ffde272160bf1f16748)
 * 
 * This function returns the locally set playout volume of the given `user_id`.
 * 
 * Does not affect the volume of this user for any other connected clients. The range of volume is [0, 200], where 100 indicates default audio volume of the playback device.
 * 
 * @param {Real} channel_id The channel ID.
 * @param {Real} user_id The user ID.
 * @returns {Real} 
 * @function_end 
 */

/**
 * @function discord_social_call_set_ptt_active
 * @desc **Discord Function**: [discordpp::Call::SetPTTActive()](https://discord.com/developers/docs/social-sdk/classdiscordpp_1_1Call.html#ac442b1d69b9256abbb188583c0c81c41)
 * 
 * When push to talk is enabled, this should be called whenever the user pushes or releases their configured push to talk key. This key must be configured in the game, the SDK does not handle keybinds itself.
 * 
 * @param {Real} channel_id The channel ID.
 * @param {Bool} active Whether push to talk should be active.
 * 
 * @returns {Bool}
 * 
 * @function_end
 */

/**
 * @function discord_social_call_set_ptt_release_delay
 * @desc **Discord Function**: [discordpp::Call::SetPTTReleaseDelay()](https://discord.com/developers/docs/social-sdk/classdiscordpp_1_1Call.html#ad3d36056f2b19a98d5efb99897753b66)
 * 
 * If set, extends the time that PTT is active after the user releases the PTT key and `discord_social_call_set_ptt_active(false)` is called.
 * 
 * @param {Real} channel_id The channel ID.
 * @param {Real} release_delay_ms The release delay in milliseconds.
 * 
 * @returns {Bool}
 * 
 * @function_end
 */

/**
 * @function discord_social_call_get_ptt_release_delay
 * @desc **Discord Function**: [discordpp::Call::GetPTTReleaseDelay](https://discord.com/developers/docs/social-sdk/classdiscordpp_1_1Call.html#ab8dc6b1527728fecb17f266d5b3e9e6e)
 * 
 * This function returns the time that PTT is active after the user releases the PTT key and `discord_social_call_set_ptt_active(false)` is called.
 * 
 * @param {Real} channel_id The channel ID.
 * 
 * @returns {Real}
 * 
 * @function_end 
 */

/**
 * @function discord_social_call_set_self_deaf
 * @desc **Discord Function**: [discordpp::Call::SetSelfDeaf()](https://discord.com/developers/docs/social-sdk/classdiscordpp_1_1Call.html#a07d67c210f2a4655c6f1d2899c6d32d6)
 * 
 * This function mutes all audio from the currently active call for the current user. They will not be able to hear any other participants, and no other participants will be able to hear the current user either.
 * 
 * @param {Real} channel_id The channel ID.
 * @param {Bool} deaf Whether to mute all audio (`true`) or not (`false`).
 * 
 * @returns {Bool}
 * 
 * @function_end
 */

/**
 * @function discord_social_call_set_self_mute
 * @desc **Discord Function**: [discordpp::Call::SetSelfMute()](https://discord.com/developers/docs/social-sdk/classdiscordpp_1_1Call.html#afa35a5d6a4564df97452df58bb74f617)
 * 
 * This function mutes the current user's microphone so that no other participant in their active calls can hear them.
 * 
 * @param {Real} channel_id The channel ID.
 * @param {Bool} mute Whether to mute the current user's microphone (`true`) or not (`false`).
 * 
 * @returns {Bool}
 * 
 * @function_end
 */

/**
 * @function discord_social_call_set_speaking_status_changed_callback
 * @desc **Discord Function**: [discordpp::Call::SetSpeakingStatusChangedCallback()](https://discord.com/developers/docs/social-sdk/classdiscordpp_1_1Call.html#ab29b68345ffa1d6af3c8321bdc39e9f0)
 * 
 * This function sets a callback function to be invoked whenever a user starts or stops speaking and is passed in the user ID and whether they are currently speaking.
 * 
 * It can be invoked in other cases as well, such as if the priority speaker changes or if the user plays a soundboard sound.
 * 
 * @param {Real} channel_id The channel ID.
 * @param {Function} callback The callback function to use.
 * 
 * @returns {Bool}
 * 
 * @event callback
 * @desc Triggered when a user's speaking status changed.
 * @member {Real} user_id The user ID.
 * @member {Bool} is_playing_sound Whether the user is currently speaking.
 * @event_end
 * 
 * @function_end
 */

/**
 * @function discord_social_call_set_status_changed_callback
 * @desc **Discord Function**: [discordpp::Call::SetStatusChangedCallback()](https://discord.com/developers/docs/social-sdk/classdiscordpp_1_1Call.html#adffbbbd726f05fa574c96635e76c7860)
 * 
 * This function sets a callback function to be invoked when the call status changes, such as when it fully connects or starts reconnecting.
 * 
 * @param {Real} channel_id The channel ID.
 * @param {Function} callback The callback function to use.
 * 
 * @returns {Bool}
 * 
 * @event callback
 * @desc Triggered when the call status changes.
 * @member {Enum.DiscordCallStatus} status The call status.
 * @member {Enum.DiscordCallError} error The error code.
 * @member {Real} error_detail A 32 bit value indicating the detailed error.
 * @event_end
 * 
 * @function_end
 */

/**
 * @function discord_social_call_set_vad_threshold
 * @desc **Discord Function**: [discordpp::Call::SetVADThreshold()](https://discord.com/developers/docs/social-sdk/classdiscordpp_1_1Call.html#a7c3fd83c5dfe37d796e30c5e28c93b6e)
 * 
 * This function customizes the void auto detection thresholds for picking up activity from a user's mic.
 * 
 * * When `automatic` is set to `true`, Discord will automatically detect the appropriate threshold to use.
 * * When `automatic` is set to `false`, the given threshold value will be used.
 * 
 * @param {Real} channel_id The channel ID.
 * @param {Bool} automatic Whether to automatically detect the appropriate threshold to use.
 * @param {Real} threshold The threshold value. Threshold has a range of -100, 0, and defaults to -60.
 * 
 * @returns {Bool}
 * 
 * @function_end
 */

/**
 * @function discord_social_call_get_vad_threshold
 * @desc **Discord Function**: [discordpp::Call::GetVADThreshold](https://discord.com/developers/docs/social-sdk/classdiscordpp_1_1Call.html#a55fbfb0e3333f227bf16801b787f0a63)
 * 
 * This function returns the current configuration for void auto detection thresholds. See the description of the struct for specifics.
 * 
 * @param {Real} channel_id The channel ID.
 * 
 * @returns {Struct.DiscordVADThresholdSettings}
 * 
 * @function_end
 */

/**
 * @function discord_social_call_audio_should_mute
 * @desc **Discord Function**: N / A
 * 
 * This function sets whether audio played by Discord should be muted in the audio received callback (see ${function.discord_social_client_start_call_with_audio_callbacks}). If you process and play the audio yourself you can set this to `true` to mute the audio being played by Discord.
 * 
 * See: [discordpp::Client::UserAudioReceivedCallback](https://discord.com/developers/docs/social-sdk/classdiscordpp_1_1Client.html#a49934aeb3ba5093c2362dedfd1e9ad3b)
 * 
 * @param {Bool} should_mute Whether to mute the audio played by Discord or not.
 * 
 * @function_end
 */

/**
 * @function discord_social_call_fetch_received_data
 * @desc **Discord Function**: N / A
 * 
 * This function fetches received data in a buffer and returns the number of bytes written to the buffer.
 * 
 * In the next frame the `out_buffer` is cleared and writing of new audio starts at the start of the buffer.
 * 
 * [[Note: A call must first have been started using ${function.discord_social_client_start_call_with_audio_callbacks}.]]
 * 
 * @param {Real} lobby_id The lobby ID.
 * @param {Real} user_id The user ID.
 * @param {Buffer} out_buffer The buffer to write the data to (needs to be **at least** samples_per_channel * number_of_channels, where each sample is two bytes).
 * 
 * @returns {Real} 
 * @function_end
 */

/**
 * @function discord_social_call_fetch_captured_data
 * @desc **Discord Function**: N / A
 * 
 * This function fetches captured data in a buffer and returns the number of bytes written to the buffer.
 * 
 * In the next frame the `out_buffer` is cleared and writing of new audio starts at the start of the buffer.
 * 
 * [[Note: A call must first have been started using ${function.discord_social_client_start_call_with_audio_callbacks}.]]
 * 
 * @param {Real} lobby_id The lobby ID.
 * @param {Buffer} out_buffer The buffer to write the data to (needs to be **at least** samples_per_channel * number_of_channels, where each sample is two bytes).
 * 
 * @returns {Real} 
 * @function_end
 */

/**
 * @function discord_social_call_remove_on_voice_state_changed_callback
 * @desc **Discord Function**: N / A
 * 
 * This function removes the callback set with a call to ${function.discord_social_call_set_on_voice_state_changed_callback}.
 * 
 * @param {Real} channel_id The channel ID.
 * @function_end
 */

/**
 * @function discord_social_call_remove_participant_changed_callback
 * @desc **Discord Function**: N / A
 * 
 * This function removes the callback set with a call to ${function.discord_social_call_set_participant_changed_callback}.
 * 
 * @param {Real} channel_id The channel ID.
 * @function_end
 */

/**
 * @function discord_social_call_remove_speaking_status_changed_callback
 * @desc **Discord Function**: N / A
 * 
 * This function removes the callback set with a call to ${function.discord_social_call_set_speaking_status_changed_callback}.
 * 
 * @param {Real} channel_id The channel ID.
 * @function_end
 */

/**
 * @function discord_social_call_remove_status_changed_callback
 * @desc **Discord Function**: N / A
 * 
 * This function removes the callback set with a call to ${function.discord_social_call_set_status_changed_callback}.
 * 
 * @param {Real} channel_id The channel ID.
 * @function_end
 */