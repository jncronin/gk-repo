dofile("mednafen.nut")

function snes(ret)
{   
    ret = mednafen(ret);

	ret.osd <- "osd/mednafen-snes-osd.nut";

	ret.screen_w <- 256;
	ret.screen_h <- 224;

    local keymap = {
        [::GK_KEYLEFT] = ::GK_SCANCODE_A,
        [::GK_KEYRIGHT] = ::GK_SCANCODE_D,
        [::GK_KEYUP] = ::GK_SCANCODE_W,
        [::GK_KEYDOWN] = ::GK_SCANCODE_S,
	[::GK_KEYSELECT] = ::GK_SCANCODE_TAB,
	[::GK_KEYSTART] = ::GK_SCANCODE_RETURN,
        [::GK_KEYA] = ::GK_SCANCODE_KP_2,
        [::GK_KEYB] = ::GK_SCANCODE_KP_6,
        [::GK_KEYX] = ::GK_SCANCODE_KP_4,
        [::GK_KEYY] = ::GK_SCANCODE_KP_8,
        [::GK_KEYJOYDIGILEFT] = ::GK_SCANCODE_A,
        [::GK_KEYJOYDIGIRIGHT] = ::GK_SCANCODE_D,
        [::GK_KEYJOYDIGIUP] = ::GK_SCANCODE_W,
        [::GK_KEYJOYDIGIDOWN] = ::GK_SCANCODE_S,
	[::GK_KEYLB] = ::GK_SCANCODE_KP_7,
	[::GK_KEYRB] = ::GK_SCANCODE_KP_9,
    };
    ret.keymap <- keymap;

	ret.params.extend([
		"-snes_faust.correct_aspect", "0",
		"-snes_faust.renderer", "mt",
		"-snes_faust.stretch", "0",
		"-snes_faust.videoip", "0",
		"-snes_faust.spex", "1",
		"-sound.rate", "32000"
	]);

    ret.img <- "img/snes.png";

    return ret;
}
