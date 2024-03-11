shader_type canvas_item;

uniform vec2 holeCenter;
uniform float holeRadius;
uniform float penumbra = 20.0;

varying vec2 p;

void vertex(){
	p = (MODEL_MATRIX * vec4(VERTEX, 0.0, 1.0) ).xy;
}

void fragment(){
	COLOR.a = smoothstep(holeRadius - penumbra/2.0, holeRadius + penumbra/2.0, length(p - holeCenter));
}