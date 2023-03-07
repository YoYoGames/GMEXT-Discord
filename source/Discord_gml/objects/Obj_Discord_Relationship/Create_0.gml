
// Makes a new relationships query using the providing relationship type as filter.
Discord_Relationships_Filter(Discord_RelationshipType_Friend);

// Draw only the first 10 entries
var _count = Discord_Relationships_Count();
_count = min(_count, 10);

// Loop through them and render the data.
for(var _i = 0 ; _i < Discord_Relationships_Count() ; _i ++)
{
	// Get the relationship data for a given index using 'Discord_Relationships_GetAt'
	var _relationship = Discord_Relationships_GetAt(_i);
	
	// Calculate the new position (some magic numbers)
	var _x = 130 + (_i % 5)*250;
	var _y = 150 + 200*floor(_i/5);
	
	// Create a 'Obj_Discord_User' to handle rendering the data.
	instance_create_depth(_x, _y, depth, Obj_Discord_User, {
		
		// Pass the data along to the created instance.
		username: _relationship.user.username,
		userId: _relationship.user.userId
	});
}
