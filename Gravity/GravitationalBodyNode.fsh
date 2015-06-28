void main()
{
    float d = max(0.0, 0.9 - length(2.0 * v_tex_coord - vec2(1.0))); // [-1,1]
    float e = d * d;
    
    gl_FragColor = vec4(e);
}