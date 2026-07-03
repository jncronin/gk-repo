dofile("game.nut");

function amiberry(ret)
{
    ret.fname <- "/amiberry-lite-5.9.2-gk/bin/amiberry-lite";
    ret.cwd <- "/amiberry-lite-5.9.2-gk";
	ret.screen_w <- 320;
	ret.screen_h <- 200;
	ret.screen_pf <- GK_PIXELFORMAT_ARGB8888;

	ret.keymap <- {
        [GK_KEYA] = GK_SCANCODE_LALT,
        [GK_KEYB] = GK_SCANCODE_LSHIFT,
        [GK_KEYX] = GK_SCANCODE_KP_0,
        [GK_KEYY] = GK_SCANCODE_KP_PERIOD,
        [GK_KEYSTART] = GK_SCANCODE_RETURN,
        [GK_KEYSELECT] = GK_SCANCODE_ESCAPE,
        [GK_KEYJOYDIGILEFT] = GK_SCANCODE_A,
        [GK_KEYJOYDIGIRIGHT] = GK_SCANCODE_D,
        [GK_KEYJOYDIGIUP] = GK_SCANCODE_W,
        [GK_KEYJOYDIGIDOWN] = GK_SCANCODE_S,
        [GK_KEYJOYBDIGILEFT] = GK_SCANCODE_KP_4,
        [GK_KEYJOYBDIGIRIGHT] = GK_SCANCODE_KP_6,
        [GK_KEYJOYBDIGIUP] = GK_SCANCODE_KP_8,
        [GK_KEYJOYBDIGIDOWN] = GK_SCANCODE_KP_2
	};

    ret.left_stick <- GK_STICK_DIGITAL;
    ret.right_stick <- GK_STICK_DIGITAL;
    ret.tilt_stick <- 0;
    ret.throttle_stick <- 0;

	ret.screen_overwritten_each_frame <- true;

    ret.cpu_freq <- 2000000000;

	if(!("params" in ret))
	{
		ret.params <- [];
	}
	ret.params.extend([
        "-conf", "/home/user/Amiberry-Lite/conf/default.uae",
        "-G",
        "--log"
    ]);

    ret.osd <- "osd/amiberry-osd.nut";

    return ret;
}
