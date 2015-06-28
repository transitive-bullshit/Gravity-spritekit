void main()
{
    vec4 c = texture2D(u_texture, v_tex_coord);
    float threshold = 0.91;
    
    if (c.r >= threshold) {
        gl_FragColor = vec4(1.0) * ((c - vec4(threshold)) / (1.0 - threshold));
    } else {
        discard;
    }
}