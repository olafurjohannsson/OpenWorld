#version 330 core
// Input attributes
layout (location = 0) in vec2 vertexCoordinates;
layout (location = 1) in vec2 textureCoordinates;

// Output to fragment
out vec4 VertexColor;
out vec2 TextureCoordinates;

// Shared accros shaders
uniform mat4 transform;

void main() {
    gl_Position = transform * vec4(vertexCoordinates.x, vertexCoordinates.y, 0.0f, 1.0f);
    VertexColor = transform * vec4(0.2f, 0.2f, 0.0f, 1.0f);
    TextureCoordinates = textureCoordinates;
}
