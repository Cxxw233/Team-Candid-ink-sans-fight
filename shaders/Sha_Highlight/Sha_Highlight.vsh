// Vertex Shader
attribute vec3 in_Position;
attribute vec3 in_Normal;
attribute vec4 in_Colour;
attribute vec2 in_TextureCoord;

varying vec2 v_vTexcoord;

void main() {
    gl_Position = vec4(in_Position, 1.0);
    v_vTexcoord = in_TextureCoord;
}