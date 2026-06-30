dofile("game.nut");

local ret = game("File Explorer", "Dingux Commander port");
ret.fname <- "/dc-0.1.1-gk/bin/dc";
ret.cwd <- "/dc-0.1.1-gk";
ret.screen_w <- 320;
ret.screen_h <- 240;
ret.screen_pf <- GK_PIXELFORMAT_RGB565;
ret.img <- "img/explorer.png";

ret.keymap <- 
{
	[::GK_KEYLEFT] = ::GK_SCANCODE_LEFT,
	[::GK_KEYRIGHT] = ::GK_SCANCODE_RIGHT,
	[::GK_KEYUP] = ::GK_SCANCODE_UP,
	[::GK_KEYDOWN] = ::GK_SCANCODE_DOWN,
	[::GK_KEYJOYDIGILEFT] = ::GK_SCANCODE_LEFT,
	[::GK_KEYJOYDIGIRIGHT] = ::GK_SCANCODE_RIGHT,
	[::GK_KEYJOYDIGIUP] = ::GK_SCANCODE_UP,
	[::GK_KEYJOYDIGIDOWN] = ::GK_SCANCODE_DOWN,
	[::GK_KEYJOYBDIGIUP] = ::GK_SCANCODE_PAGEUP,
	[::GK_KEYJOYBDIGIDOWN] = ::GK_SCANCODE_PAGEDOWN,
	[::GK_KEYA] = ::GK_SCANCODE_RETURN,
	[::GK_KEYB] = ::GK_SCANCODE_BACKSPACE,
	[::GK_KEYX] = ::GK_SCANCODE_A,
	[::GK_KEYY] = ::GK_SCANCODE_W,
	[::GK_KEYSTART] = ::GK_SCANCODE_Q,
	[::GK_KEYSELECT] = ::GK_SCANCODE_INSERT
};

games.append(ret);
