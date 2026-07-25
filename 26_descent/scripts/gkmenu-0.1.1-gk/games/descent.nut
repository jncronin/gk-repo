dofile("game.nut");

local ret = game("Descent", "Chocolate Descent");
ret.fname <- "/ChocolateDescent-0.1.1-gk/bin/ChocolateDescent";
ret.cwd <- "/ChocolateDescent-0.1.1-gk";

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
    [GK_KEYLT] = GK_SCANCODE_SPACE,
    [GK_KEYRB] = GK_SCANCODE_E,         // bank
    [GK_KEYLB] = GK_SCANCODE_Q,         // bank
    [GK_KEYSTART] = GK_SCANCODE_RETURN,
    [GK_KEYSELECT] = GK_SCANCODE_ESCAPE,
    [GK_KEYA] = GK_SCANCODE_R,          // look back
    [GK_KEYB] = GK_SCANCODE_F,          // flare
    [GK_KEYX] = GK_SCANCODE_B,          // bomb
    [GK_KEYY] = GK_SCANCODE_TAB,        // map
};

ret.cpu_freq <- 1800000000;
ret.screen_overwritten_each_frame <- true;

ret.img <- "img/descent.png";

games.append(ret);

