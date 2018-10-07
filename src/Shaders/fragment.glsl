#version 330 core

in vec4 VertexColor;
in vec2 TextureCoordinates;

uniform sampler2D sampled2DTexture;

out vec4 FragColor;

void main() {
    FragColor = texture(sampled2DTexture, TextureCoordinates);
}
