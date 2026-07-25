dofile("game.nut");

local ret = game("Red Alert", "https://github.com/Daft-Freak/CnC_and_Red_Alert");
ret.fname <- "/CnCRedAlert-0.1.1-gk/bin/rasdl";
ret.cwd <- "/share/redalert";

ret.screen_w <- 640;
ret.screen_h <- 400;
ret.screen_pf <- GK_PIXELFORMAT_RGB565;

ret.left_stick <- GK_STICK_MOUSE;
ret.right_stick <- GK_STICK_JOY0;           // for moving screen, digital inputs also enabled for menus
ret.touch_is_mouse <- true;

ret.keymap <-
{
    [GK_KEYLEFT] = GK_SCANCODE_1,           // unit groups
    [GK_KEYRIGHT] = GK_SCANCODE_2,
    [GK_KEYUP] = GK_SCANCODE_3,
    [GK_KEYDOWN] = GK_SCANCODE_4,
    [GK_KEYJOYDIGILEFT] = 0,
    [GK_KEYJOYDIGIRIGHT] = 0,
    [GK_KEYJOYDIGIUP] = 0,
    [GK_KEYJOYDIGIDOWN] = 0,
    [GK_KEYJOYBDIGILEFT] = GK_SCANCODE_LEFT,
    [GK_KEYJOYBDIGIRIGHT] = GK_SCANCODE_RIGHT,
    [GK_KEYJOYBDIGIUP] = GK_SCANCODE_UP,
    [GK_KEYJOYBDIGIDOWN] = GK_SCANCODE_DOWN,
    [GK_KEYRT] = GK_SCANCODE_F2,            // force fire
    [GK_KEYLT] = GK_SCANCODE_F1,            // force move
    [GK_KEYRB] = GK_SCANCODE_H,             // return to base
    [GK_KEYLB] = GK_SCANCODE_LCTRL,         // set grouping (use with L/R/U/D)
    [GK_KEYSTART] = GK_SCANCODE_RETURN,
    [GK_KEYSELECT] = GK_SCANCODE_ESCAPE,
    [GK_KEYA] = GK_MOUSE_BUTTON + 0,
    [GK_KEYB] = GK_MOUSE_BUTTON + 1,
    [GK_KEYY] = GK_SCANCODE_X,      // scatter
    [GK_KEYX] = GK_SCANCODE_S,      // stop
};

ret.screen_overwritten_each_frame <- true;

ret.img <- "img/redalert.png";

games.append(ret);

