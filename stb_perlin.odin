package stb_perlin

import "core:c"

when ODIN_OS == .Windows { foreign import stb_perlin "./stb_perlin.lib"}

@(default_calling_convention="c", link_prefix="stb_perlin_")
foreign stb_perlin {
    noise3 :: proc(x,y,z: c.float, x_wrap, y_wrap, z_wrap: c.int) -> c.float ---
    noise3_seed :: proc(x,y,z: c.float, x_wrap, y_wrap, z_wrap: c.int, seed: c.int) -> c.float ---
    ridge_noise3 :: proc(x,y,z: c.float, lacunarity, gain, offset: c.float, octaves: c.int) -> c.float ---
    fbm_noise3 :: proc(x,y,z: c.float, lacunarity, gain: c.float, octaves: c.int) -> c.float ---
    turbulence_noise3 :: proc(x,y,z: c.float, lacunarity, gain: c.float, octaves: c.int) -> c.float ---
    noise3_wrap_nonpow2 :: proc(x,y,z: c.float, x_wrap, y_wrap, z_wrap: c.int, seed:c.uchar) -> c.float ---
 
}
