// Fragment Shader
varying vec2 v_vTexcoord;
uniform vec4 u_lightColor;
uniform vec2 u_lightPos;
uniform float u_lightRadius;

void main() {
    vec2 distance = v_vTexcoord - u_lightPos;
    float radius = length(distance);
    vec4 color = vec4(1, 1, 1, 1);
    float alpha = smoothstep(u_lightRadius, u_lightRadius - 0.1, radius);
    gl_FragColor = mix(color, u_lightColor, alpha);
}
