#version 330 core

//pro textury

layout (location = 0) in vec3 aPos;
layout (location = 1) in vec3 aColor;
layout (location = 2) in vec2 aTexture;

out vec3 outColor;
out vec2 outTexture;

uniform mat4 matrix;

void main()
{
    gl_Position = matrix * vec4(aPos.x, aPos.y, aPos.z, 1.0);
    outColor = aColor;
    outTexture = aTexture;
}
