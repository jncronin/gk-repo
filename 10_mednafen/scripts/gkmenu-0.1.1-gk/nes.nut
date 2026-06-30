dofile("mednafen.nut")

function nes(ret)
{   
    ret = mednafen(ret);

	ret.osd <- "osd/mednafen-nes-osd.nut";

    local keymap = {
        [::GK_KEYLEFT] = ::GK_SCANCODE_A,
        [::GK_KEYRIGHT] = ::GK_SCANCODE_D,
        [::GK_KEYUP] = ::GK_SCANCODE_W,
        [::GK_KEYDOWN] = ::GK_SCANCODE_S,
        [::GK_KEYA] = ::GK_SCANCODE_KP_2,
        [::GK_KEYB] = ::GK_SCANCODE_KP_3,
	[::GK_KEYRB] = ::GK_SCANCODE_KP_2,
        [::GK_KEYX] = 0,
        [::GK_KEYY] = 0,
        [::GK_KEYJOYDIGILEFT] = ::GK_SCANCODE_A,
        [::GK_KEYJOYDIGIRIGHT] = ::GK_SCANCODE_D,
        [::GK_KEYJOYDIGIUP] = ::GK_SCANCODE_W,
        [::GK_KEYJOYDIGIDOWN] = ::GK_SCANCODE_S,
	[::GK_KEYSELECT] = ::GK_SCANCODE_TAB,
	[::GK_KEYSTART] = ::GK_SCANCODE_RETURN,
    };
    ret.keymap <- keymap;

    ret.img <- "img/nes.png";

    ret.params.extend([
	"-nes.soundq", "0"
    ]);

    return ret;
}
