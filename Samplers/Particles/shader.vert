#version 460 core

layout(location = 0) in vec3 aPos;
layout(location = 1) in vec2 aTexCoords;
layout(location = 3) in mat4 aModels;

out vec2 TexCoords;

uniform vec3 CameraRight;
uniform vec3 CameraUp;


uniform mat4 projection;
uniform mat4 view;
uniform mat4 model;

// void main()
// {
//     TexCoords = aTexCoords;

//     vec3 vertexPosition = aPositions + CameraRight * aPos.x * Size.x + CameraUp * aPos.y * Size.y;
//     gl_Position = vec4(vertexPosition, 1.0) * view * projection;

// }


void main()
{
    TexCoords = aTexCoords;

    vec3 vertexPosition = CameraRight * aPos.x + CameraUp * aPos.y;

    gl_Position = vec4(vertexPosition, 1.0) * model * aModels * view * projection;

}