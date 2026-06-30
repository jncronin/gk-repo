dofile("mednafen.nut")

function md(ret)
{   
    ret = mednafen(ret);
	ret.osd <- "osd/mednafen-md-osd.nut";

    local keymap = {
        [::GK_KEYLEFT] = ::GK_SCANCODE_A,
        [::GK_KEYRIGHT] = ::GK_SCANCODE_D,
        [::GK_KEYUP] = ::GK_SCANCODE_W,
        [::GK_KEYDOWN] = ::GK_SCANCODE_S,
        [::GK_KEYA] = ::GK_SCANCODE_KP_1,	// A - leftmost button
        [::GK_KEYB] = ::GK_SCANCODE_KP_2,	// B - middle button
        [::GK_KEYX] = ::GK_SCANCODE_KP_3,	// C - rightmose button
        [::GK_KEYY] = 0,
	[::GK_KEYSTART] = ::GK_SCANCODE_RETURN,	// Start button
        [::GK_KEYJOYDIGILEFT] = ::GK_SCANCODE_A,
        [::GK_KEYJOYDIGIRIGHT] = ::GK_SCANCODE_D,
        [::GK_KEYJOYDIGIUP] = ::GK_SCANCODE_W,
        [::GK_KEYJOYDIGIDOWN] = ::GK_SCANCODE_S,
    };
    ret.keymap <- keymap;

	ret.params.extend([
		"-md.stretch", "0",
		"-md.correct_aspect", "0"
	]);

	ret.screen_w <- 320;
	ret.screen_h <- 240;
	ret.screen_rr <- 50;

    ret.img <- "img/md.png";

    return ret;
}

function md_pal(ret)
{
	ret = md(ret);

	return ret;
}

function md_ntsc(ret)
{
	ret = md(ret);

	ret.screen_w <- 320;
	ret.screen_h <- 224;
	ret.screen_rr <- 60;

	return ret;
}

