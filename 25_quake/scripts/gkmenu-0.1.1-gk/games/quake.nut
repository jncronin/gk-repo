dofile("game.nut");

local ret = game("Quake", "Chocolate Quake");
ret.fname <- "/Chocolate Quake-2.1.0-gk/bin/chocolate-quake";
ret.cwd <- "/Chocolate Quake-2.1.0-gk";

ret.params <- [
    "-basedir", "/share/quake",
    "-noudp"
];

ret.screen_w <- 320;
ret.screen_h <- 240;
ret.screen_pf <- GK_PIXELFORMAT_RGB565;

ret.left_stick <- GK_STICK_JOY0;
ret.right_stick <- GK_STICK_JOY1;

ret.keymap <-
{
    [GK_KEYLEFT] = GK_SCANCODE_LEFT,
    [GK_KEYRIGHT] = GK_SCANCODE_RIGHT,
    [GK_KEYUP] = GK_SCANCODE_UP,
    [GK_KEYDOWN] = GK_SCANCODE_DOWN,
    [GK_KEYJOYDIGILEFT] = 0,
    [GK_KEYJOYDIGIRIGHT] = 0,
    [GK_KEYJOYDIGIUP] = 0,
    [GK_KEYJOYDIGIDOWN] = 0,
    [GK_KEYJOYBDIGILEFT] = 0,
    [GK_KEYJOYBDIGIRIGHT] = 0,
    [GK_KEYJOYBDIGIUP] = 0,
    [GK_KEYJOYBDIGIDOWN] = 0,
    [GK_KEYRT] = GK_SCANCODE_LCTRL,
    [GK_KEYLT] = 0,
    [GK_KEYSTART] = GK_SCANCODE_RETURN,
    [GK_KEYSELECT] = GK_SCANCODE_ESCAPE,
    [GK_KEYA] = GK_SCANCODE_SPACE,
    [GK_KEYB] = 0,
    [GK_KEYY] = GK_SCANCODE_TAB,
    [GK_KEYX] = 0,
};

ret.screen_overwritten_each_frame <- true;

games.append(ret);

