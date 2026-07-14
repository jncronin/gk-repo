dofile("game.nut");

function pcsx(ret)
{
    ret.fname <- "/pcsx_rearmed-gk/bin/pcsx";
    ret.cwd <- "/pcsx_rearmed-gk/bin";

	ret.keymap <- {
        [GK_KEYA] =             GK_SCANCODE_Z,
        [GK_KEYB] =             GK_SCANCODE_X,
        [GK_KEYX] =             GK_SCANCODE_S,
        [GK_KEYY] =             GK_SCANCODE_D,
        [GK_KEYJOYDIGILEFT] =   GK_SCANCODE_J,
        [GK_KEYJOYDIGIRIGHT] =  GK_SCANCODE_L,
        [GK_KEYJOYDIGIUP] =     GK_SCANCODE_I,
        [GK_KEYJOYDIGIDOWN] =   GK_SCANCODE_K,
        [GK_KEYLEFT] =          GK_SCANCODE_ESCAPE,
        [GK_KEYRIGHT] =         GK_SCANCODE_RETURN,
        [GK_KEYUP] =            0,
        [GK_KEYDOWN] =          0,
        [GK_KEYSTART] =         GK_SCANCODE_V,
        [GK_KEYSELECT] =        GK_SCANCODE_C,
        [GK_KEYLT] =            GK_SCANCODE_E,
        [GK_KEYRT] =            GK_SCANCODE_T,
        [GK_KEYLB] =            GK_SCANCODE_W,
        [GK_KEYRB] =            GK_SCANCODE_R,
	};

    ret.left_stick <- GK_STICK_DIGITAL;
    ret.right_stick <- GK_STICK_DIGITAL;
    ret.tilt_stick <- 0;
    ret.throttle_stick <- 0;

	ret.screen_overwritten_each_frame <- true;

    ret.cpu_freq <- 1800000000;

	if(!("params" in ret))
	{
		ret.params <- [];
	}
	ret.params.extend([
        "-cdfile"
    ]);

    ret.img <- "img/psx.png";
    ret.osd <- "osd/pcsx-osd.nut";

    return ret;
}
