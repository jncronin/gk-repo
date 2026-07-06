dofile("game.nut");

function hatari(ret)
{
    ret.fname <- "/Hatari-0.1.1-gk/bin/hatari";
    ret.cwd <- "/Hatari-0.1.1-gk";
	ret.screen_w <- 320;
	ret.screen_h <- 200;
	ret.screen_pf <- GK_PIXELFORMAT_ARGB8888;

	ret.keymap <- {
        [GK_KEYJOYDIGILEFT] = GK_SCANCODE_LEFT,
        [GK_KEYJOYDIGIRIGHT] = GK_SCANCODE_RIGHT,
        [GK_KEYJOYDIGIUP] = GK_SCANCODE_UP,
        [GK_KEYJOYDIGIDOWN] = GK_SCANCODE_DOWN,
        [GK_KEYA] = GK_SCANCODE_RCTRL,
        [GK_KEYSTART] = GK_SCANCODE_RETURN,
        [GK_KEYSELECT] = GK_SCANCODE_F12,
        [GK_KEYLEFT] = GK_SCANCODE_LEFT,
        [GK_KEYRIGHT] = GK_SCANCODE_RIGHT,
        [GK_KEYUP] = GK_SCANCODE_UP,
        [GK_KEYDOWN] = GK_SCANCODE_DOWN
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
        "--tos", "/share/hatari/tos102.rom",
    ]);

    ret.osd <- "osd/hatari-osd.nut";

    return ret;
}

function hatari_diskarray(arr)
{
    if(typeof arr == "string")
    {
        arr = [ arr ];
    }

    local ret = [];

    if(arr.len() == 0)
    {
        return ret;
    }

    local disk0 = arr[0];

    ret = [
        "--disk-a", disk0,
        "--memstate", disk0 + ".state"
    ];

    // hatari doesn't support disk swapping

    return ret;
}
