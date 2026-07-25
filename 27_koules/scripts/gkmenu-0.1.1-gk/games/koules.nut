dofile("game.nut");

local ret = game("Koules", "Bouncy bouncy");
ret.fname <- "/koules-0.1.1-gk/bin/koules";
ret.cwd <- "/koules-0.1.1-gk";

ret.screen_w <- 640;
ret.screen_h <- 480;
ret.screen_pf <- GK_PIXELFORMAT_ARGB8888;

ret.left_stick <- 0;
ret.right_stick <- 0;

ret.keymap <-
{
    [GK_KEYLEFT] = GK_SCANCODE_LEFT,
    [GK_KEYRIGHT] = GK_SCANCODE_RIGHT,
    [GK_KEYUP] = GK_SCANCODE_UP,
    [GK_KEYDOWN] = GK_SCANCODE_DOWN,
    [GK_KEYJOYDIGILEFT] = GK_SCANCODE_LEFT,
    [GK_KEYJOYDIGIRIGHT] = GK_SCANCODE_RIGHT,
    [GK_KEYJOYDIGIUP] = GK_SCANCODE_UP,
    [GK_KEYJOYDIGIDOWN] = GK_SCANCODE_DOWN,
    [GK_KEYJOYBDIGILEFT] = 0,
    [GK_KEYJOYBDIGIRIGHT] = 0,
    [GK_KEYJOYBDIGIUP] = 0,
    [GK_KEYJOYBDIGIDOWN] = 0,
    [GK_KEYRT] = 0,
    [GK_KEYLT] = 0,
    [GK_KEYSTART] = GK_SCANCODE_RETURN,
    [GK_KEYSELECT] = GK_SCANCODE_ESCAPE,
    [GK_KEYA] = GK_SCANCODE_RETURN,
    [GK_KEYB] = 0,
    [GK_KEYY] = 0,
    [GK_KEYX] = 0,
};

ret.screen_overwritten_each_frame <- true;

ret.img <- "img/koules.png";

games.append(ret);

