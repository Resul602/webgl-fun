void mainImage(out vec4 fragColour, in vec2 fragCoord) {
    float aspect = iResolution.x/iResolution.y;
    // vec2 uv = (fragCoord * 2. - iResolution.xy) / iResolution.y;
    
    vec2 uv = (fragCoord / iResolution.xy) * vec2(2) - vec2(1);
    uv.x *= aspect;

    float time = iTime;


    float dist = length(uv);

    //fragColour = vec4(vec3(smoothstep(0., 0.5, abs(uv.y - uv.x))), 0);
    //fragColour = vec4(vec3(abs(uv.y-uv.x)),0);
    fragColour = vec4(vec3(dist), 0);
}