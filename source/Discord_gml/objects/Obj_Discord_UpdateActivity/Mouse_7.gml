
// Here we can update out current activity status
// This function allows the use of a struct with the following members:
//
//	state {string}
//	details {string}
//	type {constant.Discord_ActivityType*}
//	largeImage {string}
//	largeText {string}
//	smallImage {string}
//	smallText {string}
//
Discord_Activities_UpdateActivity({
	state: "Creating Games",
	details: "Details...",
	type: Discord_ActivityType_Playing,
	largeImage: "download",
	largeText: "YoYoGames",
	smallImage: "yoyoimgsmall",
	smallText: "YoYoGames"
});

