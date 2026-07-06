dofile("game.nut");

function atarixl(ret)
{
    ret.fname <- "/atari++-0.1.1-gk/bin/atari++";
    ret.cwd <- "/atari++-0.1.1-gk";

	ret.keymap <- {
        [GK_KEYJOYDIGILEFT] = GK_SCANCODE_KP_4,
        [GK_KEYJOYDIGIRIGHT] = GK_SCANCODE_KP_6,
        [GK_KEYJOYDIGIUP] = GK_SCANCODE_KP_8,
        [GK_KEYJOYDIGIDOWN] = GK_SCANCODE_KP_2,
        [GK_KEYA] = GK_SCANCODE_KP_0,
        [GK_KEYB] = GK_SCANCODE_KP_ENTER,
        [GK_KEYSTART] = GK_SCANCODE_F4,
        [GK_KEYSELECT] = GK_SCANCODE_F3,
        [GK_KEYX] = GK_SCANCODE_F2,
        [GK_KEYLEFT] = GK_SCANCODE_LEFT,
        [GK_KEYRIGHT] = GK_SCANCODE_RIGHT,
        [GK_KEYUP] = GK_SCANCODE_UP,
        [GK_KEYDOWN] = GK_SCANCODE_DOWN
	};

    ret.left_stick <- GK_STICK_DIGITAL;
    ret.right_stick <- GK_STICK_DIGITAL;
    ret.tilt_stick <- 0;
    ret.throttle_stick <- 0;

    ret.screen_update_method <- GK_SCREEN_UPDATE_PARTIAL_NOREADBACK;

	if(!("params" in ret))
	{
		ret.params <- [];
	}
	ret.params.extend([
        "-AcceptLicence", "on",
        "-PixelWidth", "1",
        "-PixelHeight", "1",
    ]);

    ret.osd <- "osd/atari++-osd.nut";

    return ret;
}
