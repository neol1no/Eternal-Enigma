if (follow != noone)
{
	xTo = follow.x;
	yTo = follow.y;
}

x += (xTo - x)/15;
y += (yTo - y)/15;

camera_set_view_pos(view_camera[0], x-(camWidth*1),y-(camHeight*1.2));