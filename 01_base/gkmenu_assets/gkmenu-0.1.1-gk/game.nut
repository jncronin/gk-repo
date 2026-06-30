function gkver()
{
	local root = getroottable();
	if("gk" in root)
	{
		return gk;
	}
	return 1;
}

function game(name, desc = "", ret = null, param_append = [])
{
    if(ret == null)
    {
        ret = {};
        ret.screen_w <- 640;
        ret.screen_h <- 480;
        ret.screen_pf <- GK_PIXELFORMAT_RGB565;
        ret.screen_ignore_vsync <- false;
        ret.keymap <- {
            [GK_KEYLEFT] = GK_SCANCODE_LEFT,
            [GK_KEYRIGHT] = GK_SCANCODE_RIGHT,
            [GK_KEYUP] = GK_SCANCODE_UP,
            [GK_KEYDOWN] = GK_SCANCODE_DOWN,
            [GK_KEYA] = GK_SCANCODE_RETURN,
            [GK_KEYB] = GK_SCANCODE_TAB,
            [GK_KEYX] = 0,
            [GK_KEYY] = 0,
            [GK_KEYVOLUP] = 0,
            [GK_KEYVOLDOWN] = 0,
            [GK_KEYTILTLEFT] = 0,
            [GK_KEYTILTRIGHT] = 0,
            [GK_KEYTILTUP] = 0,
            [GK_KEYTILTDOWN] = 0,
			[GK_KEYJOY] = GK_SCANCODE_RETURN,
			[GK_KEYJOYDIGILEFT] = GK_SCANCODE_LEFT,
			[GK_KEYJOYDIGIRIGHT] = GK_SCANCODE_RIGHT,
			[GK_KEYJOYDIGIUP] = GK_SCANCODE_UP,
			[GK_KEYJOYDIGIDOWN] = GK_SCANCODE_DOWN
        };
        ret.gamepad_is_joystick <- false;
        ret.gamepad_is_keyboard <- true;
        ret.gamepad_is_mouse <- false;
        ret.tilt_is_joystick <- false;
        ret.tilt_is_keypad <- false;
	ret.touch_is_mouse <- false;
	ret.joystick_is_joystick <- false;
        ret.fname <- "";
        ret.cwd <- "/";
	ret.graphics_texture_size <- 0;
    }
    else if(typeof(ret) == "function")
    {
        ret = ret({});
    }
    
    ret.name <- name;
    ret.desc <- desc;

    if(!("params" in ret))
    {
        ret.params <- [];
    }
    if(typeof(param_append) == "string")
        ret.params.append(param_append)
    else if(typeof(param_append) == "array")
        ret.params.extend(param_append);

    return ret;
}
