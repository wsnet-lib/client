/// @description net_lobby_max_players(max_players)
/// @param max_players
function net_lobby_max_players(max_players) 
{
	with(obj_wsnet)
	{
	    buffer_seek(buffer, buffer_seek_start, 0);
	    buffer_write(buffer, buffer_u8, wsnet_cmd.lobby_max_players);
	    buffer_write(buffer, buffer_u8, max_players); //max players
	    return gws_send_buffer(ws, buffer, buffer_tell(buffer));
	}
}