void mainImage(out vec4 fragColour, in vec2 fragCoord) {
    vec2 uv = ((fragCoord / iResolution.xy) * vec2(2)) - vec2(1);
    float time = iTime;


    float dist = length(uv);

    if (uv.x < uv.y) {
        fragColour = vec4(vec3(dist), 0);
    }
    else {
        fragColour = vec4(0,0,1,0);
    }
}