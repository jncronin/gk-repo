dofile("mednafen.nut")

function lynx(ret)
{   
    ret = mednafen(ret);
	ret.osd <- "osd/mednafen-lynx-osd.nut";

    local keymap = {
        [::GK_KEYLEFT] = ::GK_SCANCODE_A,
        [::GK_KEYRIGHT] = ::GK_SCANCODE_D,
        [::GK_KEYUP] = ::GK_SCANCODE_W,
        [::GK_KEYDOWN] = ::GK_SCANCODE_S,
        [::GK_KEYA] = ::GK_SCANCODE_KP_2,
        [::GK_KEYB] = ::GK_SCANCODE_KP_3,
        [::GK_KEYX] = 0,
        [::GK_KEYY] = 0,
        [::GK_KEYJOYDIGILEFT] = ::GK_SCANCODE_A,
        [::GK_KEYJOYDIGIRIGHT] = ::GK_SCANCODE_D,
        [::GK_KEYJOYDIGIUP] = ::GK_SCANCODE_W,
        [::GK_KEYJOYDIGIDOWN] = ::GK_SCANCODE_S,
	[::GK_KEYSELECT] = ::GK_SCANCODE_KP_1,
	[::GK_KEYSTART] = ::GK_SCANCODE_KP_7,
	[::GK_KEYJOYB] = ::GK_SCANCODE_KP_4
    };
    ret.keymap <- keymap;

    ret.img <- "img/lynx.png";

	ret.screen_ignore_vsync <- false;
	ret.screen_overwritten_each_frame <- false;

    return ret;
}
