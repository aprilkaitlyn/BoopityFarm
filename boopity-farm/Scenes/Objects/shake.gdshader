shader_type canvas_item;

//intensity will be set in the tree's script
uniform float shake_intensity = 0.0;
uniform float shake_speed = 20.0;

//shake tree from top going down
void vertex() {
	vec2 shake = vec2(0,0);

	//picks part of tree above the X axis - the y-axis is inverted in godot
	if(VERTEX.y < 0.0) {
		shake.x = sin(TIME * shake_speed + VERTEX.y) * shake_intensity;
	}

	VERTEX.xy += shake;
}

//deleted the other 2 auto generated functions