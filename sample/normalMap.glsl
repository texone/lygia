/*
original_author: Patricio Gonzalez Vivo
description: Standar way to get normals from a normal map
use: sampleNormal(<sampler2D> tex, <vec2> st)
options:
    - SAMPLER_FNC(TEX, UV): optional depending the target version of GLSL (texture2D(...) or texture(...))
*/

#ifndef SAMPLER_FNC
#define SAMPLER_FNC(TEX, UV) texture2D(TEX, UV)
#endif

#ifndef FNC_SAMPLENORMALMAP
#define FNC_SAMPLENORMALMAP
vec3 sampleNormalMap(in sampler2D tex, in vec2 st) { return SAMPLER_FNC(tex, st).xyz * 2.0 - 1.0; }
#endif
