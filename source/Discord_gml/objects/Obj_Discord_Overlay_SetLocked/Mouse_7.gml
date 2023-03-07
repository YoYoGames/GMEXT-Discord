
var _locked = Discord_Overlay_IsLocked();
show_debug_message("Discord_Overlay_IsLocked: {0}", _locked);

Discord_Overlay_SetLocked(!_locked);
