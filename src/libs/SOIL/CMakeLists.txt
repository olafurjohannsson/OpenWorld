cmake_minimum_required(VERSION 3.9.0)

add_library(
        SOIL
        SOIL/SOIL.c
        SOIL/SOIL.h
        SOIL/image_DXT.c
        SOIL/image_DXT.h
        SOIL/image_helper.c
        SOIL/image_helper.h
        SOIL/stbi_DDS_aug.h
        SOIL/stbi_DDS_aug_c.h
        SOIL/stb_image_aug.h
        SOIL/stb_image_aug.c
)
