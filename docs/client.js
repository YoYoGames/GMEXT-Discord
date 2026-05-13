// Modules

/**
 * @module client
 * @title Client
 * @desc **Discord Class**: [discordpp::Client](https://discord.com/developers/docs/social-sdk/classdiscordpp_1_1Client.html)
 * 
 * The Client module is the main entry point for the Discord Social extension. All functionality is exposed through the functions in this module.
 * 
 * > See the [Discord Social SDK Getting Started](https://discord.com/developers/docs/social-sdk/getting_started.html) for more information on how to use the functions in the Client module.
 * 
 * @section_func
 * @desc These are the functions in the Client module:
 * @ref discord_social_client_*
 * @section_end
 * 
 * @module_end
 */

// Functions

/**
 * @function discord_social_client_get_application_id
 * @desc **Discord Function**: [discordpp::Client::GetApplicationId](https://discord.com/developers/docs/social-sdk/classdiscordpp_1_1Client.html#abe66dd4bf3cbc27961d41e8e11015ff5)
 * 
 * This function is used to get the application ID for the client. This is used to identify the application to the Discord client. This is used for things like authentication, rich presence, and activity invites when not connected with ${function.discord_social_client_connect}. When calling ${function.discord_social_client_connect}, the application ID is set automatically.
 * 
 * @returns {Real} 
 * @function_end 
 */

/**
 * @function discord_social_client_set_application_id
 * @desc **Discord Function**: [discordpp::Client::SetApplicationId](https://discord.com/developers/docs/social-sdk/classdiscordpp_1_1Client.html#ad452335c06b28be0406dab824acccc49)
 * 
 * This function is used to set the application ID for the client. This is used to identify the application to the Discord client. This is used for things like authentication, rich presence, and activity invites when not connected with ${function.discord_social_client_connect}. When calling ${function.discord_social_client_connect}, the application ID is set automatically.
 * 
 * @param {Real} application_id The application ID.
 * 
 * @function_end 
 */

/**
 * @function discord_social_client_end_call
 * @desc **Discord Function**: [discordpp::Client::EndCall()](https://discord.com/developers/docs/social-sdk/classdiscordpp_1_1Client.html#ae69be6fa03b2543c639209acd67b6f25)
 * 
 * This function ends any active call, if any. Any references you have to Call objects are invalid after they are ended, and can be immediately freed.
 * 
 * @param {Real} channel_id The ID of the lobby with which this call is associated.
 * @param {Function} callback The function to call after completion.
 * 
 * @event callback
 * @desc This is triggered when the function completes.
 * @event_end
 * 
 * @function_end
 */

/**
 * @function discord_social_client_end_calls
 * @desc **Discord Function**: [discordpp::Client::EndCalls()](https://discord.com/developers/docs/social-sdk/classdiscordpp_1_1Client.html#a0dc346ff844840166c1cf651070e15b6)
 * 
 * This function ends any active call, if any. Any references you have to Call objects are invalid after they are ended, and can be immediately freed.
 * 
 * @param {Function} callback The function to call after completion.
 * 
 * @event callback
 * @desc This is triggered when the function completes.
 * @event_end
 * 
 * @function_end
 */

/**
 * @function discord_social_client_get_call
 * @desc **Discord Function**: [discordpp::Client::GetCall()](https://discord.com/developers/docs/social-sdk/classdiscordpp_1_1Client.html#a0bd43f93d0ca78d76d967317edfd0fb4)
 * 
 * This function returns a reference to the currently active call, if any.
 * 
 * @param {Real} channel_id The ID of the channel.
 * 
 * @returns {Struct.DiscordCall} 
 * 
 * @function_end
 */

/**
 * @function discord_social_client_get_calls
 * @desc **Discord Function**: [discordpp::Client::GetCalls()](https://discord.com/developers/docs/social-sdk/classdiscordpp_1_1Client.html#a6a69988948b239e11644699e31ef68c4)
 * 
 * This function returns a reference to all currently active calls, if any.
 * 
 * @returns {Array[Struct.DiscordCall]} 
 * 
 * @function_end
 */

/**
 * @function discord_social_client_get_current_input_device
 * @desc **Discord Function**: [discordpp::Client::GetCurrentInputDevice()](https://discord.com/developers/docs/social-sdk/classdiscordpp_1_1Client.html#a8062b4e90fd424b61a1c96ea9b78c661)
 * 
 * This function asynchronously fetches the current audio input device in use by the client.
 * 
 * @param {Function} callback The callback function to trigger on completion.
 * 
 * @event callback
 * @desc This is triggered when the request completes.
 * @member {Struct.DiscordAudioDevice} device Struct holding information on the input device.
 * @event_end
 * 
 * @function_end
 */

/**
 * @function discord_social_client_get_current_output_device
 * @desc **Discord Function**: [discordpp::Client::GetCurrentOutputDevice()](https://discord.com/developers/docs/social-sdk/classdiscordpp_1_1Client.html#ae59bc42c0608dc9b1b8d7dab7eb3e455)
 * 
 * This function asynchronously fetches the current audio output device in use by the client.
 * 
 * @param {Function} callback The callback function to trigger on completion.
 * 
 * @event callback
 * @desc This is triggered when the request completes.
 * @member {Struct.DiscordAudioDevice} device Struct holding information on the output device.
 * @event_end
 * 
 * @function_end
 */

/**
 * @function discord_social_client_get_input_devices
 * @desc **Discord Function**: [discordpp::Client::GetInputDevices()](https://discord.com/developers/docs/social-sdk/classdiscordpp_1_1Client.html#a1ee5c3d6e4efbb49a31177914c789b2b)
 * 
 * This function asynchronously fetches the list of audio input devices available to the user.
 * 
 * @param {Function} callback The callback function to trigger on completion.
 * 
 * @event callback
 * @desc This is triggered when the request completes.
 * @member {Array[Struct.DiscordAudioDevice]} devices An array holding structs with information on each input device.
 * @event_end
 * 
 * @function_end
 */

/**
 * @function discord_social_client_get_input_volume
 * @desc **Discord Function**: [discordpp::Client::GetInputVolume()](https://discord.com/developers/docs/social-sdk/classdiscordpp_1_1Client.html#a8ce90b14a03fb7cb5915c566ea3d27ab)
 * 
 * This function returns the input volume for the current user's microphone.
 * 
 * Input volume is specified as a percentage in the range [0, 100] which represents the perceptual loudness.
 * 
 * @returns {Real}
 * @function_end
 */

/**
 * @function discord_social_client_get_output_devices
 * @desc **Discord Function**: [discordpp::Client::GetOutputDevices()](https://discord.com/developers/docs/social-sdk/classdiscordpp_1_1Client.html#a58f864ff0a0c49be34701f8d0f7bcf72)
 * 
 * This function asynchronously fetches the list of audio output devices available to the user.
 * 
 * @param {Function} callback The callback function to trigger on completion.
 * 
 * @event callback
 * @desc This is triggered when the request completes.
 * @member {Array[Struct.DiscordAudioDevice]} devices An array holding structs with information on each output device.
 * @event_end
 * 
 * @function_end
 */

/**
 * @function discord_social_client_get_output_volume
 * @desc **Discord Function**: [discordpp::Client::GetOutputVolume()](https://discord.com/developers/docs/social-sdk/classdiscordpp_1_1Client.html#a7a6696f8d4a101f45bfd41e55d221333)
 * 
 * This function returns the output volume for the current user.
 * 
 * Output volume is specified as a percentage in the range [0, 200] which represents the perceptual loudness.
 * 
 * @returns {Real}
 * @function_end
 */

/**
 * @function discord_social_client_get_self_deaf_all
 * @desc **Discord Function**: [discordpp::Client::GetSelfDeafAll()](https://discord.com/developers/docs/social-sdk/classdiscordpp_1_1Client.html#ac1e26e0b769557da89a7f1d7c09f1487)
 * 
 * This function returns whether the current user is deafened in all calls.
 * 
 * @returns {Bool}
 * @function_end
 */

/**
 * @function discord_social_client_get_self_mute_all
 * @desc **Discord Function**: [discordpp::Client::GetSelfMuteAll()](https://discord.com/developers/docs/social-sdk/classdiscordpp_1_1Client.html#adf4c02ceb03ab34f2c1c621bfc407cda)
 * 
 * This function returns whether the current user's microphone is muted in all calls.
 * 
 * @returns {Bool}
 * @function_end
 */

/**
 * @function discord_social_client_set_automatic_gain_control
 * @desc **Discord Function**: [discordpp::Client::SetAutomaticGainControl()](https://discord.com/developers/docs/social-sdk/classdiscordpp_1_1Client.html#a818ae7f46b5bd3873dcd51dd3d9fa64d)
 * 
 * When enabled, automatically adjusts the microphone volume to keep it clear and consistent.
 * 
 * Defaults to on.
 * 
 * Generally this shouldn't need to be used unless you are building a voice settings UI for the user to control, similar to Discord's voice settings.
 * 
 * @param {Bool} on Whether to enable or not.
 * @function_end
 */

/**
 * @function discord_social_client_set_device_change_callback
 * @desc **Discord Function**: [discordpp::Client::SetDeviceChangeCallback()](https://discord.com/developers/docs/social-sdk/classdiscordpp_1_1Client.html#a31f683bd8df9f6fdcc384e4678301ef0)
 * 
 * This function sets a callback function to be invoked when Discord detects a change in the available audio devices.
 * 
 * @param {Function} callback The function to use.
 * 
 * @event callback
 * @desc Called on device change.
 * @member {Array[Struct.DiscordAudioDevice]} input_devices An array containing the updated list of input devices.
 * @member {Array[Struct.DiscordAudioDevice]} output_devices An array containing the updated list of output devices.
 * @event_end
 * 
 * @function_end
 */

/**
 * @function discord_social_client_set_echo_cancellation
 * @desc **Discord Function**: [discordpp::Client::SetEchoCancellation()](https://discord.com/developers/docs/social-sdk/classdiscordpp_1_1Client.html#a1def244b7ecd388902ba5256ce506ca3)
 * 
 * This function enables or disables the basic echo cancellation provided by the WebRTC library.
 * 
 * Defaults to on.
 * 
 * Generally this shouldn't need to be used unless you are building a voice settings UI for the user to control, similar to Discord's voice settings.
 * 
 * @param {Bool} on Whether to enable or not.
 * @function_end
 */

/**
 * @function discord_social_client_set_input_device
 * @desc **Discord Function**: [discordpp::Client::SetInputDevice()](https://discord.com/developers/docs/social-sdk/classdiscordpp_1_1Client.html#ad1e898d1486f9dfece15c6913261b66f)
 * 
 * This function asynchronously changes the audio input device in use by the client to the specified device. You can find the list of device IDs that can be passed in with the ${function.discord_social_client_get_input_devices} function.
 * 
 * @param {String} device_id The device ID (see ${struct.DiscordAudioDevice}).
 * @param {Function} callback The function to trigger on completion.
 * 
 * @event callback
 * @desc Called on setting the audio input device.
 * @member {Struct.DiscordClientResult} result The result.
 * @event_end
 * 
 * @function_end
 */

/**
 * @function discord_social_client_set_input_volume
 * @desc **Discord Function**: [discordpp::Client::SetInputVolume()](https://discord.com/developers/docs/social-sdk/classdiscordpp_1_1Client.html#ad4358f5baffd9a5f2a6fa74d62459313)
 * 
 * This function sets the microphone volume for the current user.
 * 
 * Input volume is specified as a percentage in the range [0, 100] which represents the perceptual loudness.
 * 
 * @param {Real} vol The new microphone volume.
 * @function_end
 */

/**
 * @function discord_social_client_set_no_audio_input_callback
 * @desc **Discord Function**: [discordpp::Client::SetNoAudioInputCallback()](https://discord.com/developers/docs/social-sdk/classdiscordpp_1_1Client.html#a479e60724bf6b0b39b555c1ff8489b9e)
 * 
 * This function sets the callback function invoked when an audio input threshold is set and there is a change in whether audio is being detected.
 * 
 * @param {Function} callback The callback function to trigger on completion.
 * 
 * @event callback
 * @desc Called on changes in audio being detected.
 * @member {Bool} input_detected Whether input was detected.
 * @event_end
 * 
 * @function_end
 */

/**
 * @function discord_social_client_set_no_audio_input_threshold
 * @desc **Discord Function**: [discordpp::Client::SetNoAudioInputThreshold()](https://discord.com/developers/docs/social-sdk/classdiscordpp_1_1Client.html#ab33f5d70461ee7590b6f3cfccaeb6df4)
 * 
 * Threshold that can be set to indicate when no audio is being received by the user's mic.
 * 
 * An example of when this may be useful: When push to talk is being used and the user pushes their talk key, but something is configured wrong and no audio is being received, this threshold and callback can be used to detect that situation and notify the user. The threshold is specified in DBFS, or decibels relative to full scale, and the range is [-100.0, 100.0] It defaults to -100.0, so is disabled.
 * 
 * @param {Real} threshold The threshold value to use.
 * @function_end
 */

/**
 * @function discord_social_client_set_noise_suppression
 * @desc **Discord Function**: [discordpp::Client::SetNoiseSuppression()](https://discord.com/developers/docs/social-sdk/classdiscordpp_1_1Client.html#ae3f6e33b956964525adfa4536bd1fe73)
 * 
 * This function enables basic background noise suppression.
 * 
 * Defaults to on.
 * 
 * Generally this shouldn't need to be used unless you are building a voice settings UI for the user to control, similar to Discord's voice settings.
 * 
 * @param {Bool} on Whether to enable or not.
 * @function_end
 */

/**
 * @function discord_social_client_set_opus_hardware_coding
 * @desc **Discord Function**: [discordpp::Client::SetOpusHardwareCoding()](https://discord.com/developers/docs/social-sdk/classdiscordpp_1_1Client.html#a50f3315b3c13ad6e543b60981976fe33)
 * 
 * This function enables or disables hardware encoding and decoding for audio, if it is available.
 * 
 * Defaults to on.
 * 
 * This must be called immediately after constructing the Client. If called too late an error will be logged and the setting will not take effect.
 * 
 * @param {Bool} encode Whether to enable encoding or not.
 * @param {Bool} decode Whether to enable decoding or not.
 * @function_end
 */

/**
 * @function discord_social_client_set_output_device
 * @desc **Discord Function**: [discordpp::Client::SetOutputDevice()](https://discord.com/developers/docs/social-sdk/classdiscordpp_1_1Client.html#aa06fdf131c2105cd06fb79592624678e)
 * 
 * This function asynchronously changes the audio output device in use by the client to the specified device. You can find the list of device IDs that can be passed in with the ${function.discord_social_client_get_output_devices} function.
 * 
 * @param {String} device_id The device ID (see ${struct.DiscordAudioDevice}).
 * @param {Function} callback The function to trigger on completion.
 * 
 * @event callback
 * @desc Called on setting the audio input device.
 * @member {Struct.DiscordClientResult} result The result.
 * @event_end
 * 
 * @function_end
 */

/**
 * @function discord_social_client_set_output_volume
 * @desc **Discord Function**: [discordpp::Client::SetOutputVolume()](https://discord.com/developers/docs/social-sdk/classdiscordpp_1_1Client.html#a61a9321a79479c8b1be1559e2bbdd934)
 * 
 * This function sets the speaker volume for the current user.
 * 
 * Output volume is specified as a percentage in the range [0, 200] which represents the perceptual loudness.
 * 
 * @param {Real} vol The output volume to use.
 * @function_end
 */

/**
 * @function discord_social_client_set_self_deaf_all
 * @desc **Discord Function**: [discordpp::Client::SetSelfDeafAll()](https://discord.com/developers/docs/social-sdk/classdiscordpp_1_1Client.html#a59be56ae5752e9f2f0f299bc552282b2)
 * 
 * This function mutes all audio from the currently active call for the current user in all calls. They will not be able to hear any other participants, and no other participants will be able to hear the current user either.
 * 
 * [[Note: This overrides the per-call setting.]]
 * 
 * @param {Bool} deaf Whether to mute or not.
 * @function_end
 */

/**
 * @function discord_social_client_set_self_mute_all
 * @desc **Discord Function**: [discordpp::Client::SetSelfMuteAll()](https://discord.com/developers/docs/social-sdk/classdiscordpp_1_1Client.html#a9c6ef96590533d103a866cb8a99d2669)
 * 
 * This function mutes the current user's microphone so that no other participant in their active calls can hear them in all calls.
 * 
 * [[Note: This overrides the per-call setting.]]
 * 
 * @param {Bool} mute Whether to mute or not.
 * @function_end
 */

/**
 * @function discord_social_client_set_thread_priority
 * @desc **Discord Function**: [discordpp::Client::SetThreadPriority()](https://discord.com/developers/docs/social-sdk/classdiscordpp_1_1Client.html#a7cfa5a1c9e9ed708ce2674d885c47d7b)
 * 
 * This function allows setting the priority of various SDK threads.
 * 
 * The threads that can be controlled are:
 * 
 * * Client: This is the main thread for the SDK where most of the data processing happens.
 * * Network: This is the thread that receives voice data from lobby calls.
 * * Voice: This is the thread that the voice engine runs on and processes all audio data.
 * 
 * @param {Enum.DiscordClientThread} thread The type of thread to set thread priority on.
 * @param {Real} priority The thread priority.
 * @function_end
 */

/**
 * @function discord_social_client_set_voice_participant_changed_callback
 * @desc **Discord Function**: [discordpp::Client::SetVoiceParticipantChangedCallback()](https://discord.com/developers/docs/social-sdk/classdiscordpp_1_1Client.html#abae4b2d76aea19298f8a031a2ab47820)
 * 
 * This function sets the callback invoked whenever a user in a lobby joins or leaves a voice call.
 * 
 * The main use case for this is to enable displaying which users are in voice in a lobby even if the current user is not in voice yet, and thus does not have a Call object to bind to.
 * 
 * @param {Function} callback The callback function to use.
 * 
 * @event callback
 * @desc Triggered on change of participants in a voice call:
 * @member {real} lobby_id The ID of the lobby.
 * @member {real} member_id The ID of the member.
 * @member {bool} added Whether the member was added or not.
 * @event_end
 * 
 * @function_end
 */

/**
 * @function discord_social_client_show_audio_route_picker
 * @desc **Discord Function**: [discordpp::Client::ShowAudioRoutePicker()](https://discord.com/developers/docs/social-sdk/classdiscordpp_1_1Client.html#a55650612a709132b4801e00002e4e2d5)
 * 
 * On iOS devices, show the system audio route picker.
 * 
 * @returns {Bool} 
 * @function_end
 */

/**
 * @function discord_social_client_start_call
 * @desc **Discord Function**: [discordpp::Client::StartCall()](https://discord.com/developers/docs/social-sdk/classdiscordpp_1_1Client.html#aef4f25d761fe198fbe9bc721fc24d83f)
 * 
 * This function starts or joins a call in the lobby specified by `channel_id` (For a lobby, simply pass in the `lobby_id`).
 * 
 * On iOS, your application is responsible for enabling the appropriate background audio mode in your Info.plist.
 * 
 * On macOS, you should set the NSMicrophoneUsageDescription key in your Info.plist.
 * 
 * Returns `undefined` if the user is already in the given voice channel.
 * 
 * @param {Real} channel_id The channel ID.
 * 
 * @returns {Struct.DiscordCall}
 * @function_end
 */

/**
 * @function discord_social_client_start_call_with_audio_callbacks
 * @desc **Discord Function**: [discordpp::Client::StartCallWithAudioCallbacks()](https://discord.com/developers/docs/social-sdk/classdiscordpp_1_1Client.html#abcaa891769f9e912bfa0e06ff7221b05)
 * 
 * This function starts or joins a call in the specified lobby.
 * 
 * The audio received callback is invoked whenever incoming audio is received in a call. If you call ${function.discord_social_call_audio_should_mute} to set outShouldMute to `true` during the callback, the audio data will be muted after the callback is invoked, which is useful if you're utilizing the incoming audio and playing it through your own audio engine or playback.
 * 
 * The audio captured callback is invoked whenever local audio is captured before it is processed and transmitted which may be useful for voice moderation, etc.
 * 
 * On iOS, your application is responsible for enabling the appropriate background audio mode in your Info.plist.
 * 
 * On macOS, you should set the NSMicrophoneUsageDescription key in your Info.plist.
 * 
 * Returns `undefined` if the user is already in the given voice channel.
 * 
 * [[Note: To fetch the audio data the extension provides the functions ${function.discord_social_call_fetch_received_data} and ${function.discord_social_call_fetch_captured_data}.]]
 * 
 * @param {Real} lobby_id The lobby ID.
 * @param {Function} received_callback The audio received callback.
 * @param {Function} captured_callback The audio captured callback.
 * 
 * @event callback
 * @desc **Discord Callback**: [UserAudioReceivedCallback](https://discord.com/developers/docs/social-sdk/classdiscordpp_1_1Client.html#a49934aeb3ba5093c2362dedfd1e9ad3b)
 * 
 * This callback is triggered when incoming audio is received.
 * 
 * The callback is called per user per lobby.
 * 
 * [[Note: Call ${function.discord_social_call_fetch_received_data} to get the audio data.]]
 * 
 * @member {Real} lobby_id The lobby ID.
 * @member {Real} user_id The user ID.
 * @member {Real} samples_per_channel The number of samples per channel.
 * @member {Real} sample_rate The sample rate.
 * @member {Real} channels The number of channels.
 * @event_end
 * 
 * @event callback
 * @desc **Discord Callback**: [UserAudioCapturedCallback](https://discord.com/developers/docs/social-sdk/classdiscordpp_1_1Client.html#af4e3baa1d392887c4ce0100eab6e402d)
 * 
 * This callback is triggered when local audio is captured.
 * 
 * The callback is called per lobby.
 * 
 * [[Note: Call ${function.discord_social_call_fetch_captured_data} to get the audio data.]]
 * 
 * @member {Real} lobby_id The lobby ID.
 * @member {Real} samples_per_channel The number of samples per channel.
 * @member {Real} sample_rate The sample rate.
 * @member {Real} channels The number of channels.
 * @event_end
 * 
 * @returns {Struct.DiscordCall}
 * @function_end
 */

/**
 * @function discord_social_client_abort_authorize
 * @desc **Discord Function**: [discordpp::Client::AbortAuthorize()](https://discord.com/developers/docs/social-sdk/classdiscordpp_1_1Client.html#ac5d9273ed96e958e322bed0ae19c4c39)
 * 
 * This function will abort the authorize flow if it is in progress and tear down any associated state.
 * 
 * [[Note: This *will not* close authorization windows presented to the user.]]
 * 
 * @function_end
 */

/**
 * @function discord_social_client_abort_get_token_from_device
 * @desc **Discord Function**: [discordpp::Client::AbortGetTokenFromDevice()](https://discord.com/developers/docs/social-sdk/classdiscordpp_1_1Client.html#a219c7bca16f34dbdf2bc273cdba0c80b)
 * 
 * This function is used to abort/cleanup the device authorization flow.
 * 
 * @function_end
 */

/**
 * @function discord_social_client_authorize
 * @desc **Discord Function**: [discordpp::Client::Authorize()](https://discord.com/developers/docs/social-sdk/classdiscordpp_1_1Client.html#ace94a58e27545a933d79db32b387a468)
 * 
 * This function initiates an OAuth2 flow for a user to "sign in with Discord". This flow is intended for desktop and mobile devices. If you are implementing for the console, leverage the device auth flow instead (${function.discord_social_client_get_token_from_device} or ${function.discord_social_client_open_authorize_device_screen}).
 * 
 * @param {Struct.DiscordAuthorizationArgs} args Arguments to use for the authorization.
 * @param {Function} callback The callback function to call.
 * 
 * @event callback
 * @desc Triggered upon completion of the request.
 * @member {Struct.DiscordClientResult} result The result of the request.
 * @member {String} code The authorisation code.
 * @member {String} redirect_uri The redirect URI.
 * @event_end
 * 
 * @function_end
 */

/**
 * @function discord_social_client_close_authorize_device_screen
 * @desc **Discord Function**: [discordpp::Client::CloseAuthorizeDeviceScreen()](https://discord.com/developers/docs/social-sdk/classdiscordpp_1_1Client.html#a4fcdd697702d086a8170a2d60a69acb8)
 * 
 * This function is used to hide the device authorization screen and is used for the case where the user is on a limited input device, such as a console or smart TV. This function should be used in conjunction with a backend server to handle the device authorization flow. For a public client, you can use ${function.discord_social_client_abort_get_token_from_device} instead.
 * 
 * @function_end
 */

/**
 * @function discord_social_client_get_provisional_token
 * @desc **Discord Function**: [discordpp::Client::GetProvisionalToken()](https://discord.com/developers/docs/social-sdk/classdiscordpp_1_1Client.html#a8003130b6c46e54ac68442483bf0480c)
 * 
 * This function generates a Discord access token. You pass in the "identity" of the user, and it generates a new Discord account that is tied to that identity. There are multiple ways of specifying that identity, including using Steam/Epic services, or using your own identity system.
 * 
 * The callback function will be invoked with an access token that expires in 1 hour. Refresh tokens are not supported for provisional accounts, so that will be an empty string. You will need to call this function again to get a new access token when the old one expires.
 * 
 * Provisional accounts are a way for users that have not signed up for Discord to still access SDK functionality. They are "placeholder" Discord accounts for the user that are owned and managed by your game. Provisional accounts exist so that your users can engage with Discord APIs and systems without the friction of creating their own Discord account. Provisional accounts and their data are unique per Discord application.
 * 
 * See the Discord function documentation for more information.
 * 
 * @param {Real} application_id The application ID.
 * @param {Enum.DiscordAuthenticationExternalAuthType} token_type The token type.
 * @param {String} token The token.
 * @param {Function} callback The callback function to be called.
 * 
 * @event callback
 * @desc Triggered upon completion of the request.
 * @member {Struct.DiscordClientResult} result The result of the request.
 * @member {String} access_token The access token.
 * @member {String} refresh_token The refresh token.
 * @member {Enum.DiscordAuthorizationTokenType} token_type The type of token.
 * @member {Real} expires_in The time left till expiry of the token.
 * @member {String} scopes The scopes.
 * @event_end
 * @function_end
 */

/**
 * @function discord_social_client_get_token
 * @desc **Discord Function**: [discordpp::Client::GetToken()](https://discord.com/developers/docs/social-sdk/classdiscordpp_1_1Client.html#aaee636f91fb1ea3465157c20313b702c)
 * 
 * This function exchanges an authorization code that was returned from the ${function.discord_social_client_authorize} callback function for an access token which can be used to authenticate with the SDK.
 * 
 * [[Note: The code verifier is returned by ${function.discord_social_client_authorize}.]]
 * 
 * @param {Real} application_id The application ID.
 * @param {String} code The authorisation code.
 * @param {String} code_verifier The code verifier.
 * @param {String} redirect_uri The redirect URI.
 * @param {Function} callback The callback function to be called.
 * 
 * @event callback
 * @desc Triggered upon completion of the request.
 * @member {Struct.DiscordClientResult} result The result of the request.
 * @member {String} access_token The access token.
 * @member {String} refresh_token The refresh token.
 * @member {Enum.DiscordAuthorizationTokenType} token_type The type of token.
 * @member {Real} expires_in The time left till expiry of the token.
 * @member {String} scopes The scopes.
 * @event_end
 * @function_end
 */

/**
 * @function discord_social_client_get_token_from_device
 * @desc **Discord Function**: [discordpp::Client::GetTokenFromDevice()](https://discord.com/developers/docs/social-sdk/classdiscordpp_1_1Client.html#a4a9c666b2d30bae0a16f5afd7ccee60d)
 * 
 * This function is a combination of ${function.discord_social_client_authorize} Client::Authorize and ${function.discord_social_client_get_token}, but is used for the case where the user is on a limited input device, such as a console or smart TV.
 * 
 * @param {Real} client_id The client ID.
 * @param {String} scopes A space separated string of the OAuth scopes your game is requesting.
 * @param {Function} callback The callback function to be called.
 * 
 * @event callback
 * @desc Triggered upon completion of the request.
 * @member {Struct.DiscordClientResult} result The result of the request.
 * @member {String} access_token The access token.
 * @member {String} refresh_token The refresh token.
 * @member {Enum.DiscordAuthorizationTokenType} token_type The type of token.
 * @member {Real} expires_in The time left till expiry of the token.
 * @member {String} scopes The scopes.
 * @event_end
 * @function_end
 */

/**
 * @function discord_social_client_get_token_from_device_provisional_merge
 * @desc **Discord Function**: [discordpp::Client::GetTokenFromDeviceProvisionalMerge()](https://discord.com/developers/docs/social-sdk/classdiscordpp_1_1Client.html#afd2207590ae7d6f60ee7bbb4fc7c21c8)
 * 
 * This function is a combination of ${function.discord_social_client_authorize} and ${function.discord_social_client_get_token_from_provisional_merge}, but is used for the case where the user is on a limited input device, such as a console or smart TV.
 * 
 * This function should be used whenever a user with a provisional account wants to link to an existing Discord account or "upgrade" their provisional account into a "full" Discord account.
 * 
 * @param {Real} client_id The client ID.
 * @param {String} scopes A space separated string of the OAuth scopes your game is requesting.
 * @param {Enum.DiscordAuthenticationExternalAuthType} external_auth_type The external authentication type.
 * @param {String} external_auth_token The external auth token.
 * @param {Function} callback The callback function to be called.
 * 
 * @event callback
 * @desc Triggered upon completion of the request.
 * @member {Struct.DiscordClientResult} result The result of the request.
 * @member {String} access_token The access token.
 * @member {String} refresh_token The refresh token.
 * @member {Enum.DiscordAuthorizationTokenType} token_type The type of token.
 * @member {Real} expires_in The time left till expiry of the token.
 * @member {String} scopes The scopes.
 * @event_end
 * @function_end
 */

/**
 * @function discord_social_client_get_token_from_provisional_merge
 * @desc **Discord Function**: [discordpp::Client::GetTokenFromProvisionalMerge()](https://discord.com/developers/docs/social-sdk/classdiscordpp_1_1Client.html#a41062b7dafa331ddd2320daf1b4b273b)
 * 
 * This function should be used with the ${function.discord_social_client_authorize} function whenever a user with a provisional account wants to link to an existing Discord account or "upgrade" their provisional account into a "full" Discord account.
 * 
 * @param {Real} application_id The application ID.
 * @param {String} code The code.
 * @param {String} code_verifier The code verifier.
 * @param {String} redirect_uri The redirect URI.
 * @param {Enum.DiscordAuthenticationExternalAuthType} external_auth_type The type of external authentication.
 * @param {String} external_auth_token The external auth token.
 * @param {Function} callback The callback function to be called.
 * 
 * @event callback
 * @desc Triggered upon completion of the request.
 * @member {Struct.DiscordClientResult} result The result of the request.
 * @member {String} access_token The access token.
 * @member {String} refresh_token The refresh token.
 * @member {Enum.DiscordAuthorizationTokenType} token_type The type of token.
 * @member {Real} expires_in The time left till expiry of the token.
 * @member {String} scopes The scopes.
 * @event_end
 * @function_end
 */

/**
 * @function discord_social_client_is_authenticated
 * @desc **Discord Function**: [discordpp::Client::IsAuthenticated()](https://discord.com/developers/docs/social-sdk/classdiscordpp_1_1Client.html#afd970e3e340c8c907d4b0481240e12fc)
 * 
 * This function returns `true` if the SDK has a non-empty OAuth2 token set, regardless of whether that token is valid or not.
 * 
 * @returns {Bool}
 * @function_end
 */

/**
 * @function discord_social_client_open_authorize_device_screen
 * @desc **Discord Function**: [discordpp::Client::OpenAuthorizeDeviceScreen()](https://discord.com/developers/docs/social-sdk/classdiscordpp_1_1Client.html#af29a13acc992a75fc0870051ff68575b)
 * 
 * This function is used to show the device authorization screen and is used for the case where the user is on a limited input device, such as a console or smart TV. This function should be used in conjunction with a backend server to handle the device authorization flow. For a public client, you can use ${function.discord_social_client_get_token_from_device} instead.
 * 
 * @param {Real} client_id The client ID.
 * @param {String} user_code The user code.
 * @function_end
 */

/**
 * @function discord_social_client_provisional_user_merge_completed
 * @desc **Discord Function**: [discordpp::Client::ProvisionalUserMergeCompleted()](https://discord.com/developers/docs/social-sdk/classdiscordpp_1_1Client.html#af836d40617bb6d74648309c768234184)
 * 
 * Some functions don't work for provisional accounts, and require the user merge their account into a full Discord account before proceeding. This callback is invoked when an account merge must take place before proceeding. The developer is responsible for initiating the account merge, and then calling this function to signal to the SDK that the pending operation can continue with the new account.
 * 
 * @param {Bool} success Whether merge was successful.
 * @function_end
 */

/**
 * @function discord_social_client_refresh_token
 * @desc **Discord Function**: [discordpp::Client::RefreshToken()](https://discord.com/developers/docs/social-sdk/classdiscordpp_1_1Client.html#a187af0f99f94b3b9a4ad4302f6a443e7)
 * 
 * This function generates a new access token for the current user from a refresh token.
 * 
 * Once this is called, the old access and refresh tokens are both invalidated and cannot be used again. The callback function will be invoked with a new access and refresh token. See ${function.discord_social_client_get_token} for more details.
 * 
 * @param {Real} application_id The application ID.
 * @param {String} refresh_token The refresh token.
 * @param {Function} callback The callback function to be called.
 * 
 * @event callback
 * @desc Triggered upon completion of the request.
 * @member {Struct.DiscordClientResult} result The result of the request.
 * @member {String} access_token The access token.
 * @member {String} refresh_token The refresh token.
 * @member {Enum.DiscordAuthorizationTokenType} token_type The type of token.
 * @member {Real} expires_in The time left till expiry of the token.
 * @member {String} scopes The scopes.
 * @event_end
 * @function_end
 */

/**
 * @function discord_social_client_set_authorize_device_screen_closed_callback
 * @desc **Discord Function**: [discordpp::Client::SetAuthorizeDeviceScreenClosedCallback()](https://discord.com/developers/docs/social-sdk/classdiscordpp_1_1Client.html#a27d1ac5d868a93a141254c59023a13bb)
 * 
 * This function sets a callback function to be invoked when the device authorization screen is closed.
 * 
 * @param {Function} callback The callback function to use.
 * 
 * @event callback
 * @desc This is triggered when the device authorization screen is closed.
 * @event_end
 * 
 * @function_end
 */

/**
 * @function discord_social_client_set_game_window_pid
 * @desc **Discord Function**: [discordpp::Client::SetGameWindowPid()](https://discord.com/developers/docs/social-sdk/classdiscordpp_1_1Client.html#aae200241796a779e4b9e8cb2d22138c2)
 * 
 * When users are linking their account with Discord, which involves an OAuth2 flow, the SDK can streamline it by using Discord's overlay so the interaction happens entirely in-game. If your game's main window is not the same process as the one running the integration you may need to set the window PID using this method. It defaults to the current pid.
 * 
 * @param {Real} pid The process ID to set.
 * @function_end
 */

/**
 * @function discord_social_client_set_token_expiration_callback
 * @desc **Discord Function**: [discordpp::Client::SetTokenExpirationCallback()](https://discord.com/developers/docs/social-sdk/classdiscordpp_1_1Client.html#aab5bfc76809ea22e79f2f7a067ac4519)
 * 
 * This function sets the callback function through which to get a notification when the current token is about to expire or expired.
 * 
 * @param {Function} callback The callback function to use.
 * 
 * @event callback
 * @desc This is triggered when the token expires.
 * @event_end
 * 
 * @function_end
 */

/**
 * @function discord_social_client_update_provisional_account_display_name
 * @desc **Discord Function**: [discordpp::Client::UpdateProvisionalAccountDisplayName()](https://discord.com/developers/docs/social-sdk/classdiscordpp_1_1Client.html#a7485979ab2d4c533b75f8efd5e50bc60)
 * 
 * This function updates the display name of a provisional account to the specified name.
 * 
 * This should generally be invoked whenever the SDK starts and whenever a provisional account changes their name, since the auto-generated name for provisional accounts is just a random string.
 * 
 * @param {String} name The new display name to use.
 * @param {Function} callback The callback function to be called.
 * 
 * @event callback
 * @desc This is triggered when the display name changes.
 * @member {Struct.DiscordClientResult} result The result code.
 * @event_end
 * 
 * @function_end
 */

/**
 * @function discord_social_client_update_token
 * @desc **Discord Function**: [discordpp::Client::UpdateToken()](https://discord.com/developers/docs/social-sdk/classdiscordpp_1_1Client.html#a606b32cef7796f7fb91c2497bc31afc4)
 * 
 * This function asynchronously sets a new auth token for this client to use.
 * 
 * If the client is already connected, this function *may* trigger a reconnect. If the client is not connected, this function will only update the auth token, and so you must invoke ${function.discord_social_client_connect} as well. You should wait for the given callback function to be invoked though so that the next ${function.discord_social_client_connect} attempt uses the updated token.
 * 
 * @param {Enum.DiscordAuthorizationTokenType} token_type The token type.
 * @param {String} token The token.
 * @param {Function} callback The callback function to be called.
 * 
 * @event callback
 * @desc This is triggered when the token has been updated.
 * @member {Struct.DiscordClientResult} result The result code.
 * @event_end
 * 
 * @function_end
 */

/**
 * @function discord_social_client_can_open_message_in_discord
 * @desc **Discord Function**: [discordpp::Client::CanOpenMessageInDiscord()](https://discord.com/developers/docs/social-sdk/classdiscordpp_1_1Client.html#ae2aac143a691091691c5cc75aa07dace)
 * 
 * This function returns `true` if the given message is able to be viewed in a Discord client.
 * 
 * Not all chat messages are replicated to Discord. For example lobby chat and some DMs are ephemeral and not persisted on Discord so cannot be opened. This function checks those conditions and makes sure the message is viewable in Discord.
 * 
 * @param {Real} message_id The message ID.
 * 
 * @returns {Bool}
 * @function_end
 */

/**
 * @function discord_social_client_delete_user_message
 * @desc **Discord Function**: [discordpp::Client::DeleteUserMessage()](https://discord.com/developers/docs/social-sdk/classdiscordpp_1_1Client.html#a2d5710f9d38ec0cf077d700365833cb3)
 * 
 * This function deletes the specified message sent by the current user to the specified recipient.
 * 
 * @param {Real} recipient_id The recipient ID.
 * @param {Real} message_id The message ID.
 * @param {Function} callback The callback function to be called.
 * 
 * @event callback
 * @desc This is triggered after deletion.
 * @member {Struct.DiscordClientResult} result The result.
 * @event_end
 * 
 * @function_end
 */

/**
 * @function discord_social_client_get_channel_handle
 * @desc **Discord Function**: [discordpp::Client::GetChannelHandle()](https://discord.com/developers/docs/social-sdk/classdiscordpp_1_1Client.html#a6ab6f4217d04d84935d012af88ce5752)
 * 
 * This function returns a reference to the Discord channel object for the given ID.
 * 
 * All messages in Discord are sent in a channel, so the most common use for this will be to look up the channel a message was sent in. For convenience this API will also work with lobbies, so the three possible return values for the SDK are a DM, an Ephemeral DM, and a Lobby.
 * 
 * @param {Real} channel_id The channel ID.
 * 
 * @returns {Struct.DiscordChannelHandle}
 * @function_end
 */

/**
 * @function discord_social_client_get_message_handle
 * @desc **Discord Function**: [discordpp::Client::GetMessageHandle()](https://discord.com/developers/docs/social-sdk/classdiscordpp_1_1Client.html#a7825220b28952a2156bd0e46db40ea5c)
 * 
 * This function returns a reference to the Discord message object for the given ID.
 * 
 * The SDK keeps the 25 most recent messages in each channel in memory. Messages sent before the SDK was started cannot be accessed with this.
 * 
 * @param {Real} message_id The message ID.
 * 
 * @returns {Struct.DiscordMessageHandle}
 * @function_end
 */

/**
 * @function discord_social_client_open_message_in_discord
 * @desc **Discord Function**: [discordpp::Client::OpenMessageInDiscord()](https://discord.com/developers/docs/social-sdk/classdiscordpp_1_1Client.html#a66b8f85b14403a5d5ea125f39aa6e1b1)
 * 
 * This function opens the given message in the Discord client.
 * 
 * This is useful when a message is sent that contains content that cannot be viewed in Discord. You can call this function in the click handler for any CTA you show to view the message in Discord.
 * 
 * @param {Real} message_id The message ID.
 * @param {Function} provisional_user_merge_required_callback The callback to trigger when provisional user merge is required.
 * @param {Function} open_message_in_discord_callback The callback to trigger when the message has been opened.
 * 
 * @event callback
 * @desc Triggered when the function completes.
 * @member {Struct.DiscordClientResult} result The result.
 * @event_end
 * 
 * @event callback
 * @desc Triggered when provisional user merge is required.
 * @event_end
 * 
 * @function_end
 */

/**
 * @function discord_social_client_send_lobby_message
 * @desc **Discord Function**: [discordpp::Client::SendLobbyMessage()](https://discord.com/developers/docs/social-sdk/classdiscordpp_1_1Client.html#a779e0483f51dc99f0db3dd761d22ab6f)
 * 
 * This function sends a message in a lobby chat to all members of the lobby.
 * 
 * @param {Real} lobby_id The lobby ID.
 * @param {String} content The message content.
 * @param {Function} callback The callback function to be called.
 * 
 * @event callback
 * @desc Triggered after the message has been sent.
 * @member {Struct.DiscordClientResult} result The result.
 * @member {Real} message_id The message ID.
 * @event_end
 * 
 * @function_end
 */

/**
 * @function discord_social_client_send_lobby_message_with_metadata
 * @desc **Discord Function**: [discordpp::Client::SendLobbyMessageWithMetadata()](https://discord.com/developers/docs/social-sdk/classdiscordpp_1_1Client.html#a1b94019d64e9788d842b28ff8982eec9)
 * 
 * This function is a variant of ${function.discord_social_client_send_lobby_message} that also accepts metadata to be sent with the message.
 * 
 * @param {Real} lobby_id The lobby ID.
 * @param {String} content The message content.
 * @param {Struct} metadata The metadata.
 * @param {Function} callback The callback function to be called.
 * 
 * @event callback
 * @desc Triggered after the message has been sent.
 * @member {Struct.DiscordClientResult} result The result.
 * @member {Real} message_id The message ID.
 * @event_end
 * 
 * @function_end
 */

/**
 * @function discord_social_client_send_user_message
 * @desc **Discord Function**: [discordpp::Client::SendUserMessage()](https://discord.com/developers/docs/social-sdk/classdiscordpp_1_1Client.html#a3cf9d2b1b5a4a61dcad995dfc1009703)
 * 
 * This function sends a direct message to the specified user.
 * 
 * A message can be sent between two users in the following situations:
 * 
 * * Both users are online and in the game and have not blocked each other
 * * Both users are friends with each other
 * * Both users share a mutual Discord server and have previously DM'd each other on Discord
 * 
 * @param {Real} recipient_id The recipient ID.
 * @param {String} content The message content.
 * @param {Function} callback The callback function to be called.
 * 
 * @event callback
 * @desc Triggered after the message has been sent.
 * @member {Struct.DiscordClientResult} result The result.
 * @member {Real} message_id The message ID.
 * @event_end
 * 
 * @function_end
 */

/**
 * @function discord_social_client_send_user_message_with_metadata
 * @desc **Discord Function**: [discordpp::Client::SendUserMessageWithMetadata()](https://discord.com/developers/docs/social-sdk/classdiscordpp_1_1Client.html#aa4604284f76686f96e1d9d6ecb8e374c)
 * 
 * This function is a variant of ${function.discord_social_client_send_user_message} that also accepts metadata to be sent with the message.
 * 
 * @param {Real} recipient_id The recipient ID.
 * @param {String} content The message content.
 * @param {Struct} metadata The metadata.
 * @param {Function} callback The callback function to be called.
 * 
 * @event callback
 * @desc Triggered after the message has been sent.
 * @member {Struct.DiscordClientResult} result The result.
 * @member {Real} message_id The message ID.
 * @event_end
 * 
 * @function_end
 */

/**
 * @function discord_social_client_set_message_created_callback
 * @desc **Discord Function**: [discordpp::Client::SetMessageCreatedCallback()](https://discord.com/developers/docs/social-sdk/classdiscordpp_1_1Client.html#a28325a8e8c688a84ac851da4bc86e148)
 * 
 * This function sets the callback function to be invoked whenever a new message is received in either a lobby or a DM.
 * 
 * @param {Function} callback The callback function to use.
 * 
 * @event callback
 * @desc Triggered after a message has been received.
 * @member {Real} message_id The message ID.
 * @event_end
 * 
 * @function_end
 */

/**
 * @function discord_social_client_set_message_deleted_callback
 * @desc **Discord Function**: [discordpp::Client::SetMessageDeletedCallback()](https://discord.com/developers/docs/social-sdk/classdiscordpp_1_1Client.html#a2b6079eded10bea29abbb9695702637b)
 * 
 * This function sets the callback function to be invoked whenever a message is deleted.
 * 
 * @param {Function} callback The callback function to use.
 * 
 * @event callback
 * @desc Triggered after a message has been deleted.
 * @member {Real} message_id The message ID.
 * @member {Real} channel_id The channel ID.
 * @event_end
 * 
 * @function_end
 */

/**
 * @function discord_social_client_set_message_updated_callback
 * @desc **Discord Function**: [discordpp::Client::SetMessageUpdatedCallback()](https://discord.com/developers/docs/social-sdk/classdiscordpp_1_1Client.html#aa01cf3c15403f29780dabfcfaf3b1dcd)
 * 
 * This function sets the callback function to be invoked whenever a message is edited.
 * 
 * @param {Function} callback The callback function to use.
 * 
 * @event callback
 * @desc Triggered after a message has been updated.
 * @member {Real} message_id The message ID.
 * @event_end
 * 
 * @function_end
 */

/**
 * @function discord_social_client_set_showing_chat
 * @desc **Discord Function**: [discordpp::Client::SetShowingChat()](https://discord.com/developers/docs/social-sdk/classdiscordpp_1_1Client.html#acdf400ecb926392d1a110da73152b594)
 * 
 * This function sets whether chat messages are currently being shown in the game.
 * 
 * @param {Bool} showing_chat Whether chat messages are being shown or not.
 * @function_end
 */

/**
 * @function discord_social_client_add_log_callback
 * @desc **Discord Function**: [discordpp::Client::AddLogCallback()](https://discord.com/developers/docs/social-sdk/classdiscordpp_1_1Client.html#af78996cff24a40f5dc7066beed16692c)
 * 
 * This function adds a callback function to be invoked for each new log message generated by the SDK.
 * 
 * @param {Enum.DiscordLoggingSeverity} min_severity The minimum severity.
 * @param {Function} callback The callback function to be called.
 * 
 * @event callback
 * @desc Triggered when a new log message is generated.
 * @member {String} message The log message.
 * @member {Enum.DiscordLoggingSeverity} severity The logging severity.
 * @event_end
 * 
 * @function_end
 */

/**
 * @function discord_social_client_add_voice_log_callback
 * @desc **Discord Function**: [discordpp::Client::AddVoiceLogCallback()](https://discord.com/developers/docs/social-sdk/classdiscordpp_1_1Client.html#ac4f9b459f853ef7270d1bfc12509ede5)
 * 
 * Adds a callback function to be invoked for each new log message generated by the voice subsystem of the SDK, including the underlying webrtc infrastructure.
 * 
 * @param {Enum.DiscordLoggingSeverity} min_severity The minimum severity.
 * @param {Function} callback The callback function to be called.
 * 
 * @event callback
 * @desc Triggered when a new log message is generated.
 * @member {String} message The log message.
 * @member {Enum.DiscordLoggingSeverity} severity The logging severity.
 * @event_end
 * 
 * @function_end
 */

/**
 * @function discord_social_client_connect
 * @desc **Discord Function**: [discordpp::Client::Connect()](https://discord.com/developers/docs/social-sdk/classdiscordpp_1_1Client.html#a873a844c7c4c72e9e693419bb3e290aa)
 * 
 * This function asynchronously connects the client to Discord.
 * 
 * If a client is disconnecting, this will wait for the disconnect before reconnecting. You should use the ${function.discord_social_client_set_status_changed_callback} and ${function.discord_social_client_get_status} functions to receive updates on the client status. The Client is only safe to use once the status changes to `DiscordClientStatus.Ready`.
 * 
 * @function_end
 */

/**
 * @function discord_social_client_disconnect
 * @desc **Discord Function**: [discordpp::Client::Disconnect()](https://discord.com/developers/docs/social-sdk/classdiscordpp_1_1Client.html#a115b0be168a18da1119e522abaa92106)
 * 
 * This function asynchronously disconnects the client.
 * 
 * You can leverage ${function.discord_social_client_set_status_changed_callback} and ${function.discord_social_client_get_status} to receive updates on the client status. It is fully disconnected when the status changes to `DiscordClientStatus.Disconnected`.
 * 
 * @function_end
 */

/**
 * @function discord_social_client_get_status
 * @desc **Discord Function**: [discordpp::Client::GetStatus()](https://discord.com/developers/docs/social-sdk/classdiscordpp_1_1Client.html#aff09cced22a1b08cbd85b3ef25aa5f22)
 * 
 * This function returns the current status of the client, see the ${constant.DiscordClientStatus} enum for an explanation of the possible values.
 * 
 * @returns {Enum.DiscordClientStatus}
 * @function_end
 */

/**
 * @function discord_social_client_set_log_dir
 * @desc **Discord Function**: [discordpp::Client::SetLogDir()](https://discord.com/developers/docs/social-sdk/classdiscordpp_1_1Client.html#a23bd5802dfa3072201ea864ee839c001)
 * 
 * This function causes logs generated by the SDK to be written to disk in the specified directory.
 * 
 * This function explicitly excludes most logs for voice and webrtc activity since those are generally much noisier and you may want to pick a different log level for those. So it will instead include logs for things such as lobbies, relationships, presence, and authentication. An empty path defaults to logging alongside the client library. A `min_severity` = `DiscordLoggingSeverity.None` disables logging to a file (also the current default). The logs will be placed into a file called "discord.log" in the specified directory. Overwrites any existing discord.log file.
 * 
 * Returns `true` if the log file was successfully opened, `false` otherwise.
 * 
 * @param {String} path The path to the log directory.
 * @param {Enum.DiscordLoggingSeverity} min_severity The minimum severity.
 * 
 * @returns {Bool}
 * @function_end
 */

/**
 * @function discord_social_client_set_status_changed_callback
 * @desc **Discord Function**: [discordpp::Client::SetStatusChangedCallback()](https://discord.com/developers/docs/social-sdk/classdiscordpp_1_1Client.html#a9d0e8824570b93149d5d1c65bb3fb97f)
 * 
 * This function sets the callback function to be invoked whenever the SDK's status changes.
 * 
 * @param {Function} callback The callback function to be called.
 * 
 * @event callback
 * @desc Triggered when the SDK's status changes.
 * 
 * The `error_detail` will usually be one of the error codes described here:
 * 
 * https://discord.com/developers/docs/topics/opcodes-and-status-codes#gateway-gateway-close-event-codes
 * 
 * @member {Constant.DiscordClientStatus} status The status.
 * @member {Constant.DiscordClientError} error The error.
 * @member {Real} error_detail A detail code of the error.
 * @event_end
 * 
 * @function_end
 */

/**
 * @function discord_social_client_set_voice_log_dir
 * @desc **Discord Function**: [discordpp::Client::SetVoiceLogDir()](https://discord.com/developers/docs/social-sdk/classdiscordpp_1_1Client.html#a48c6b7e8bbc2b632a935acafc6a5f7a7)
 * 
 * This function causes logs generated by the voice subsystem of the SDK to be written to disk in the specified directory.
 * 
 * These logs will be in a file like discord-webrtc_0, and if they grow to big will be rotated and the number incremented. If the log files already exist the old ones will be renamed to discord-last-webrtc_0.
 * 
 * An empty path defaults to logging alongside the client library. A `min_severity` = `DiscordLoggingSeverity.None` disables logging to a file (also the current default).
 * 
 * [[WARNING: This function **must** be called immediately after constructing the Client object! It will print out a warning if invoked too late.]]
 * 
 * @param {String} path The path to the voice log directory.
 * @param {Enum.DiscordLoggingSeverity} min_severity The minimum severity.
 * @function_end
 */

/**
 * @function discord_social_client_create_or_join_lobby
 * @desc **Discord Function**: [discordpp::Client::CreateOrJoinLobby()](https://discord.com/developers/docs/social-sdk/classdiscordpp_1_1Client.html#a8b4e195555ecaa89ccdfc0acd28d3512)
 * 
 * This function joins the user to the specified lobby, creating one if it does not exist.
 * 
 * The lobby is specified by the supplied string, which should be a hard to guess secret generated by the game. All users who join the lobby with the same secret will be placed in the same lobby.
 * 
 * For exchanging the secret, it is strongly encouraged to look into the activity invite and rich presence systems which provide a way to include a secret string that only accepted party members are able to see.
 * 
 * As with server created lobbies, client created lobbies auto-delete once they have been idle for a few minutes (which currently defaults to 5 minutes). A lobby is idle if no users are connected to it.
 * 
 * This function shouldn't be used for long lived lobbies. The "secret" value expires after ~30 days, at which point the existing lobby cannot be joined and a new one would be created instead.
 * 
 * @param {String} secret The lobby secret.
 * @param {Function} callback The callback function to call.
 * 
 * @event callback
 * @desc Triggered when a lobby is created or joined.
 * @member {Struct.DiscordClientResult} result The result.
 * @member {Real} lobby_id The lobby ID.
 * @event_end
 * 
 * @function_end
 */

/**
 * @function discord_social_client_create_or_join_lobby_with_metadata
 * @desc **Discord Function**: [discordpp::Client::CreateOrJoinLobbyWithMetadata()](https://discord.com/developers/docs/social-sdk/classdiscordpp_1_1Client.html#a5c84fa76c73cf3c0bfd68794ca5595c1)
 * 
 * This function is a variant of ${function.discord_social_client_create_or_join_lobby} that also accepts developer-supplied metadata.
 * 
 * Metadata is just simple string key/value pairs. An example use case for this might be to the internal game ID of the user of each lobby so all members of the lobby can have a mapping of Discord IDs to game IDs. Subsequent calls to CreateOrJoinLobby will overwrite the metadata for the lobby and member.
 * 
 * @param {String} secret The lobby secret.
 * @param {Struct} lobby_metadata_struct A struct holding the lobby metadata.
 * @param {Struct} member_metadata_struct A struct holding the member metadata.
 * @param {Function} callback The callback function to call.
 * 
 * @event callback
 * @desc Triggered when a lobby is created or joined.
 * @member {Struct.DiscordClientResult} result The result.
 * @member {Real} lobby_id The lobby ID.
 * @event_end
 * 
 * @function_end
 */

/**
 * @function discord_social_client_get_guild_channels
 * @desc **Discord Function**: [discordpp::Client::GetGuildChannels()](https://discord.com/developers/docs/social-sdk/classdiscordpp_1_1Client.html#adba1e5a83c219a9c4f6dab1657778017)
 * 
 * Fetches all of the channels that the current user can access in the given guild. Channels are sorted by their `position` field, which matches what you see in the Discord client.
 * 
 * The purpose of this is to power the channel linking flow for linking a Discord channel to an in-game lobby. So this function can be used to power a UI to let the user pick which channel to link to once they have picked a guild. See the docs on ${struct.DiscordLobbyHandle} for more information.
 * 
 * @param {Real} guild_id The guild ID.
 * @param {Function} callback The callback function to call.
 * 
 * @event callback
 * @desc Triggered when guild channels have been retrieved.
 * @member {Struct.DiscordClientResult} result The result.
 * @member {Array[Struct.DiscordGuildChannel]} guild_channels An array holding structs representing the guild channels.
 * @event_end
 * 
 * @function_end
 */

/**
 * @function discord_social_client_get_lobby_handle
 * @desc **Discord Function**: [discordpp::Client::GetLobbyHandle()](https://discord.com/developers/docs/social-sdk/classdiscordpp_1_1Client.html#aee1d8d43efe5caa2d97b64ab699e5854)
 * 
 * This function returns a reference to the Discord lobby object for the given ID.
 * 
 * @param {Real} lobby_id The lobby ID.
 * @returns {Struct.DiscordLobbyHandle}
 * @function_end
 */

/**
 * @function discord_social_client_get_lobby_ids
 * @desc **Discord Function**: [discordpp::Client::GetLobbyIds()](https://discord.com/developers/docs/social-sdk/classdiscordpp_1_1Client.html#a33c341b651e3a11b1213ebafa7e4c0ae)
 * 
 * This function returns a list of all the lobbies that the user is a member of and the SDK has loaded.
 * 
 * @returns {Array[Real]}
 * @function_end
 */

/**
 * @function discord_social_client_get_user_guilds
 * @desc **Discord Function**: [discordpp::Client::GetUserGuilds()](https://discord.com/developers/docs/social-sdk/classdiscordpp_1_1Client.html#aac1ec02df6074ed9213ce230e6a42fe1)
 * 
 * This function fetches all of the guilds (also known as Discord servers) that the current user is a member of.
 * 
 * @param {Function} callback The callback function to be called.
 * 
 * @event callback
 * @desc Triggered when complete.
 * @member {Struct.DiscordClientResult} result The result.
 * @member {Array[Struct.DiscordGuildMinimal]} guilds An array holding structs that represent the guilds the user is a member of.
 * @event_end
 * 
 * @function_end
 */

/**
 * @function discord_social_client_leave_lobby
 * @desc **Discord Function**: [discordpp::Client::LeaveLobby()](https://discord.com/developers/docs/social-sdk/classdiscordpp_1_1Client.html#a8c78f797240b35d721383461a2e62926)
 * 
 * This function removes the current user from the specified lobby.
 * 
 * Only lobbies that contain a "secret" can be left. In other words, only lobbies created with ${function.discord_social_client_create_or_join_lobby} can be left. Lobbies created using the server API may not be manipulated by clients, so you must use the server API to remove them too.
 * 
 * @param {Real} lobby_id The lobby ID.
 * @param {Function} callback The callback function to call.
 * 
 * @event callback
 * @desc 
 * @member {Struct.DiscordClientResult} result The result.
 * @event_end
 * 
 * @function_end
 */

/**
 * @function discord_social_client_link_channel_to_lobby
 * @desc **Discord Function**: [discordpp::Client::LinkChannelToLobby()](https://discord.com/developers/docs/social-sdk/classdiscordpp_1_1Client.html#a3114d58d50d4d2cb5752d95e121315d4)
 * 
 * This function links the specified channel on Discord to the specified in-game lobby.
 * 
 * Any message sent in one will be copied over to the other. See the docs on ${struct.DiscordLobbyHandle} for more information.
 * 
 * @param {Real} lobby_id The lobby ID.
 * @param {Real} channel_id The channel ID.
 * @param {Function} callback The callback function to call.
 * 
 * @event callback
 * @desc 
 * @member {Struct.DiscordClientResult} result The result.
 * @event_end
 * 
 * @function_end
 */

/**
 * @function discord_social_client_set_lobby_created_callback
 * @desc **Discord Function**: [discordpp::Client::SetLobbyCreatedCallback()](https://discord.com/developers/docs/social-sdk/classdiscordpp_1_1Client.html#ace81d150a0217d2436af8263860a01f3)
 * 
 * This function sets a callback to be invoked when a lobby "becomes available" to the client.
 * 
 * @param {Function} callback The callback function to use.
 * 
 * @event callback
 * @desc Triggered when a lobby becomes available.
 * @member {Real} lobby_id The lobby ID.
 * @event_end
 * 
 * @function_end
 */

/**
 * @function discord_social_client_set_lobby_deleted_callback
 * @desc **Discord Function**: [discordpp::Client::SetLobbyDeletedCallback()](https://discord.com/developers/docs/social-sdk/classdiscordpp_1_1Client.html#a89f6b85edcbab677f7f68c0a82605901)
 * 
 * This function sets a callback to be invoked when a lobby is no longer available.
 * 
 * @param {Function} callback The callback function to use.
 * 
 * @event callback
 * @desc Triggered when a lobby is no longer available.
 * @member {Real} lobby_id The lobby ID.
 * @event_end
 * 
 * @function_end
 */

/**
 * @function discord_social_client_set_lobby_member_added_callback
 * @desc **Discord Function**: [discordpp::Client::SetLobbyMemberAddedCallback()](https://discord.com/developers/docs/social-sdk/classdiscordpp_1_1Client.html#ae5388407cfc02f25919cb9fbe14a8cb8)
 * 
 * This function sets a callback function to be invoked whenever a user is added to a lobby.
 * 
 * @param {Function} callback The callback function to use.
 * 
 * @event callback
 * @desc Triggered when a user is added to a lobby.
 * @member {Real} lobby_id The lobby ID.
 * @member {Real} member_id The member ID.
 * @event_end
 * 
 * @function_end
 */

/**
 * @function discord_social_client_set_lobby_member_removed_callback
 * @desc **Discord Function**: [discordpp::Client::SetLobbyMemberRemovedCallback()](https://discord.com/developers/docs/social-sdk/classdiscordpp_1_1Client.html#a90be7a74cdcbcc4daa0c07f7a2a568c5)
 * 
 * This function sets a callback function to be invoked whenever a member of a lobby is removed and can no longer connect to it.
 * 
 * This callback will not be invoked when the current user is removed from a lobby, instead LobbyDeleted callback will be invoked. Additionally this is not invoked when a user simply exits the game. That would cause the LobbyMemberUpdatedCallback to be invoked, and the ${struct.DiscordLobbyMemberHandle} struct will indicate they are not connected now.
 * 
 * @param {Function} callback The callback function to use.
 * 
 * @event callback
 * @desc Triggered when a member of a lobby is removed.
 * @member {Real} lobby_id The lobby ID.
 * @member {Real} member_id The member ID.
 * @event_end
 * 
 * @function_end
 */

/**
 * @function discord_social_client_set_lobby_member_updated_callback
 * @desc **Discord Function**: [discordpp::Client::SetLobbyMemberUpdatedCallback()](https://discord.com/developers/docs/social-sdk/classdiscordpp_1_1Client.html#ade147c60761a6bb31361f878e812e6b4)
 * 
 * This function sets a callback function to be invoked whenever a member of a lobby is changed.
 * 
 * This is invoked when:
 * 
 * * The user connects or disconnects
 * * The metadata of the member is changed
 * 
 * @param {Function} callback The callback function to use.
 * 
 * @event callback
 * @desc Triggered when a member of a lobby is changed.
 * @member {Real} lobby_id The lobby ID.
 * @member {Real} member_id The member ID.
 * @event_end
 * 
 * @function_end
 */

/**
 * @function discord_social_client_set_lobby_updated_callback
 * @desc **Discord Function**: [discordpp::Client::SetLobbyUpdatedCallback()](https://discord.com/developers/docs/social-sdk/classdiscordpp_1_1Client.html#ada626c060ba77db627152a8c03222843)
 * 
 * This function sets a callback to be invoked when a lobby is edited, for example if the lobby's metadata is changed.
 * 
 * @param {Function} callback The callback function to use.
 * 
 * @event callback
 * @desc Triggered when a lobby is edited.
 * @member {Real} lobby_id The lobby ID.
 * @event_end
 * 
 * @function_end
 */

/**
 * @function discord_social_client_unlink_channel_from_lobby
 * @desc **Discord Function**: [discordpp::Client::UnlinkChannelFromLobby()](https://discord.com/developers/docs/social-sdk/classdiscordpp_1_1Client.html#a28f78a6fe46eb11eb54ee9b53fa94ffe)
 * 
 * This function removes any existing channel link from the specified lobby.
 * 
 * See the docs on [LobbyHandle](https://discord.com/developers/docs/social-sdk/classdiscordpp_1_1LobbyHandle.html) for more information. A lobby can be unlinked by any user with the LobbyMemberFlags::CanLinkLobby flag (`DiscordLobbyMemberHandle.can_link_lobby` set to `true`), they do not need to have any permissions on the Discord channel in order to sever the in-game link.
 * 
 * @param {Real} lobby_id The lobby ID.
 * @param {Function} callback The callback function to call.
 * 
 * @event callback
 * @desc Triggered when a channel was unlinked from a lobby.
 * @member {Struct.DiscordClientResult} result The result.
 * @event_end
 * 
 * @function_end
 */

/**
 * @function discord_social_client_accept_activity_invite
 * @desc **Discord Function**: [discordpp::Client::AcceptActivityInvite()](https://discord.com/developers/docs/social-sdk/classdiscordpp_1_1Client.html#ad12cf35065e4d2b303ee470af7c6ef37)
 * 
 * This function accepts an activity invite that the current user has received.
 * 
 * The given callback will be invoked with the join secret for the activity, which can be used to join the user to the game's internal party system for example. This join secret comes from the other user's rich presence activity.
 * 
 * @param {Struct.DiscordActivityInvite} activity_invite The activity invite.
 * @param {Function} callback The callback function to be called.
 * 
 * @event callback
 * @desc Triggered on accept.
 * @member {Struct.DiscordClientResult} result The result.
 * @member {String} join_secret The join secret.
 * @event_end
 * 
 * @function_end
 */

/**
 * @function discord_social_client_clear_rich_presence
 * @desc **Discord Function**: [discordpp::Client::ClearRichPresence()](https://discord.com/developers/docs/social-sdk/classdiscordpp_1_1Client.html#a9a7901ecde99d17a357e4113115b5e6b)
 * 
 * This function clears the rich presence for the current user.
 * 
 * @function_end
 */

/**
 * @function discord_social_client_register_launch_command
 * @desc **Discord Function**: [discordpp::Client::RegisterLaunchCommand()](https://discord.com/developers/docs/social-sdk/classdiscordpp_1_1Client.html#a024d7222931fdcb7d09c2b107642ecab)
 * 
 * When a user accepts an activity invite for your game within the Discord client, Discord needs to know how to launch the game for that user. This function allows you to register a command that Discord will run to launch your game. You should invoke this when the SDK starts up so that if the user in the future tries to join from Discord the game will be able to be launched for them. Returns `true` if the command was successfully registered, `false` otherwise.
 * 
 * On Windows and Linux, this command should be a path to an executable. It also supports any launch parameters that may be needed, like `"C:\path\to my\game.exe" –full-screen –no-hax` If you pass an empty string in for the command, the SDK will register the current running executable. To launch the game from a custom protocol like `my-awesome-game://`, pass that in as an argument of the executable that should be launched by that protocol. For example, `"C:\path\to my\game.exe" my-awesome-game://`.
 * 
 * On macOS, due to the way Discord registers executables, your game needs to be bundled for this command to work. That means it should be a .app. You can pass a custom protocol like `my-awesome-game://` as the custom command, but **not** a path to an executable. If you pass an empty string in for the command, the SDK will register the current running bundle, if any.
 * 
 * @param {Real} application_id The application ID.
 * @param {String} command The command.
 * 
 * @returns {Bool}
 * @function_end
 */

/**
 * @function discord_social_client_register_launch_steam_application
 * @desc **Discord Function**: [discordpp::Client::RegisterLaunchSteamApplication()](https://discord.com/developers/docs/social-sdk/classdiscordpp_1_1Client.html#a45b2c791c5b06f77d457dacb53dfba40)
 * 
 * When a user accepts an activity invite for your game within the Discord client, Discord needs to know how to launch the game for that user. For Steam games, this function allows you to indicate to Discord what the Steam game ID is. You should invoke this when the SDK starts up so that if the user in the future tries to join from Discord the game will be able to be launched for them. Returns `true` if the command was successfully registered, `false` otherwise.
 * 
 * @param {Real} application_id The application ID.
 * @param {Real} steam_app_id The Steam app ID.
 * 
 * @returns {Bool}
 * @function_end
 */

/**
 * @function discord_social_client_send_activity_invite
 * @desc **Discord Function**: [discordpp::Client::SendActivityInvite()](https://discord.com/developers/docs/social-sdk/classdiscordpp_1_1Client.html#afc14e98fc070399895739da6d53efa60)
 * 
 * This function sends a Discord activity invite to the specified user.
 * 
 * The invite is sent as a message on Discord, which means it can be sent if any of the following are true:
 * 
 * * Both users are online and in the game and have not blocked each other
 * * Both users are friends with each other
 * * Both users share a mutual Discord server and have previously DM'd each other on Discord
 * 
 * You can optionally include some message content to include in the message containing the invite, but it's ok to pass an empty string too.
 * 
 * @param {Real} user_id The user ID to send the invite to.
 * @param {String} content The invite's content.
 * @param {Function} callback The callback function to call.
 * 
 * @event callback
 * @desc 
 * @member {Struct.DiscordClientResult} result The result.
 * @event_end
 * 
 * @function_end
 */

/**
 * @function discord_social_client_send_activity_join_request
 * @desc **Discord Function**: [discordpp::Client::SendActivityJoinRequest()](https://discord.com/developers/docs/social-sdk/classdiscordpp_1_1Client.html#a6c16b1cd68b4a3ce198575a7efb3a87b)
 * 
 * This function requests to join the activity of the specified user.
 * 
 * @param {Real} user_id The user ID.
 * @param {Function} callback The callback function to call.
 * 
 * @event callback
 * @desc 
 * @member {Struct.DiscordClientResult} result The result.
 * @event_end
 * 
 * @function_end
 */

/**
 * @function discord_social_client_send_activity_join_request_reply
 * @desc **Discord Function**: [discordpp::Client::SendActivityJoinRequestReply()](https://discord.com/developers/docs/social-sdk/classdiscordpp_1_1Client.html#adb88f1aa7976f4e9bafa8db4e533df07)
 * 
 * When another user requests to join the current user's party, this function is called to to allow that user to join. Specifically this will send the original user an activity invite which they then need to accept again.
 * 
 * @param {Struct.DiscordActivityInvite} activity_invite The activity invite.
 * @param {Function} callback The callback function to call.
 * 
 * @event callback
 * @desc 
 * @member {Struct.DiscordClientResult} result The result.
 * @event_end
 * 
 * @function_end
 */

/**
 * @function discord_social_client_set_activity_invite_created_callback
 * @desc **Discord Function**: [discordpp::Client::SetActivityInviteCreatedCallback()](https://discord.com/developers/docs/social-sdk/classdiscordpp_1_1Client.html#a3b4e37a222a8662506d763514774bedc)
 * 
 * This function sets a callback function that is invoked when the current user receives an activity invite from another user.
 * 
 * These invites are always sent as messages, so the SDK is parsing these messages to look for invites and invokes this callback instead. The message create callback will not be invoked for these messages. The invite object contains all the necessary information to identity the invite, which you can later pass to ${function.discord_social_client_accept_activity_invite}.
 * 
 * @param {Function} callback The callback function to use.
 * 
 * @event callback
 * @desc Triggered when the current user receives an activity invite.
 * @member {Struct.DiscordActivityInvite} invite The activity invite.
 * @event_end
 * 
 * @function_end
 */

/**
 * @function discord_social_client_set_activity_invite_updated_callback
 * @desc **Discord Function**: [discordpp::Client::SetActivityInviteUpdatedCallback()](https://discord.com/developers/docs/social-sdk/classdiscordpp_1_1Client.html#ab212b92fff59a4e439ebf8256d4dd047)
 * 
 * This function sets a callback function that is invoked when an existing activity invite changes. Currently, the only thing that changes on an activity invite is its validity. If the sender goes offline or exits the party the receiver was invited to, the invite is no longer joinable. It is possible for an invalid invite to go from invalid to valid if the sender rejoins the activity.
 * 
 * @param {Function} callback The callback function to use.
 * 
 * @event callback
 * @desc Triggered when an existing activity invite changes.
 * @member {Struct.DiscordActivityInvite} invite The activity invite.
 * @event_end
 * 
 * @function_end
 */

/**
 * @function discord_social_client_set_activity_join_callback
 * @desc **Discord Function**: [discordpp::Client::SetActivityJoinCallback()](https://discord.com/developers/docs/social-sdk/classdiscordpp_1_1Client.html#a587d1c6d0352eba397c888987aa58418)
 * 
 * This function sets a callback function that is invoked when the current user also has Discord running on their computer and they accept an activity invite in the Discord client.
 * 
 * This callback is invoked with the join secret from the activity rich presence, which you can use to join them to the game's internal party system. See [Activity](https://discord.com/developers/docs/social-sdk/classdiscordpp_1_1Activity.html) for more information on invites.
 * 
 * @param {Function} callback The callback function to use.
 * 
 * @event callback
 * @desc Triggered when an activity invite is accepted.
 * @member {String} secret The join secret.
 * @event_end
 * 
 * @function_end
 */

/**
 * @function discord_social_client_set_online_status
 * @desc **Discord Function**: [discordpp::Client::SetOnlineStatus()](https://discord.com/developers/docs/social-sdk/classdiscordpp_1_1Client.html#a99626f047f37f3caa4b88cf8675b3412)
 * 
 * This function sets whether a user is online/invisible/idle/dnd on Discord.
 * 
 * @param {Enum.DiscordClientStatus} status The client status.
 * @param {Function} callback The callback function to call.
 * 
 * @event callback
 * @desc 
 * @member {Struct.DiscordClientResult} result The result.
 * @event_end
 * 
 * @function_end
 */

/**
 * @function discord_social_client_update_rich_presence
 * @desc **Discord Function**: [discordpp::Client::UpdateRichPresence()](https://discord.com/developers/docs/social-sdk/classdiscordpp_1_1Client.html#af0a85e30f2b3d8a0b502fd23744ee58e)
 * 
 * This function updates the rich presence for the current user.
 * 
 * You should use rich presence so that other users on Discord know this user is playing a game and you can include some hints of what they are playing such as a character name or map name. Rich presence also enables Discord game invites to work too!
 * 
 * [[Note: On Desktop, rich presence can be set before calling ${function.discord_social_client_connect}, but it will be cleared if the Client connects. When Client is not connected, this sets the rich presence in the current user's Discord client when available.]]
 * 
 * See the docs on the [Activity](https://discord.com/developers/docs/social-sdk/classdiscordpp_1_1Activity.html) struct for more details.
 * 
 * @param {Struct.DiscordActivity} activity The activity.
 * @param {Function} callback The callback function to call.
 * 
 * @event callback
 * @desc Triggered when the function completes.
 * @member {Struct.DiscordClientResult} result The result.
 * @event_end
 * 
 * @function_end
 */

/**
 * @function discord_social_client_accept_discord_friend_request
 * @desc **Discord Function**: [discordpp::Client::AcceptDiscordFriendRequest()](https://discord.com/developers/docs/social-sdk/classdiscordpp_1_1Client.html#af9bec645e18a2d4db4aa2951157e6993)
 * 
 * This function accepts an incoming Discord friend request from the target user.
 * 
 * Fails if the target user has not sent a Discord friend request to the current user, meaning that the Discord relationship type between the users must be `DiscordRelationshipType.PendingIncoming`.
 * 
 * @param {Real} user_id The user ID.
 * @param {Function} callback The callback function to call.
 * 
 * @event callback
 * @desc Triggered when the function completes.
 * @member {Struct.DiscordClientResult} result The result.
 * @event_end
 * 
 * @function_end
 */

/**
 * @function discord_social_client_accept_game_friend_request
 * @desc **Discord Function**: [discordpp::Client::AcceptGameFriendRequest()](https://discord.com/developers/docs/social-sdk/classdiscordpp_1_1Client.html#ae6f5544e7890b7f6af2cc5780dab4426)
 * 
 * This function accepts an incoming game friend request from the target user.
 * 
 * Fails if the target user has not sent a game friend request to the current user, meaning that the game relationship type between the users must be `DiscordRelationshipType.PendingIncoming`.
 * 
 * @param {Real} user_id The user ID.
 * @param {Function} callback The callback function to call.
 * 
 * @event callback
 * @desc Triggered when the function completes.
 * @member {Struct.DiscordClientResult} result The result.
 * @event_end
 * 
 * @function_end
 */

/**
 * @function discord_social_client_block_user
 * @desc **Discord Function**: [discordpp::Client::BlockUser()](https://discord.com/developers/docs/social-sdk/classdiscordpp_1_1Client.html#add4a917c8382e411d5a55737c9edc8ad)
 * 
 * This function blocks the target user so that they cannot send the user friend or activity invites and cannot message them anymore.
 * 
 * Blocking a user will also remove any existing relationship between the two users, and persists across games, so blocking a user in one game or on Discord will block them in all other games and on Discord as well.
 * 
 * @param {Real} user_id The user ID.
 * @param {Function} callback The callback function to call.
 * 
 * @event callback
 * @desc Triggered when the function completes.
 * @member {Struct.DiscordClientResult} result The result.
 * @event_end
 * 
 * @function_end
 */

/**
 * @function discord_social_client_cancel_discord_friend_request
 * @desc **Discord Function**: [discordpp::Client::CancelDiscordFriendRequest()](https://discord.com/developers/docs/social-sdk/classdiscordpp_1_1Client.html#a9702a2da9a5f3054ccb45fd3a1ce2eeb)
 * 
 * This function cancels an outgoing Discord friend request to the target user.
 * 
 * Fails if a Discord friend request has not been sent to the target user, meaning that the Discord relationship type between the users must be `DiscordRelationshipType.PendingOutgoing`.
 * 
 * @param {Real} user_id The user ID.
 * @param {Function} callback The callback function to call.
 * 
 * @event callback
 * @desc Triggered when the function completes.
 * @member {Struct.DiscordClientResult} result The result.
 * @event_end
 * 
 * @function_end
 */

/**
 * @function discord_social_client_cancel_game_friend_request
 * @desc **Discord Function**: [discordpp::Client::CancelGameFriendRequest()](https://discord.com/developers/docs/social-sdk/classdiscordpp_1_1Client.html#a210d3fef24a5c2d3847a38e2c42d4b58)
 * 
 * This function cancels an outgoing game friend request to the target user.
 * 
 * Fails if a game friend request has not been sent to the target user, meaning that the game relationship type between the users must be `DiscordRelationshipType.PendingOutgoing`.
 * 
 * @param {Real} user_id The user ID.
 * @param {Function} callback The callback function to call.
 * 
 * @event callback
 * @desc Triggered when the function completes.
 * @member {Struct.DiscordClientResult} result The result.
 * @event_end
 * 
 * @function_end
 */

/**
 * @function discord_social_client_get_relationship_handle
 * @desc **Discord Function**: [discordpp::Client::GetRelationshipHandle()](https://discord.com/developers/docs/social-sdk/classdiscordpp_1_1Client.html#ab8dd47239817ffbe268db4c596de1346)
 * 
 * This function returns the ${struct.DiscordRelationshipHandle} that corresponds to the relationship between the current user and the given user.
 * 
 * @param {Real} user_id The user ID.
 * 
 * @returns {Struct.DiscordRelationshipHandle}
 * 
 * @function_end
 */

/**
 * @function discord_social_client_get_relationships
 * @desc **Discord Function**: [discordpp::Client::GetRelationships()](https://discord.com/developers/docs/social-sdk/classdiscordpp_1_1Client.html#ad481849835cd570f0e03adafcf90125d)
 * 
 * This function returns a list of all of the relationships the current user has with others, including all Discord relationships and all Game relationships for the current game.
 * 
 * @returns {Array[Struct.DiscordRelationshipHandle]}
 * 
 * @function_end
 */

/**
 * @function discord_social_client_get_relationships_by_group
 * @desc **Discord Function**: [discordpp::Client::GetRelationshipsByGroup](https://discord.com/developers/docs/social-sdk/classdiscordpp_1_1Client.html#a9f7898d3f3d1ec92b06c662df70746d5)
 * 
 * This function returns a list of relationships that belong to the specified relationship group type. Relationships are logically partitioned into groups based on online status and game activity:
 * 
 * `DiscordRelationshipGroupType.OnlinePlayingGame`: Users who are online and currently playing the game
 * `DiscordRelationshipGroupType.OnlineElsewhere`: Users who are online but not playing the game (users who have played the game before are sorted to the top)
 * `DiscordRelationshipGroupType.Offline`: Users who are offline
 * 
 * @param {Enum.DiscordRelationshipGroupType} group_type The type of relationship group.
 * 
 * @returns {Array[Struct.DiscordRelationshipHandle]}
 * 
 * @function_end
 */

/**
 * @function discord_social_client_reject_discord_friend_request
 * @desc **Discord Function**: [discordpp::Client::RejectDiscordFriendRequest()](https://discord.com/developers/docs/social-sdk/classdiscordpp_1_1Client.html#a6d9a984cb0c481508e0049724dcd9d0f)
 * 
 * This function declines an incoming Discord friend request from the target user.
 * 
 * Fails if the target user has not sent a Discord friend request to the current user, meaning that the Discord relationship type between the users must be `DiscordRelationshipType.PendingIncoming`.
 * 
 * @param {Real} user_id The user ID.
 * @param {Function} callback The callback function to call.
 * 
 * @event callback
 * @desc Triggered when the function completes.
 * @member {Struct.DiscordClientResult} result The result.
 * @event_end
 * 
 * @function_end
 */

/**
 * @function discord_social_client_reject_game_friend_request
 * @desc **Discord Function**: [discordpp::Client::RejectGameFriendRequest()](https://discord.com/developers/docs/social-sdk/classdiscordpp_1_1Client.html#ad3711b8ec4f70e4ad28592f04fbdab30)
 * 
 * This function declines an incoming Discord friend request from the target user.
 * 
 * Fails if the target user has not sent a Discord friend request to the current user, meaning that the Discord relationship type between the users must be `DiscordRelationshipType.PendingIncoming`.
 * 
 * @param {Real} user_id The user ID.
 * @param {Function} callback The callback function to call.
 * 
 * @event callback
 * @desc Triggered when the function completes.
 * @member {Struct.DiscordClientResult} result The result.
 * @event_end
 * 
 * @function_end
 */

/**
 * @function discord_social_client_remove_discord_and_game_friend
 * @desc **Discord Function**: [discordpp::Client::RemoveDiscordAndGameFriend()](https://discord.com/developers/docs/social-sdk/classdiscordpp_1_1Client.html#aa6d393a3d98ec5d06faef49a57d1a89b)
 * 
 * This function removes any friendship between the current user and the target user. This function will remove BOTH any Discord friendship and any game friendship between the users.
 * 
 * Fails if the target user is not currently a Discord OR game friend with the current user.
 * 
 * @param {Real} user_id The user ID.
 * @param {Function} callback The callback function to call.
 * 
 * @event callback
 * @desc Triggered when the function completes.
 * @member {Struct.DiscordClientResult} result The result.
 * @event_end
 * 
 * @function_end
 */

/**
 * @function discord_social_client_remove_game_friend
 * @desc **Discord Function**: [discordpp::Client::RemoveGameFriend()](https://discord.com/developers/docs/social-sdk/classdiscordpp_1_1Client.html#a692ac69d3d33f04f3a06f2ed53e28765)
 * 
 * This function removes any game friendship between the current user and the target user.
 * 
 * Fails if the target user is not currently a game friend with the current user.
 * 
 * @param {Real} user_id The user ID.
 * @param {Function} callback The callback function to call.
 * 
 * @event callback
 * @desc Triggered when the function completes.
 * @member {Struct.DiscordClientResult} result The result.
 * @event_end
 * 
 * @function_end
 */

/**
 * @function discord_social_client_search_friends_by_username
 * @desc **Discord Function**: [discordpp::Client::SearchFriendsByUsername()](https://discord.com/developers/docs/social-sdk/classdiscordpp_1_1Client.html#a486180a3b8ec7ab74998cc13e3956d82)
 * 
 * This function searches all of your friends by both username and display name, returning a list of all friends that match the search string.
 * 
 * @param {String} search_str The string to search for.
 * 
 * @returns {Array[Struct.DiscordUserHandle]}
 * 
 * @function_end
 */

/**
 * @function discord_social_client_send_discord_friend_request
 * @desc **Discord Function**: [discordpp::Client::SendDiscordFriendRequest()](https://discord.com/developers/docs/social-sdk/classdiscordpp_1_1Client.html#a12c3ecc8fb47d84859796cce7adfeb13)
 * 
 * This function sends a Discord friend request to the target user.
 * 
 * The target user is identified by their Discord unique username (not their display name).
 * 
 * After the friend request is sent, each user will have a new Discord relationship created. For the current user the relationship type will be `DiscordRelationshipType.PendingOutgoing` and for the target user it will be `DiscordRelationshipType.PendingIncoming`.
 * 
 * If the current user already has received a Discord friend request from the target user (meaning relationship type is `DiscordRelationshipType.PendingIncoming`), then the two users will become Discord friends.
 * 
 * See [RelationshipHandle](https://discord.com/developers/docs/social-sdk/classdiscordpp_1_1RelationshipHandle.html) for more information on the difference between Discord and Game relationships.
 * 
 * @param {String} username The user name.
 * @param {Function} callback The callback function to call.
 * 
 * @event callback
 * @desc Triggered when the function completes.
 * @member {Struct.DiscordClientResult} result The result.
 * @event_end
 * 
 * @function_end
 */

/**
 * @function discord_social_client_send_discord_friend_request_by_id
 * @desc **Discord Function**: [discordpp::Client::SendDiscordFriendRequestById()](https://discord.com/developers/docs/social-sdk/classdiscordpp_1_1Client.html#afa9bc8870b4a4aef6f247782f494eeca)
 * 
 * This function Sends a Discord friend request to the target user.
 * 
 * The target user is identified by their Discord ID.
 * 
 * After the friend request is sent, each user will have a new Discord relationship created. For the current user the relationship type will be `DiscordRelationshipType.PendingOutgoing` and for the target user it will be `DiscordRelationshipType.PendingIncoming`.
 * 
 * If the current user already has received a Discord friend request from the target user (meaning relationship type is `DiscordRelationshipType.PendingIncoming`), then the two users will become Discord friends.
 * 
 * See [RelationshipHandle](https://discord.com/developers/docs/social-sdk/classdiscordpp_1_1RelationshipHandle.html) for more information on the difference between Discord and Game relationships.
 * 
 * @param {Real} user_id The user ID.
 * @param {Function} callback The callback function to call.
 * 
 * @event callback
 * @desc Triggered when the function completes.
 * @member {Struct.DiscordClientResult} result The result.
 * @event_end
 * 
 * @function_end
 */

/**
 * @function discord_social_client_send_game_friend_request
 * @desc **Discord Function**: [discordpp::Client::SendGameFriendRequest()](https://discord.com/developers/docs/social-sdk/classdiscordpp_1_1Client.html#afbce38bed626ec20cb05ea16fad79d57)
 * 
 * This function sends (or accepts) a game friend request to the target user.
 * 
 * After the friend request is sent, each user will have a new game relationship created. For the current user the relationship type will be `DiscordRelationshipType.PendingOutgoing` and for the target user it will be `DiscordRelationshipType.PendingIncoming`.
 * 
 * If the current user already has received a game friend request from the target user (meaning relationship type is `DiscordRelationshipType.PendingIncoming`), then the two users will become game friends.
 * 
 * See [RelationshipHandle](https://discord.com/developers/docs/social-sdk/classdiscordpp_1_1RelationshipHandle.html) for more information on the difference between Discord and Game relationships.
 * 
 * @param {String} username The user name.
 * @param {Function} callback The callback function to call.
 * 
 * @event callback
 * @desc Triggered when the function completes.
 * @member {Struct.DiscordClientResult} result The result.
 * @event_end
 * 
 * @function_end
 */

/**
 * @function discord_social_client_send_game_friend_request_by_id
 * @desc **Discord Function**: [discordpp::Client::SendGameFriendRequestById()](https://discord.com/developers/docs/social-sdk/classdiscordpp_1_1Client.html#a66686efa9a445af4696ef083fe95e885)
 * 
 * This function sends a game friend request to the target user.
 * 
 * The target user is identified by their Discord ID.
 * 
 * After the friend request is sent, each user will have a new game relationship created. For the current user the relationship type will be `DiscordRelationshipType.PendingOutgoing` and for the target user it will be `DiscordRelationshipType.PendingIncoming`.
 * 
 * If the current user already has received a game friend request from the target user (meaning relationship type is `DiscordRelationshipType.PendingIncoming`), then the two users will become game friends.
 * 
 * See [RelationshipHandle](https://discord.com/developers/docs/social-sdk/classdiscordpp_1_1RelationshipHandle.html) for more information on the difference between Discord and Game relationships.
 * 
 * @param {Real} user_id The user ID.
 * @param {Function} callback The callback function to call.
 * 
 * @event callback
 * @desc Triggered when the function completes.
 * @member {Struct.DiscordClientResult} result The result.
 * @event_end
 * 
 * @function_end
 */

/**
 * @function discord_social_client_set_relationship_created_callback
 * @desc **Discord Function**: [discordpp::Client::SetRelationshipCreatedCallback()](https://discord.com/developers/docs/social-sdk/classdiscordpp_1_1Client.html#a04ef0cd95c7d88e97fc236603544c7ff)
 * 
 * This function sets a callback to be invoked whenever a relationship for this user is established or changes type.
 * 
 * This can be invoked when a user sends or accepts a friend invite or blocks a user for example.
 * 
 * @param {Function} callback The callback function to use.
 * 
 * @event callback
 * @desc Triggered when a relationship is created.
 * @member {Real} user_id The user ID.
 * @member {Bool} is_discord_relationship_update `true` if the relationship created with the user ID is a Discord relationship, and `false` if it's an in-game relationship.
 * @event_end
 * 
 * @function_end
 */

/**
 * @function discord_social_client_set_relationship_deleted_callback
 * @desc **Discord Function**: [discordpp::Client::SetRelationshipDeletedCallback()](https://discord.com/developers/docs/social-sdk/classdiscordpp_1_1Client.html#a733fedb02d2b857194646949618f58c9)
 * 
 * This function sets a callback to be invoked whenever a relationship for this user is removed, such as when the user rejects a friend request or removes a friend.
 * 
 * When a relationship is removed, ${function.discord_social_client_get_relationship_handle} will return a relationship with the type set to `DiscordRelationshipType.None`.
 * 
 * @param {Function} callback The callback function to call.
 * 
 * @event callback
 * @desc Triggered when a relationship is deleted.
 * @member {Real} user_id The user ID.
 * @member {Bool} is_discord_relationship_update `true` if the relationship deleted with the user ID is a Discord relationship, and `false` if it's an in-game relationship.
 * @event_end
 * 
 * @function_end
 */

/**
 * @function discord_social_client_unblock_user
 * @desc **Discord Function**: [discordpp::Client::UnblockUser()](https://discord.com/developers/docs/social-sdk/classdiscordpp_1_1Client.html#acd8dc8d7e5c202256a219a65cfedae47)
 * 
 * This function unblocks the target user. Does not restore any old relationship between the users though.
 * 
 * Fails if the target user is not currently blocked.
 * 
 * @param {Real} user_id The user ID.
 * @param {Function} callback The callback function to call.
 * 
 * @event callback
 * @desc Triggered when the function completes.
 * @member {Struct.DiscordClientResult} result The result.
 * @event_end
 * 
 * @function_end
 */

/**
 * @function discord_social_client_get_current_user
 * @desc **Discord Function**: [discordpp::Client::GetCurrentUserV2()](https://discord.com/developers/docs/social-sdk/classdiscordpp_1_1Client.html#ae52259570ba657252d91f5580636fe5d)
 * 
 * This function returns the current user, or `undefined` when no user is authenticated or available.
 * 
 * @returns {Struct.DiscordUserHandle}
 * 
 * @function_end
 */

/**
 * @function discord_social_client_get_discord_client_connected_user
 * @desc **Discord Function**: [discordpp::Client::GetDiscordClientConnectedUser()](https://discord.com/developers/docs/social-sdk/classdiscordpp_1_1Client.html#a8af6f7ed750a87f36c68774ca76851f7)
 * 
 * If the Discord app is running on the user's computer and the SDK establishes a connection to it, this function will return the user that is currently logged in to the Discord app.
 * 
 * @param {Real} application_id The application ID.
 * @param {Function} callback The callback function to call.
 * 
 * @event callback
 * @desc Triggered when the function completes.
 * @member {Struct.DiscordClientResult} result The result.
 * @event_end
 * 
 * @function_end
 */

/**
 * @function discord_social_client_get_user
 * @desc **Discord Function**: [discordpp::Client::GetUser()](https://discord.com/developers/docs/social-sdk/classdiscordpp_1_1Client.html#ab6f98c5e36bc4070b3ee0e45fae12f2b)
 * 
 * This function returns the UserHandle associated with the given user ID.
 * 
 * It will not fetch a user from Discord's API if it is not available. Generally you can trust that users will be available for all relationships and for the authors of any messages received.
 * 
 * @param {Real} user_id the user ID.
 * 
 * @returns {Struct.DiscordUserHandle}
 * 
 * @function_end
 */

/**
 * @function discord_social_client_set_user_updated_callback
 * @desc **Discord Function**: [discordpp::Client::SetUserUpdatedCallback()](https://discord.com/developers/docs/social-sdk/classdiscordpp_1_1Client.html#a3559f375165acedc6d6677ef599b3a4a)
 * 
 * The UserUpdatedCallback is invoked whenever any user the current session knows about changes, not just if the current user changes. For example if one of your Discord friends changes their name or avatar the UserUpdatedCallback will be invoked. It is also invoked when users come online, go offline, or start playing your game.
 * 
 * @param {Function} callback The callback function to use.
 * 
 * @event callback
 * @desc Triggered when a user changes.
 * @member {Real} user_id The user ID.
 * @event_end
 * 
 * @function_end
 */

/**
 * @function discord_social_client_error_to_string
 * @desc **Discord Function**: [discordpp::Client::ErrorToString()](https://discord.com/developers/docs/social-sdk/classdiscordpp_1_1Client.html#ab40c4c45450eb5d5f14346612b57ddae)
 * 
 * This function converts the ${const.DiscordClientError} enum to a string.
 * 
 * @param {Enum.DiscordClientError} error The error value.
 * 
 * @returns {String}
 * 
 * @function_end
 */

/**
 * @function discord_social_client_get_default_audio_device_id
 * @desc **Discord Function**: [discordpp::Client::GetDefaultAudioDeviceId()](https://discord.com/developers/docs/social-sdk/classdiscordpp_1_1Client.html#a91c6f22803d437153ad192f3395ac47c)
 * 
 * This function returns the ID of the system default audio device if the user has not explicitly chosen one.
 * 
 * @returns {String}
 * 
 * @function_end
 */

/**
 * @function discord_social_client_get_default_communication_scopes
 * @desc **Discord Function**: [discordpp::Client::GetDefaultCommunicationScopes()](https://discord.com/developers/docs/social-sdk/classdiscordpp_1_1Client.html#a71499da752fbdc2d4326ae0fd36c0dd1)
 * 
 * This function returns the default set of OAuth2 scopes that should be used with the Discord SDK when making use of the full SDK capabilities, including communications-related features (e.g. user DMs, lobbies, voice chat). If your application does not make use of these features, you should use ${function.discord_social_client_get_default_presence_scopes} instead.
 * 
 * @returns {String}
 * 
 * @function_end
 */

/**
 * @function discord_social_client_get_default_presence_scopes
 * @desc **Discord Function**: [discordpp::Client::GetDefaultPresenceScopes()](https://discord.com/developers/docs/social-sdk/classdiscordpp_1_1Client.html#a7648bd1d2f7d9a86ebd0edb8bef12b5c)
 * 
 * This function returns the default set of OAuth2 scopes that should be used with the Discord SDK when leveraging baseline presence-related features (e.g. friends list, rich presence, provisional accounts, activity invites). If your application is using communications-related features, which are currently available in limited access, you should use ${function.discord_social_client_get_default_communication_scopes} instead.
 * 
 * @returns {String}
 * 
 * @function_end
 */

/**
 * @function discord_social_client_get_version_hash
 * @desc **Discord Function**: [discordpp::Client::GetVersionHash()](https://discord.com/developers/docs/social-sdk/classdiscordpp_1_1Client.html#a4231cecf92efab1e46185cd119455632)
 * 
 * This function returns the git commit hash this version was built from.
 * 
 * @returns {String}
 * 
 * @function_end
 */

/**
 * @function discord_social_client_get_version_major
 * @desc **Discord Function**: [discordpp::Client::GetVersionMajor()](https://discord.com/developers/docs/social-sdk/classdiscordpp_1_1Client.html#ace35d89ad23584649788d16de3aab579)
 * 
 * This function returns the major version of the Discord Social SDK.
 * 
 * @returns {Real}
 * 
 * @function_end
 */

/**
 * @function discord_social_client_get_version_minor
 * @desc **Discord Function**: [discordpp::Client::GetVersionMinor()](https://discord.com/developers/docs/social-sdk/classdiscordpp_1_1Client.html#ac314e5038e06b565672c5ca58fbb9211)
 * 
 * This function returns the minor version of the Discord Social SDK.
 * 
 * @returns {Real}
 * 
 * @function_end
 */

/**
 * @function discord_social_client_get_version_patch
 * @desc **Discord Function**: [discordpp::Client::GetVersionPatch()](https://discord.com/developers/docs/social-sdk/classdiscordpp_1_1Client.html#a8b3242e835241feb7a4ec70257abb5fc)
 * 
 * This function returns the patch version of the Discord Social SDK.
 * 
 * @returns {Real}
 * 
 * @function_end
 */

/**
 * @function discord_social_client_status_to_string
 * @desc **Discord Function**: [discordpp::Client::StatusToString()](https://discord.com/developers/docs/social-sdk/classdiscordpp_1_1Client.html#a0e56ea9f1f59c1fb36f521e1f02d146a)
 * 
 * This function converts the Status enum to a string.
 * 
 * @param {Enum.DiscordClientStatus} status The status enum value.
 * 
 * @returns {String}
 * 
 * @function_end
 */

/**
 * @function discord_social_client_thread_to_string
 * @desc **Discord Function**: [discordpp::Client::ThreadToString()](https://discord.com/developers/docs/social-sdk/classdiscordpp_1_1Client.html#adca1c23392db46c00de6c921ca61e9ae)
 * 
 * This function converts the Thread enum to a string.
 * 
 * @param {Enum.DiscordClientThread} thread The thread enum value.
 * 
 * @returns {String}
 * 
 * @function_end
 */

/**
 * @function discord_social_client_remove_device_change_callback
 * @desc **Discord Function**: N / A
 * 
 * This function removes the callback set with a call to ${function.discord_social_client_set_device_change_callback}.
 * 
 * @function_end
 */

/**
 * @function discord_social_client_remove_no_audio_input_callback
 * @desc **Discord Function**: N / A
 * 
 * This function removes the callback set with a call to ${function.discord_social_client_set_no_audio_input_callback}.
 * 
 * @function_end
 */

/**
 * @function discord_social_client_remove_voice_participant_changed_callback
 * @desc **Discord Function**: N / A
 * 
 * This function removes the callback set with a call to ${function.discord_social_client_set_voice_participant_changed_callback}.
 * 
 * @function_end
 */

/**
 * @function discord_social_client_remove_authorize_device_screen_closed_callback
 * @desc **Discord Function**: N / A
 * 
 * This function removes the callback set with a call to ${function.discord_social_client_set_authorize_device_screen_closed_callback}.
 * 
 * @function_end
 */

/**
 * @function discord_social_client_remove_token_expiration_callback
 * @desc **Discord Function**: N / A
 * 
 * This function removes the callback set with a call to ${function.discord_social_client_set_token_expiration_callback}.
 * 
 * @function_end
 */

/**
 * @function discord_social_client_remove_message_created_callback
 * @desc **Discord Function**: N / A
 * 
 * This function removes the callback set with a call to ${function.discord_social_client_set_message_created_callback}.
 * 
 * @function_end
 */

/**
 * @function discord_social_client_remove_message_deleted_callback
 * @desc **Discord Function**: N / A
 * 
 * This function removes the callback set with a call to ${function.discord_social_client_set_message_deleted_callback}.
 * 
 * @function_end
 */

/**
 * @function discord_social_client_remove_message_updated_callback
 * @desc **Discord Function**: N / A
 * 
 * This function removes the callback set with a call to ${function.discord_social_client_set_message_updated_callback}.
 * 
 * @function_end
 */

/**
 * @function discord_social_client_remove_log_callback
 * @desc **Discord Function**: N / A
 * 
 * This function removes the callback set with a call to ${function.discord_social_client_add_log_callback}.
 * 
 * @function_end
 */

/**
 * @function discord_social_client_remove_status_changed_callback
 * @desc **Discord Function**: N / A
 * 
 * This function removes the callback set with a call to ${function.discord_social_client_set_status_changed_callback}.
 * 
 * @function_end
 */

/**
 * @function discord_social_client_remove_lobby_created_callback
 * @desc **Discord Function**: N / A
 * 
 * This function removes the callback set with a call to ${function.discord_social_client_set_lobby_created_callback}.
 * 
 * @function_end
 */

/**
 * @function discord_social_client_remove_lobby_deleted_callback
 * @desc **Discord Function**: N / A
 * 
 * This function removes the callback set with a call to ${function.discord_social_client_set_lobby_deleted_callback}.
 * 
 * @function_end
 */

/**
 * @function discord_social_client_remove_lobby_member_added_callback
 * @desc **Discord Function**: N / A
 * 
 * This function removes the callback set with a call to ${function.discord_social_client_set_lobby_member_added_callback}.
 * 
 * @function_end
 */

/**
 * @function discord_social_client_remove_lobby_member_removed_callback
 * @desc **Discord Function**: N / A
 * 
 * This function removes the callback set with a call to ${function.discord_social_client_set_lobby_member_removed_callback}.
 * 
 * @function_end
 */

/**
 * @function discord_social_client_remove_lobby_member_updated_callback
 * @desc **Discord Function**: N / A
 * 
 * This function removes the callback set with a call to ${function.discord_social_client_set_lobby_member_updated_callback}.
 * 
 * @function_end
 */

/**
 * @function discord_social_client_remove_lobby_updated_callback
 * @desc **Discord Function**: N / A
 * 
 * This function removes the callback set with a call to ${function.discord_social_client_set_lobby_updated_callback}.
 * 
 * @function_end
 */

/**
 * @function discord_social_client_remove_activity_invite_created_callback
 * @desc **Discord Function**: N / A
 * 
 * This function removes the callback set with a call to ${function.discord_social_client_set_activity_invite_created_callback}.
 * 
 * @function_end
 */

/**
 * @function discord_social_client_remove_activity_invite_updated_callback
 * @desc **Discord Function**: N / A
 * 
 * This function removes the callback set with a call to ${function.discord_social_client_set_activity_invite_updated_callback}.
 * 
 * @function_end
 */

/**
 * @function discord_social_client_remove_activity_join_callback
 * @desc **Discord Function**: N / A
 * 
 * This function removes the callback set with a call to ${function.discord_social_client_set_activity_join_callback}.
 * 
 * @function_end
 */

/**
 * @function discord_social_client_remove_relationship_created_callback
 * @desc **Discord Function**: N / A
 * 
 * This function removes the callback set with a call to ${function.discord_social_client_set_relationship_created_callback}.
 * 
 * @function_end
 */

/**
 * @function discord_social_client_remove_relationship_deleted_callback
 * @desc **Discord Function**: N / A
 * 
 * This function removes the callback set with a call to ${function.discord_social_client_set_relationship_deleted_callback}.
 * 
 * @function_end
 */

/**
 * @function discord_social_client_remove_relationship_groups_updated_callback
 * @desc **Discord Function**: N / A
 * 
 * This function removes the callback set with a call to ${function.discord_social_client_set_relationship_groups_updated_callback}.
 * 
 * @function_end 
 */

/**
 * @function discord_social_client_remove_user_updated_callback
 * @desc **Discord Function**: N / A
 * 
 * This function removes the callback set with a call to ${function.discord_social_client_set_user_updated_callback}.
 * 
 * @function_end
 */

/**
 * @function discord_social_client_create_authorization_code_verifier
 * @desc **Discord Function**: [discordpp::Client::CreateAuthorizationCodeVerifier](https://discord.com/developers/docs/social-sdk/classdiscordpp_1_1Client.html#aba6adc1f978e7bf4c5433c560e1ad704)
 * 
 * This is a helper function that can create a code verifier.
 * 
 * @returns {String}
 * 
 * @function_end 
 */

/**
 * @function discord_social_client_revoke_token
 * @desc **Discord Function**: [discordpp::Client::RevokeToken](https://discord.com/developers/docs/social-sdk/classdiscordpp_1_1Client.html#a30ccea6366efaf0b884efcdcc28a6f2d)
 * 
 * This function revokes all application access/refresh tokens associated with a user with any valid access/refresh token. This will invalidate all tokens and they cannot be used again. This is useful if you want to log the user out of the game and invalidate their session.
 * 
 * [[Note: This function only works for public clients. Public clients are ones that do not have a backend server or their own concept of user accounts and simply rely on a separate system for authentication like Steam/Epic.]]
 * 
 * @param {Real} application_id The application ID.
 * @param {String} token The token.
 * @param {Function} callback The function to be called upon completion.
 * 
 * @event callback
 * @desc 
 * @member {Struct.DiscordClientResult} result The result of the function call.
 * @event_end
 * 
 * @function_end
 */

/**
 * @function discord_social_client_exchange_child_token
 * @desc **Discord Function**: [discordpp::Client::ExchangeChildToken](https://discord.com/developers/docs/social-sdk/classdiscordpp_1_1Client.html#a59f5d9d14f79eb318bf4d57f4e87a5c1)
 * 
 * Exchanges a parent application token for a child application token.
 * 
 * This is used to get a token for a child application that is linked to the parent application. This is only relevant if you have an applications set up in a parent/child relationship, which is applicable if you are a publisher with multiple games under the same account system. Access to this feature is currently limited.
 * 
 * [[Note: This function only works for public clients. Public clients are ones that do not have a backend server or their own concept of user accounts and simply rely on a separate system for authentication like Steam/Epic.]]
 * 
 * @param {String} parent_application_token The parent application token.
 * @param {Real} child_application_id The child application ID.
 * @param {Function} callback The function to be called upon completion.
 * 
 * @event callback
 * @desc 
 * @member {Struct.DiscordClientResult} result The result of the function call.
 * @member {String} access_token The access token.
 * @member {Real} expires_in The duration after which the token expires.
 * @member {String} scopes The scopes.
 * @event_end
 * 
 * @function_end
 */

/**
 * @function discord_social_client_unmerge_into_provisional_account
 * @desc **Discord Function**: [discordpp::Client::UnmergeIntoProvisionalAccount](https://discord.com/developers/docs/social-sdk/classdiscordpp_1_1Client.html#a2da21ae8a3015e0e5e42c1a7226b256f)
 * 
 * This function is used to unlink/unmerge a external identity from a Discord account. This is useful if the user wants to unlink their external identity from their Discord account and create a new provisional account for that identity. This will invalidate all access/refresh tokens for the user and they cannot be used again.
 * 
 * This function should be used with the ${function.discord_social_client_get_provisional_token} function to get a provisional token for the newly created provisional account.
 * 
 * [[Note: This function only works for public clients. Public clients are ones that do not have a backend server or their own concept of user accounts and simply rely on a separate system for authentication like Steam/Epic.]]
 * 
 * @param {Real} application_id The application ID.
 * @param {Enum.DiscordAuthenticationExternalAuthType} external_auth_type The external auth type.
 * @param {String} external_auth_token The external auth token.
 * @param {Function} callback The function to be called upon completion.
 * 
 * @event callback
 * @member {Struct.DiscordClientResult} result The result of the request.
 * @event_end
 * @function_end 
 */

/**
 * @function discord_social_client_register_authorize_request_callback
 * @desc **Discord Function**: [discordpp::Client::RegisterAuthorizeRequestCallback](https://discord.com/developers/docs/social-sdk/classdiscordpp_1_1Client.html#a5f34b873e127a446c9ab549e4588ccd7)
 * 
 * Registers a callback to be invoked when a user requests to initiate the authorization flow.
 * 
 * When you register this callback, the Discord app will show new entry points to allow users to initiate the authorization flow.
 * 
 * @param {Function} callback The function to be called upon completion.
 * 
 * @event callback
 * @desc Invoked when a user requests to initiate the authorization flow from the Discord app. The callback receives no args and must call the functions needed to initiate the auth flow as if the user had clicked the account link button in the game.
 * @event_end
 * @function_end 
 */

/**
 * @function discord_social_client_remove_authorize_request_callback
 * @desc **Discord Function**: N /A
 * 
 * This function removes the callback function previously set with a call to ${function.discord_social_client_register_authorize_request_callback}.
 * 
 * @function_end 
 */

/**
 * @function discord_social_client_edit_user_message
 * @desc **Discord Function**: [discordpp::Client::EditUserMessage](https://discord.com/developers/docs/social-sdk/classdiscordpp_1_1Client.html#a822a3a4a60b73211297e5f43ed92ba23)
 * 
 * This function edits the specified message sent by the current user to the specified recipient.
 * 
 * All of the same restrictions apply as for sending a message, see ${function.discord_social_client_send_user_message} for more.
 * 
 * @param {Real} recipient_id The user ID of the recipient.
 * @param {Real} message_id The ID of the message.
 * @param {String} content The message's content.
 * @param {Function} callback The function to be called upon completion.
 * 
 * @event callback
 * @member {Struct.DiscordClientResult} result The result of the request.
 * @event_end
 * @function_end 
 */

/**
 * @function discord_social_client_get_lobby_messages_with_limit
 * @desc **Discord Function**: [discordpp::Client::GetLobbyMessagesWithLimit](https://discord.com/developers/docs/social-sdk/classdiscordpp_1_1Client.html#a0586192e85caf548b8b321f1cb21301f)
 * 
 * This function retrieves recent messages from the specified lobby.
 * 
 * Returns a list of ${struct.DiscordMessageHandle} representing the recent messages in the lobby, with a maximum of 200 messages and up to 72 hours. The messages are returned in reverse chronological order (newest first). This function requires the current user to be a member of the lobby.
 * 
 * Retrieves recent messages from the specified lobby with the specified limit.
 * 
 * [[Note: This function makes an HTTP request to Discord's API to retrieve messages, as opposed to only returning messages that are cached locally by the SDK.]]
 * 
 * @param {Real} lobby_id The lobby ID.
 * @param {Real} limit The maximum number of messages to retrieve.
 * @param {Function} callback The function to be called upon completion.
 * 
 * @event callback
 * @member {Struct.DiscordClientResult} result The result of the request.
 * @member {Array[Struct.DiscordMessageHandle]} messages An array holding handles to the messages.
 * @event_end
 * @function_end 
 */

/**
 * @function discord_social_client_get_user_message_summaries
 * @desc **Discord Function**: [discordpp::Client::GetUserMessageSummaries](https://discord.com/developers/docs/social-sdk/classdiscordpp_1_1Client.html#a32dafc20ff1f99b019e40bdc81f46dde)
 * 
 * This function retrieves message conversation summaries for all users the current user has DM conversations with.
 * 
 * The callback will be invoked with a list of ${struct.DiscordUserMessageSummary} structs.
 * 
 * @param {Function} callback The function to be called upon completion.
 * 
 * @event callback
 * @member {Struct.DiscordClientResult} result The result of the request.
 * @member {Array[Struct.DiscordUserMessageSummary]} summaries An array of structs representing the summaries.
 * @event_end
 * @function_end 
 */

/**
 * @function discord_social_client_get_user_messages_with_limit
 * @desc **Discord Function**: [discordpp::Client::GetUserMessagesWithLimit](https://discord.com/developers/docs/social-sdk/classdiscordpp_1_1Client.html#a054a758a76c5873b38a4d79651a5f26c)
 * 
 * This function retrieves messages from the DM conversation with the specified user.
 * 
 * Returns an array of ${struct.DiscordMessageHandle} in the callback function representing the recent messages in the conversation with the recipient, with a with a maximum of 200 messages and up to 72 hours. The messages are returned in reverse chronological order (newest first). This function checks the local cache first and only makes an HTTP request to Discord's API if there are not enough cached messages available.
 * 
 * If limit is greater than 0, restricts the number of messages returned. If limit is 0 or negative, the limit parameter is 200 messages and 72 hours. This is intended for games to load message history when users open a DM conversation.
 * 
 * @param {Real} recipient_id The user ID of the recipient.
 * @param {Real} limit The maximum number of messages to retrieve.
 * @param {Function} callback The function to be called upon completion.
 * 
 * @event callback
 * @member {Struct.DiscordClientResult} result The result of the request.
 * @member {Array[Struct.DiscordMessageHandle]} messages  An array holding handles to the messages.
 * @event_end
 * @function_end 
 */

/**
 * @function discord_social_client_join_linked_lobby_guild
 * @desc **Discord Function**: [discordpp::Client::JoinLinkedLobbyGuild](https://discord.com/developers/docs/social-sdk/classdiscordpp_1_1Client.html#a54ec764e72e168de419ac14e24e8fc60)
 * 
 * This function invites the current user to the Discord guild of the channel that is linked to the specified lobby. The user is forwarded to the Discord client with the resulting invite url, upon which the user can decide to accept or decline that invite.
 * 
 * On console platforms, the user is not navigated to any Discord client, so the invite url should be presented to the user in some way, so they can use it.
 * 
 * @param {Real} lobby_id The lobby ID.
 * @param {Function} provisional_user_merge_required_callback The function to be called when provisional user merge is required.
 * @param {Function} callback The function to be called upon completion.
 * 
 * @event callback
 * @desc This is triggered when ${function.discord_social_client_provisional_user_merge_completed} completes.
 * @event_end
 * 
 * @event callback
 * @member {Struct.DiscordClientResult} result The result of the request.
 * @member {String} invite_url The invite URL.
 * @event_end
 * @function_end 
 */

/**
 * @function discord_social_client_set_activity_join_with_application_callback
 * @desc **Discord Function**: [discordpp::Client::SetActivityJoinWithApplicationCallback](https://discord.com/developers/docs/social-sdk/classdiscordpp_1_1Client.html#ade2feb833e0e06a51dbec8f12eba6396)
 * 
 * This function sets a callback function that is invoked when the current user also has Discord running on their computer and they accept an activity invite in the Discord client.
 * 
 * This callback is invoked with the join secret from the activity rich presence, which you can use to join them to the game's internal party system. See [Activity]() for more information on invites.
 * 
 * @param {Function} callback The function to be called upon completion.
 * 
 * @event callback
 * @member {Real} application_id The application ID.
 * @member {String} join_secret The join secret.
 * @event_end
 * @function_end
 */

/**
 * @function discord_social_client_remove_activity_join_with_application_callback
 * @desc **Discord Function**: N / A
 * 
 * This function removes the callback function previously set with a call to ${function.discord_social_client_set_activity_join_with_application_callback}.
 * 
 * @function_end
 */

/**
 * @function discord_social_client_set_relationship_groups_updated_callback
 * @desc **Discord Function**: [discordpp::Client::SetRelationshipGroupsUpdatedCallback](https://discord.com/developers/docs/social-sdk/classdiscordpp_1_1Client.html#af12441ef091298f968075b7190851098)
 * 
 * The RelationshipGroupsUpdatedCallback is invoked whenever any user in the friends list changes. This is intended to be the callback used to ensure the friends list is kept fresh. This can be used in tandem with ${function.discord_social_client_get_relationships_by_group} to build and update the friends list.
 * 
 * @param {Function} callback The function to be called upon completion.
 * 
 * @event callback
 * @member {Real} user_id The user ID.
 * @event_end
 * @function_end 
 */

/**
 * @function discord_social_client_is_discord_app_installed
 * @desc **Discord Function**: [discordpp::Client::IsDiscordAppInstalled](https://discord.com/developers/docs/social-sdk/classdiscordpp_1_1Client.html#a97ed881882de5c73158a1db8cd7a58e5)
 * 
 * This function checks whether the Discord mobile app is installed on this device. On desktop platforms, always returns `false`.
 * 
 * This check does not require a client connection and can be called at any time.
 * 
 * This can be used to provide UI hints to users about whether they can authorize via the Discord app, or whether they will need to use a web browser flow.
 * 
 * Platform Requirements:
 * 
 * * iOS: Your app must include `"discord"` in the LSApplicationQueriesSchemes array in your Info.plist for this check to work correctly.
 * * Android: Your app must include `"com.discord"` in the `queries` element in your AndroidManifest.xml (required for Android 11+).
 * 
 * @param {Function} callback The function to be called upon completion.
 * 
 * @event callback
 * @member {Bool} installed Whether Discord mobile app is installed.
 * @event_end
 * @function_end 
 */

/**
 * @function discord_social_client_open_connected_games_settings_in_discord
 * @desc **Discord Function**: [discordpp::Client::OpenConnectedGamesSettingsInDiscord](https://discord.com/developers/docs/social-sdk/classdiscordpp_1_1Client.html#a24f268f5eebe9919a3f774354eb577e0)
 * 
 * This function opens the Connected Games settings in the Discord client, which is where users can manage their settings related to games using the Discord Social SDK.
 * 
 * If the client isn't connected or the user is a provisional account, this function does nothing.
 * 
 * It is always a no-op for console platforms.
 * 
 * @param {Function} callback The function to be called upon completion.
 * 
 * @event callback
 * @member {Struct.DiscordClientResult} result The result of the request.
 * @event_end
 * @function_end 
 */