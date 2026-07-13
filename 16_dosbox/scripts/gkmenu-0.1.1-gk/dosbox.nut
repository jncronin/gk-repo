dofile("game.nut");

function dosboxs(ret)
{
    ret.fname <- "/dosbox-staging-0.83.0-gk/bin/dosbox";
    ret.cwd <- "/dosbox-staging-0.83.0-gk";
    
    ret.screen_w <- 720;
    ret.screen_h <- 400;
    ret.screen_pf <- GK_PIXELFORMAT_ARGB8888;
    ret.screen_overwritten_each_frame <- true;
    
    ret.left_stick <- ::GK_STICK_JOY0;
    ret.keymap <- {
        [GK_KEYLEFT] = 0,
        [GK_KEYRIGHT] = 0,
        [GK_KEYUP] = ::GK_SCANCODE_F12,
        [GK_KEYDOWN] = ::GK_SCANCODE_F11,
        [GK_KEYA] = ::GK_GAMEPAD_BUTTON + 0,
        [GK_KEYB] = ::GK_GAMEPAD_BUTTON + 1,
        [GK_KEYX] = ::GK_SCANCODE_RETURN,
        [GK_KEYY] = ::GK_SCANCODE_ESCAPE
    };

    if(!("params" in ret))
    {
            ret.params <- [];
    }

    ret.cpu_freq <- 2000000000;
    
    ret.img <- "img/dosbox.png";

    return ret;
}

function dosboxx(ret)
{
    ret.fname <- "/dosboxx-gkv4/bin/dosbox-x";
    ret.cwd <- "/dosboxx-gkv4";
    
    ret.screen_w <- 720;
    ret.screen_h <- 480;
    ret.screen_pf <- GK_PIXELFORMAT_RGB565;
    ret.screen_update_method <- ::GK_SCREEN_UPDATE_PARTIAL_NOREADBACK;
    
    ret.left_stick <- ::GK_STICK_JOY0;
    ret.keymap <- {
        [GK_KEYLEFT] = 0,
        [GK_KEYRIGHT] = 0,
        [GK_KEYUP] = ::GK_SCANCODE_F12,
        [GK_KEYDOWN] = ::GK_SCANCODE_F11,
        [GK_KEYA] = ::GK_GAMEPAD_BUTTON + 0,
        [GK_KEYB] = ::GK_GAMEPAD_BUTTON + 1,
        [GK_KEYX] = ::GK_SCANCODE_RETURN,
        [GK_KEYY] = ::GK_SCANCODE_ESCAPE
    };

    if(!("params" in ret))
    {
            ret.params <- [];
    }

    ret.cpu_freq <- 2000000000;
    
    ret.img <- "img/dosbox.png";

    return ret;
}
