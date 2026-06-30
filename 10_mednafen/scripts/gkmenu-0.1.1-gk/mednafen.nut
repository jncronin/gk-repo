dofile("game.nut");

function mednafen(ret)
{
    ret.fname <- "/mednafen-gk/bin/mednafen";
    ret.cwd <- "/mednafen-gk";
    ret.screen_w <- 320; 
    ret.screen_h <- 240;
    ret.screen_pf <- ::GK_PIXELFORMAT_ARGB8888;
    ret.heap_size <- 32*1024*1024;
    ret.stack_size <- 64*1024;
    ret.screen_ignore_vsync <- true;
	ret.screen_overwritten_each_frame <- true;
    ret.gamepad_is_joystick <- false;
    ret.gamepad_is_keyboard <- true;
    ret.gamepad_is_joystick <- false;
    
    if(!("params" in ret))
    {
        ret.params <- [];
    }
    ret.params.extend([
        "-video.driver", "softfb",
        "-video.fs", "1",
        "-sound", "1",
        "-sound.rate", "22050",
	"-sound.volume", "100",
        "-gb.stretch", "aspect_int",
        "-osd.alpha_blend", "0",
        "-video.blit_timesync", "0",
        "-fps.autoenable", "0",
        "-md.videoip", "0",
    ]);

    ret.osd <- "mednafen-osd.nut";

    return ret;
}
