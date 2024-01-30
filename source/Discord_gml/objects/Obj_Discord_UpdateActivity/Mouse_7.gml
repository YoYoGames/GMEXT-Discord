
// Here we can update out current activity status
// This function allows the use of an activity {struct.Activity} struct
//
Discord_Activities_UpdateActivity({
	type: Discord_ActivityType_Playing,
	state: "Creating Games",
	details: "Details...",
	timestamps:
	{
		startTime: 5,
	},
	assets:
	{
		largeImage: "download", // Larger Image Asset Value
		largeText: "YoYoGames", // Large Image Tooltip
		smallImage: "yoyoimgsmall", // Small Image Asset Value
		smallText: "YoYoGames", // Small Image Tooltip
	},
	party:
	{
		id: "foo partyID",
		size: {
		    currentSize: 1,
		    maxSize: 4,
		},
	},
	secrets:
	{
		match: "foo matchSecret",
		join: "foo joinSecret",
		spectate: "foo spectateSecret",
	},
	instance: true,
});

