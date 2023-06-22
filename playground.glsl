void mainImage(out vec4 fragColour, in vec2 fragCoord) {
    float aspect = iResolution.x/iResolution.y;
    // vec2 uv = (fragCoord * 2. - iResolution.xy) / iResolution.y;
    
    const float PI = 3.1415; 

    vec2 uv = (fragCoord / iResolution.xy) * vec2(2) - vec2(1);
    uv.x *= aspect;

    vec2 rotated_uv;

    rotated_uv.x = uv.x * sin(iTime/1.);
    rotated_uv.y = uv.y * cos((iTime/1.)+(PI/3.));



    float dist = length(uv);

    //fragColour = vec4(vec3(smoothstep(0., 0.5, abs(uv.y - uv.x))), 0);
    //fragColour = vec4(vec3(abs(uv.y-uv.x)),0);
    //fragColour = vec4(vec3(dist), 0);

    //fragColour = vec4(rotated_uv, 0, 1);

    fragColour = vec4(vec3(smoothstep(rotated_uv.x, rotated_uv.y, 0.)), 1);
}   