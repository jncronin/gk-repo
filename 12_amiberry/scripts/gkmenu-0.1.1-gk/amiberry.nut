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
        [GK_KEYJOYBDIGIDOWN] = GK_SCANCODE_KP_2,
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
        "-conf", "/home/user/Amiberry-Lite/conf/default.uae",
        "-G",
        "--log"
    ]);

    ret.img <- "img/amiga.png";
    ret.osd <- "osd/amiberry-osd.nut";

    return ret;
}

function amiberry_diskarray(arr)
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
        "-0", disk0,
        "--statefile", disk0 + ".start.uss"
    ];

    if(arr.len() > 1)
    {
        local is_first = true;
        local arrstr = "";

        foreach(cdisk in arr)
        {
            if(is_first)
            {
                is_first = false;
            }
            else
            {
                arrstr = arrstr + ",";
            }

            arrstr = arrstr + cdisk;
        }

        ret.append("-diskswapper=\"" + arrstr + "\"");
    }

    return ret;
}
